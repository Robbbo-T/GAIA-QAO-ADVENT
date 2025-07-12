#!/usr/bin/env python3
"""
GAIA-QAO Quantum-Enhanced Aircraft Leveling and Weighing System
ATA Chapter 08 - Leveling and Weighing

Document ID: GQOIS-QAIR-DOC-017
Project: QAIR-P-017
Division: Q-AIR
Date: 2025-05-16
Priority: P0
Dependency: DOC-006

This module implements quantum-enhanced leveling and weighing procedures
for the AMPEL360 BWB-Q100 aircraft, integrating with QSM (Quantum Structural
Monitoring) for real-time weight distribution analysis.

Author: Amedeo Pelliccia
Copyright: GAIA-QAO / Quantum Aerospace Organization
"""

import numpy as np
from dataclasses import dataclass, field
from typing import List, Dict, Tuple, Optional
from datetime import datetime
import json
import logging
from enum import Enum

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)


class WeighingPointType(Enum):
    """Types of weighing points on the aircraft"""
    NOSE_GEAR = "nose_gear"
    MAIN_GEAR_LEFT = "main_gear_left"
    MAIN_GEAR_RIGHT = "main_gear_right"
    AUX_GEAR_LEFT = "aux_gear_left"  # BWB specific
    AUX_GEAR_RIGHT = "aux_gear_right"  # BWB specific
    QUANTUM_REFERENCE = "quantum_reference"  # QSM integration point


class LevelingStatus(Enum):
    """Aircraft leveling status"""
    NOT_LEVEL = "not_level"
    WITHIN_TOLERANCE = "within_tolerance"
    PRECISION_LEVEL = "precision_level"
    QUANTUM_VERIFIED = "quantum_verified"


@dataclass
class QuantumSensorReading:
    """Quantum sensor measurement data"""
    sensor_id: str
    position: Tuple[float, float, float]  # x, y, z in meters
    weight: float  # kg
    uncertainty: float  # quantum uncertainty in kg
    timestamp: datetime
    coherence_factor: float = 0.99  # Quantum coherence quality 0-1
    temperature: float = 293.15  # Kelvin


@dataclass
class WeighingPoint:
    """Aircraft weighing point with quantum enhancement"""
    point_type: WeighingPointType
    position: Tuple[float, float, float]  # x, y, z coordinates in meters
    weight: float = 0.0  # kg
    quantum_sensors: List[QuantumSensorReading] = field(default_factory=list)
    calibration_offset: float = 0.0
    
    def get_quantum_corrected_weight(self) -> float:
        """Calculate weight with quantum sensor corrections"""
        if not self.quantum_sensors:
            return self.weight + self.calibration_offset
        
        # Quantum-weighted average based on coherence factors
        total_weight = 0.0
        total_coherence = 0.0
        
        for sensor in self.quantum_sensors:
            total_weight += sensor.weight * sensor.coherence_factor
            total_coherence += sensor.coherence_factor
        
        if total_coherence > 0:
            quantum_weight = total_weight / total_coherence
            # Blend classical and quantum measurements
            return 0.7 * quantum_weight + 0.3 * (self.weight + self.calibration_offset)
        
        return self.weight + self.calibration_offset


@dataclass
class BWBAircraftGeometry:
    """BWB-specific geometry parameters"""
    reference_datum: Tuple[float, float, float] = (0.0, 0.0, 0.0)
    mac_length: float = 12.5  # Mean Aerodynamic Chord in meters
    mac_position: float = 22.5  # MAC position from datum
    wingspan: float = 80.0  # meters
    length: float = 45.0  # meters
    reference_height: float = 8.5  # meters
    
    # BWB-specific blended wing stations
    wing_blend_stations: List[float] = field(default_factory=lambda: [5.0, 15.0, 25.0, 35.0])


class QuantumLevelingWeighingSystem:
    """Main system for quantum-enhanced aircraft leveling and weighing"""
    
    def __init__(self, aircraft_model: str = "AMPEL360-BWB-Q100"):
        self.aircraft_model = aircraft_model
        self.geometry = BWBAircraftGeometry()
        self.weighing_points: Dict[WeighingPointType, WeighingPoint] = {}
        self.leveling_tolerance = 0.001  # 1mm tolerance
        self.quantum_precision = 0.0001  # 0.1mm quantum precision
        self._initialize_weighing_points()
        
        logger.info(f"Initialized Quantum Leveling & Weighing System for {aircraft_model}")
    
    def _initialize_weighing_points(self):
        """Initialize standard weighing points for BWB configuration"""
        # Nose gear
        self.weighing_points[WeighingPointType.NOSE_GEAR] = WeighingPoint(
            point_type=WeighingPointType.NOSE_GEAR,
            position=(5.0, 0.0, 0.0)
        )
        
        # Main gear
        self.weighing_points[WeighingPointType.MAIN_GEAR_LEFT] = WeighingPoint(
            point_type=WeighingPointType.MAIN_GEAR_LEFT,
            position=(25.0, -4.5, 0.0)
        )
        self.weighing_points[WeighingPointType.MAIN_GEAR_RIGHT] = WeighingPoint(
            point_type=WeighingPointType.MAIN_GEAR_RIGHT,
            position=(25.0, 4.5, 0.0)
        )
        
        # BWB auxiliary gear
        self.weighing_points[WeighingPointType.AUX_GEAR_LEFT] = WeighingPoint(
            point_type=WeighingPointType.AUX_GEAR_LEFT,
            position=(35.0, -8.0, 0.0)
        )
        self.weighing_points[WeighingPointType.AUX_GEAR_RIGHT] = WeighingPoint(
            point_type=WeighingPointType.AUX_GEAR_RIGHT,
            position=(35.0, 8.0, 0.0)
        )
    
    def add_quantum_sensor_reading(self, point_type: WeighingPointType, 
                                   reading: QuantumSensorReading):
        """Add quantum sensor reading to weighing point"""
        if point_type in self.weighing_points:
            self.weighing_points[point_type].quantum_sensors.append(reading)
            logger.info(f"Added quantum sensor reading to {point_type.value}: "
                       f"{reading.weight}kg ±{reading.uncertainty}kg")
    
    def calculate_total_weight(self) -> Tuple[float, float]:
        """Calculate total aircraft weight with quantum corrections
        
        Returns:
            Tuple of (weight_kg, uncertainty_kg)
        """
        total_weight = 0.0
        total_uncertainty = 0.0
        
        for point in self.weighing_points.values():
            weight = point.get_quantum_corrected_weight()
            total_weight += weight
            
            # Calculate combined uncertainty
            if point.quantum_sensors:
                uncertainties = [s.uncertainty for s in point.quantum_sensors]
                point_uncertainty = np.sqrt(np.sum(np.square(uncertainties)))
                total_uncertainty = np.sqrt(total_uncertainty**2 + point_uncertainty**2)
        
        return total_weight, total_uncertainty
    
    def calculate_center_of_gravity(self) -> Tuple[Tuple[float, float, float], float]:
        """Calculate aircraft center of gravity with quantum precision
        
        Returns:
            Tuple of ((x_cg, y_cg, z_cg), uncertainty_meters)
        """
        total_weight, weight_uncertainty = self.calculate_total_weight()
        
        if total_weight == 0:
            return (self.geometry.reference_datum, float('inf'))
        
        # Calculate moments
        total_moment_x = 0.0
        total_moment_y = 0.0
        total_moment_z = 0.0
        
        for point in self.weighing_points.values():
            weight = point.get_quantum_corrected_weight()
            pos = point.position
            
            total_moment_x += weight * pos[0]
            total_moment_y += weight * pos[1]
            total_moment_z += weight * pos[2]
        
        # CG position
        cg_x = total_moment_x / total_weight
        cg_y = total_moment_y / total_weight
        cg_z = total_moment_z / total_weight
        
        # CG uncertainty (simplified)
        cg_uncertainty = (weight_uncertainty / total_weight) * self.geometry.mac_length
        
        return ((cg_x, cg_y, cg_z), cg_uncertainty)
    
    def calculate_cg_percent_mac(self) -> Tuple[float, float]:
        """Calculate CG position as percentage of Mean Aerodynamic Chord
        
        Returns:
            Tuple of (percent_mac, uncertainty_percent)
        """
        (cg_x, _, _), cg_uncertainty = self.calculate_center_of_gravity()
        
        # Distance from MAC leading edge
        cg_from_mac_le = cg_x - self.geometry.mac_position
        
        # Percentage of MAC
        percent_mac = (cg_from_mac_le / self.geometry.mac_length) * 100
        uncertainty_percent = (cg_uncertainty / self.geometry.mac_length) * 100
        
        return percent_mac, uncertainty_percent
    
    def check_leveling_status(self, reference_heights: Dict[str, float]) -> LevelingStatus:
        """Check aircraft leveling status using quantum sensors
        
        Args:
            reference_heights: Dict of reference point names to measured heights
            
        Returns:
            LevelingStatus enum
        """
        if len(reference_heights) < 3:
            logger.warning("Insufficient reference points for leveling check")
            return LevelingStatus.NOT_LEVEL
        
        heights = list(reference_heights.values())
        height_variance = np.var(heights)
        
        # Check against tolerances
        if height_variance > self.leveling_tolerance:
            return LevelingStatus.NOT_LEVEL
        elif height_variance > self.quantum_precision:
            return LevelingStatus.WITHIN_TOLERANCE
        else:
            # Verify with quantum sensors if available
            if self._verify_quantum_level():
                return LevelingStatus.QUANTUM_VERIFIED
            return LevelingStatus.PRECISION_LEVEL
    
    def _verify_quantum_level(self) -> bool:
        """Verify leveling using quantum sensor network"""
        # Check if we have sufficient quantum sensor data
        quantum_points = sum(1 for p in self.weighing_points.values() 
                           if p.quantum_sensors)
        
        if quantum_points >= 3:
            # Analyze quantum sensor coherence
            avg_coherence = np.mean([
                np.mean([s.coherence_factor for s in p.quantum_sensors])
                for p in self.weighing_points.values() if p.quantum_sensors
            ])
            
            return avg_coherence > 0.95
        
        return False
    
    def generate_weight_balance_report(self) -> Dict:
        """Generate comprehensive weight and balance report"""
        total_weight, weight_uncertainty = self.calculate_total_weight()
        cg_position, cg_uncertainty = self.calculate_center_of_gravity()
        percent_mac, mac_uncertainty = self.calculate_cg_percent_mac()
        
        report = {
            "report_id": f"WB-{datetime.now().strftime('%Y%m%d%H%M%S')}",
            "aircraft_model": self.aircraft_model,
            "timestamp": datetime.now().isoformat(),
            "total_weight": {
                "value_kg": round(total_weight, 2),
                "uncertainty_kg": round(weight_uncertainty, 3),
                "quantum_enhanced": True
            },
            "center_of_gravity": {
                "position_m": {
                    "x": round(cg_position[0], 4),
                    "y": round(cg_position[1], 4),
                    "z": round(cg_position[2], 4)
                },
                "uncertainty_m": round(cg_uncertainty, 5),
                "percent_mac": round(percent_mac, 2),
                "mac_uncertainty": round(mac_uncertainty, 3)
            },
            "weighing_points": {}
        }
        
        # Add individual weighing point data
        for point_type, point in self.weighing_points.items():
            report["weighing_points"][point_type.value] = {
                "weight_kg": round(point.get_quantum_corrected_weight(), 2),
                "position": point.position,
                "quantum_sensors": len(point.quantum_sensors),
                "avg_coherence": np.mean([s.coherence_factor for s in point.quantum_sensors])
                                if point.quantum_sensors else 0.0
            }
        
        # Add BWB-specific parameters
        report["bwb_parameters"] = {
            "mac_length_m": self.geometry.mac_length,
            "wingspan_m": self.geometry.wingspan,
            "reference_datum": self.geometry.reference_datum,
            "wing_blend_stations": self.geometry.wing_blend_stations
        }
        
        # Calculate weight distribution symmetry (important for BWB)
        left_weight = sum(
            p.get_quantum_corrected_weight() 
            for pt, p in self.weighing_points.items() 
            if 'LEFT' in pt.value
        )
        right_weight = sum(
            p.get_quantum_corrected_weight() 
            for pt, p in self.weighing_points.items() 
            if 'RIGHT' in pt.value
        )
        
        if (left_weight + right_weight) > 0:
            symmetry = 1 - abs(left_weight - right_weight) / (left_weight + right_weight)
            report["lateral_balance"] = {
                "symmetry_factor": round(symmetry, 4),
                "left_weight_kg": round(left_weight, 2),
                "right_weight_kg": round(right_weight, 2)
            }
        
        logger.info(f"Generated weight & balance report: {report['report_id']}")
        return report
    
    def export_to_dike_lineage(self, report: Dict) -> str:
        """Export weight and balance data to DIKE lineage format"""
        dike_data = {
            "dike_id": f"DIKE-WB-{report['report_id']}",
            "entity_type": "weight_balance_measurement",
            "timestamp": report["timestamp"],
            "aircraft_model": report["aircraft_model"],
            "measurements": {
                "total_weight": report["total_weight"],
                "cg_position": report["center_of_gravity"],
                "quantum_verification": any(
                    p.quantum_sensors for p in self.weighing_points.values()
                )
            },
            "traceability": {
                "ata_chapter": "08",
                "document_id": "GQOIS-QAIR-DOC-017",
                "system": "quantum_leveling_weighing",
                "certification_relevant": True
            }
        }
        
        return json.dumps(dike_data, indent=2)


# Example usage and testing
if __name__ == "__main__":
    # Initialize system
    qls = QuantumLevelingWeighingSystem()
    
    # Simulate classical weight measurements
    qls.weighing_points[WeighingPointType.NOSE_GEAR].weight = 45000  # kg
    qls.weighing_points[WeighingPointType.MAIN_GEAR_LEFT].weight = 142000
    qls.weighing_points[WeighingPointType.MAIN_GEAR_RIGHT].weight = 141500
    qls.weighing_points[WeighingPointType.AUX_GEAR_LEFT].weight = 25500
    qls.weighing_points[WeighingPointType.AUX_GEAR_RIGHT].weight = 26000
    
    # Add quantum sensor readings
    for i, (point_type, point) in enumerate(qls.weighing_points.items()):
        # Simulate quantum sensor data
        quantum_reading = QuantumSensorReading(
            sensor_id=f"QSM-{i:03d}",
            position=point.position,
            weight=point.weight + np.random.normal(0, 5),  # Small quantum variation
            uncertainty=0.5,
            timestamp=datetime.now(),
            coherence_factor=0.98 - i * 0.01,
            temperature=293.15 + np.random.normal(0, 0.5)
        )
        qls.add_quantum_sensor_reading(point_type, quantum_reading)
    
    # Check leveling
    reference_heights = {
        "FWD_REF": 2.501,
        "AFT_LEFT": 2.499,
        "AFT_RIGHT": 2.500
    }
    
    leveling_status = qls.check_leveling_status(reference_heights)
    print(f"Leveling Status: {leveling_status.value}")
    
    # Generate report
    report = qls.generate_weight_balance_report()
    print("\nWeight & Balance Report:")
    print(json.dumps(report, indent=2))
    
    # Export to DIKE format
    dike_export = qls.export_to_dike_lineage(report)
    print("\nDIKE Lineage Export:")
    print(dike_export)
    
    # Additional analysis
    total_weight, uncertainty = qls.calculate_total_weight()
    print(f"\nTotal Aircraft Weight: {total_weight:.2f} ± {uncertainty:.3f} kg")
    
    cg_pos, cg_unc = qls.calculate_center_of_gravity()
    print(f"Center of Gravity: X={cg_pos[0]:.3f}m, Y={cg_pos[1]:.3f}m, Z={cg_pos[2]:.3f}m")
    print(f"CG Uncertainty: ±{cg_unc:.4f}m")
    
    percent_mac, mac_unc = qls.calculate_cg_percent_mac()
    print(f"CG Position: {percent_mac:.2f}% MAC ± {mac_unc:.3f}%")
