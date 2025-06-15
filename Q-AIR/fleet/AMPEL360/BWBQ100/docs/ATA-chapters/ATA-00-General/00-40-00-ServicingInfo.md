# 00-40-00 Servicing Information
## AMPEL360 BWB-Q100 Blended Wing Body Aircraft

**Document Number:** 00-40-00-ServicingInfo  
**ATA Chapter:** 00 - General  
**Version:** 2.0.0  
**Date:** 2025-06-15  
**Status:** Released  
**Classification:** Maintenance Operations

---

## Table of Contents

1. [Introduction](#1-introduction)
2. [Servicing Diagram](#2-servicing-diagram)
3. [Fluid Requirements](#3-fluid-requirements)
4. [Servicing Points](#4-servicing-points)
5. [Servicing Procedures](#5-servicing-procedures)
6. [Servicing Intervals](#6-servicing-intervals)
7. [Quantum System Servicing](#7-quantum-system-servicing)
8. [Ground Support Equipment](#8-ground-support-equipment)
9. [Safety Precautions](#9-safety-precautions)
10. [Quick Reference Tables](#10-quick-reference-tables)

---

## 1. Introduction

### 1.1 Purpose
This document provides comprehensive servicing information for the AMPEL360 BWB-Q100 aircraft, including all fluid systems, servicing points, procedures, and special requirements for quantum systems.

### 1.2 Scope
- All aircraft servicing operations
- Turnaround servicing
- Transit servicing
- Overnight servicing
- Weekly/periodic servicing
- Quantum system-specific requirements

### 1.3 Safety Notice
⚠️ **WARNING:** The BWB configuration and quantum systems require special servicing procedures. Always follow the specified sequences and use approved equipment.

---

## 2. Servicing Diagram

### 2.1 Primary Servicing Points - Left Side
```
                        AMPEL360 BWB-Q100 - LEFT SIDE
    
    STA 0          20          40          60          80
     │             │           │           │           │
     │      ┌──────┴───────────┴───────────┴──────┐   │
     │      │                                     │   │
     │      │  [F]     [W]     [H2]      [L]     │   │
     │      │   ↓       ↓       ↓         ↓      │   │
     │      ├───●───────●───────●─────────●──────┤   │
     │      │                                     │   │
     │      │         [E]              [N]        │   │
     │      │          ↓                ↓         │   │
     │      └──────────●────────────────●─────────┘   │
     │                                                │
    
    Service Points:
    [F] - Forward Service Panel (STA 15)
    [W] - Water Service (STA 25)
    [H2] - Hydrogen Refuel (STA 40)
    [L] - Lavatory Service (STA 55)
    [E] - Electrical Ground Power (STA 30)
    [N] - Nitrogen Service (STA 65)
```

### 2.2 Primary Servicing Points - Right Side
```
                        AMPEL360 BWB-Q100 - RIGHT SIDE
    
    STA 0          20          40          60          80
     │             │           │           │           │
     │      ┌──────┴───────────┴───────────┴──────┐   │
     │      │                                     │   │
     │      │  [O]     [C]     [H]       [A]     │   │
     │      │   ↓       ↓       ↓         ↓      │   │
     │      ├───●───────●───────●─────────●──────┤   │
     │      │                                     │   │
     │      │      [Q]      [P]      [D]          │   │
     │      │       ↓        ↓        ↓           │   │
     │      └───────●────────●────────●───────────┘   │
     │                                                │
    
    Service Points:
    [O] - Oxygen Service (STA 18)
    [C] - Catering Doors (STA 35)
    [H] - Hydraulic Service (STA 45)
    [A] - APU Service (STA 70)
    [Q] - Quantum Coolant (STA 25)
    [P] - Pneumatic Start (STA 40)
    [D] - Data Port (STA 50)
```

---

## 3. Fluid Requirements

### 3.1 Fuel System
| Fluid Type | Specification | Capacity | Notes |
|------------|---------------|----------|-------|
| **Primary Fuel** | Liquid Hydrogen (LH2) | 25,000 kg | 99.999% purity |
| **Temperature** | 20K (-253°C) | - | ±2K tolerance |
| **Pressure** | 1.5-3.0 bar | - | Tank dependent |
| **Boil-off Rate** | 0.5-1.0%/day | - | Ground ops |

### 3.2 Hydraulic Systems
| System | Fluid Type | Capacity | Operating Pressure |
|--------|------------|----------|-------------------|
| **Green System** | Skydrol LD-4 | 85 L | 5000 PSI |
| **Yellow System** | Skydrol LD-4 | 65 L | 3000 PSI |
| **Blue System** | Skydrol LD-4 | 45 L | 3000 PSI |
| **Total Hydraulic** | - | 195 L | - |

### 3.3 Engine Oil
| Engine | Oil Type | Capacity | Consumption |
|--------|----------|----------|-------------|
| **Engine 1** | Mobil Jet Oil 387 | 23 L | 0.2 L/hr max |
| **Engine 2** | Mobil Jet Oil 387 | 23 L | 0.2 L/hr max |
| **APU** | Mobil Jet Oil 254 | 8 L | 0.1 L/hr max |

### 3.4 Other Fluids
| System | Fluid Type | Capacity | Service Interval |
|--------|------------|----------|------------------|
| **Potable Water** | Potable H2O + biocide | 800 L | Daily |
| **Waste Water** | - | 1000 L | As required |
| **Cooling System** | Ethylene Glycol/Water | 120 L | 6 months |
| **Window Wash** | Isopropyl Alcohol | 20 L | As required |
| **Oxygen** | Aviation O2 | 115 L @ 1850 PSI | Check daily |

### 3.5 Quantum System Fluids
| System | Fluid Type | Capacity | Special Requirements |
|--------|------------|----------|---------------------|
| **Liquid Helium** | 99.999% He | 500 L | 4.2K storage |
| **Liquid Nitrogen** | 99.999% N2 | 200 L | 77K storage |
| **Vacuum Pump Oil** | Fomblin Y-VAC 3 | 5 L | Synthetic only |
| **Thermal Interface** | Apiezon N | 0.5 kg | Cryogenic grease |

---

## 4. Servicing Points

### 4.1 Fuel System Service Points

**Hydrogen Refuel Panel (STA 40, LH Side, WL 150)**
```
┌─────────────────────────────────────┐
│      LH2 REFUEL/DEFUEL PANEL       │
├─────────────────────────────────────┤
│  [1] Fill Coupling    - 4" diameter │
│  [2] Vapor Return     - 3" diameter │
│  [3] Ground Wire Post - 10mm stud   │
│  [4] Emergency Shutoff - Red button │
│  [5] Gauge Panel      - Digital     │
│  [6] Control Interface - Touchscreen│
└─────────────────────────────────────┘

Access: Hinged door, key lock #LH2-01
Tools: Special coupling wrench P/N H2-CW-01
```

### 4.2 Hydraulic Service Points

**Hydraulic Service Bay (STA 45, RH Side, WL 100)**
```
┌─────────────────────────────────────┐
│      HYDRAULIC SERVICE BAY          │
├─────────────────────────────────────┤
│  GREEN SYSTEM                       │
│  ├─ Reservoir fill                  │
│  ├─ Pressure gauge                  │
│  └─ Sample valve                    │
│                                     │
│  YELLOW SYSTEM                      │
│  ├─ Reservoir fill                  │
│  ├─ Pressure gauge                  │
│  └─ Sample valve                    │
│                                     │
│  BLUE SYSTEM                        │
│  ├─ Reservoir fill                  │
│  ├─ Pressure gauge                  │
│  └─ Sample valve                    │
└─────────────────────────────────────┘

Access: Flush latch, tool required
Caution: Depressurize before opening
```

### 4.3 Engine Oil Service

**Engine Oil Service Points**
- Engine 1: Upper cowl access door, STA 75, LH side
- Engine 2: Upper cowl access door, STA 75, RH side
- APU: Tail cone access, STA 82, centerline

**Service Features:**
- Sight glasses for level check
- Pressure fill connections
- Overflow indicators
- Magnetic chip detectors

### 4.4 Water/Waste Service

**Water Service Panel (STA 25, RH Side, WL 100)**
- Potable water fill (2" coupling)
- Overflow drain
- Quantity indicator (LED bar)
- Biocide injection port

**Waste Service Panel (STA 55, RH Side, WL 80)**
- Forward lavatory drain (4" coupling)
- Aft lavatory drain (4" coupling)
- Rinse connection
- Vacuum gauge

---

## 5. Servicing Procedures

### 5.1 Turnaround Servicing (< 2 hours)

**Standard Sequence:**
1. **Safety Setup** (0-5 min)
   - Position cones/barriers
   - Connect ground power
   - Install wheel chocks

2. **Concurrent Operations** (5-45 min)
   ```
   Parallel Activities:
   ├─ Fuel (if required)
   ├─ Catering
   ├─ Cabin cleaning
   ├─ Lavatory service
   └─ Water service
   ```

3. **System Checks** (45-55 min)
   - Engine oil levels
   - Hydraulic quantities
   - Tire pressures
   - Oxygen pressure

4. **Final Items** (55-60 min)
   - Remove ground equipment
   - Final walk-around
   - Documentation

### 5.2 Transit Servicing (2-4 hours)

**Additional Items:**
- APU oil check
- Quantum system status
- Tire condition inspection
- Navigation database update
- Crew oxygen check

### 5.3 Overnight Servicing (> 8 hours)

**Extended Checklist:**
```
□ All turnaround items
□ Engine borescope caps installed
□ Pitot/static covers installed
□ Quantum system coolant top-up
□ Battery conditioning cycle
□ Hydraulic filter differential pressure
□ Fuel tank inerting check
□ Digital twin sync verification
```

---

## 6. Servicing Intervals

### 6.1 Daily Checks
| System | Check | Criterion | Action |
|--------|-------|-----------|--------|
| Engine Oil | Level | Min-Max marks | Add if required |
| Hydraulic | Quantity | 75-100% | Service if <75% |
| Oxygen | Pressure | >1600 PSI | Refill if low |
| Tires | Pressure | ±5% nominal | Adjust |
| QPU | Temperature | 4.0K ±0.1K | Monitor trend |

### 6.2 Weekly Checks
| System | Service | Specification |
|--------|---------|---------------|
| Window Wash | Refill | >50% full |
| Water Filters | Inspect | Replace if dirty |
| Hydraulic Filters | Δ Pressure | <15 PSI |
| Quantum Vacuum | Pressure | <1E-10 Torr |
| Battery | Capacity Test | >80% rated |

### 6.3 Periodic Services
```
A-Check (600 FH):
├─ All fluid samples
├─ Filter replacements
├─ Servicing hardware inspection
└─ Quantum system calibration

B-Check (3000 FH):
├─ Fluid system flush
├─ Reservoir cleaning
├─ Service panel overhaul
└─ Cryogenic system purge
```

---

## 7. Quantum System Servicing

### 7.1 Cryogenic Service Panel (STA 25, Ventral)

**Layout:**
```
┌───────────────────────────────────────────┐
│        QUANTUM CRYOGENIC SERVICE          │
├───────────────────────────────────────────┤
│  LHe SYSTEM           │  LN2 SYSTEM       │
│  ┌─────────┐         │  ┌─────────┐      │
│  │ Fill    │         │  │ Fill    │      │
│  │ Vent    │         │  │ Vent    │      │
│  │ Gauge   │         │  │ Gauge   │      │
│  └─────────┘         │  └─────────┘      │
│                      │                    │
│  VACUUM SYSTEM       │  MONITORING        │
│  ┌─────────┐         │  ┌─────────┐      │
│  │ Pump    │         │  │ Display │      │
│  │ Gauge   │         │  │ Alarms  │      │
│  │ Valve   │         │  │ History │      │
│  └─────────┘         │  └─────────┘      │
└───────────────────────────────────────────┘

Access: Requires QS certification
EMI: Maintain <-80dBm during service
```

### 7.2 Quantum Servicing Procedures

**Pre-Service Checklist:**
1. Verify QPU in standby mode
2. Check area EMI levels
3. Ground all equipment
4. Verify coolant supplies
5. Don protective equipment

**Helium Top-Up Procedure:**
```
1. Connect transfer line (pre-cooled)
2. Open vent valve slowly
3. Monitor temperature rise (<0.1K/min)
4. Fill to 95% capacity
5. Close valves in sequence
6. Disconnect and cap
7. Monitor for 30 minutes
```

### 7.3 Quantum System Limits
| Parameter | Normal | Caution | Warning |
|-----------|--------|---------|---------|
| QPU Temp | 4.0K | 4.2K | 4.5K |
| He Level | >80% | 50-80% | <50% |
| Vacuum | <1E-10 | 1E-9 | 1E-8 |
| Vibration | <0.05g | 0.1g | 0.2g |

---

## 8. Ground Support Equipment

### 8.1 Standard GSE Requirements

**Fuel Service:**
- LH2 dispenser unit (1000 kg/min)
- Vapor recovery system
- Cryogenic hoses (4" diameter)
- Emergency shutdown system

**Hydraulic Service:**
- Hydraulic test cart (5000 PSI capable)
- Filter units (3-micron)
- Sampling kit
- Pressure gauges (calibrated)

**Oil Service:**
- Oil dispensing unit
- Closed-loop system
- Heating capability (for cold weather)
- Metering accuracy ±0.1L

### 8.2 Specialized Quantum GSE

| Equipment | Model | Purpose |
|-----------|-------|---------|
| Helium Dewar | QHe-500 | 500L mobile storage |
| Transfer Line | TL-VAC-10 | Vacuum jacketed |
| EMI Monitor | EM-QSafe | Continuous monitoring |
| Vibration Isolator | VI-QPU-01 | Service operations |
| Temperature Logger | TL-4K | Cryogenic range |

### 8.3 GSE Positioning Diagram
```
                Aircraft Planform
                       TOP
    ┌─────────────────────────────────┐
    │                                 │
    │  GPU ←──── 10m ────→ ● QPU     │
    │   ●                            │
    │                                │
    │ ● H2 Truck    ● Catering      │
    │                                │
    │     ● Lav Truck               │
    │                  ● Water       │
    └─────────────────────────────────┘
    
    Minimum Separation:
    - QPU operations: 10m EMI zone
    - H2 refuel: 15m safety zone
    - Standard GSE: 3m clearance
```

---

## 9. Safety Precautions

### 9.1 General Safety

**PPE Requirements:**
- Standard: Safety vest, steel-toe boots, hearing protection
- Fuel operations: Anti-static clothing, face shield
- Cryogenic: Insulated gloves, face shield, apron
- Quantum: ESD strap, EMI monitor

### 9.2 Hydrogen Safety

**Critical Requirements:**
1. No ignition sources within 15m
2. Continuous gas monitoring
3. Natural ventilation verified
4. Static bonding (3 points minimum)
5. Emergency shutdown accessible
6. Fire department notification (if >10,000 kg)

**Emergency Response:**
```
H2 LEAK DETECTED:
1. STOP all operations
2. EVACUATE 50m radius
3. ACTIVATE emergency shutdown
4. NOTIFY fire services
5. VENTILATE area
6. TEST before re-entry
```

### 9.3 Quantum System Safety

**Hazards:**
- Extreme cold (4K systems)
- High magnetic fields (during service)
- Asphyxiation (He/N2 release)
- High voltage (control systems)

**Safety Interlocks:**
- Access requires two-person rule
- Automatic shutdown on EMI breach
- Pressure relief on all vessels
- Oxygen monitors in confined spaces

---

## 10. Quick Reference Tables

### 10.1 Fluid Capacities Summary
```
┌─────────────────────────────────────────┐
│          FLUID QUICK REFERENCE          │
├─────────────────────┬─────────┬─────────┤
│ System              │ Capacity│ Type    │
├─────────────────────┼─────────┼─────────┤
│ Fuel (LH2)          │ 25,000kg│ Liquid  │
│ Engine Oil (each)   │ 23 L    │ Oil 387 │
│ APU Oil             │ 8 L     │ Oil 254 │
│ Hydraulic Total     │ 195 L   │ LD-4    │
│ Potable Water       │ 800 L   │ H2O     │
│ Waste Water         │ 1000 L  │ Gray    │
│ Oxygen              │ 115 L   │ Gas     │
│ Liquid Helium       │ 500 L   │ Cryo    │
│ Liquid Nitrogen     │ 200 L   │ Cryo    │
└─────────────────────┴─────────┴─────────┘
```

### 10.2 Service Time Allowances
| Operation | Standard Time | With Quantum |
|-----------|---------------|--------------|
| Fuel (full) | 45 min | 45 min |
| Turnaround | 60 min | 75 min |
| Transit | 120 min | 135 min |
| Overnight | 480 min | 510 min |
| Oil service | 15 min | 15 min |
| Water/Waste | 20 min | 20 min |
| Quantum top-up | - | 30 min |

### 10.3 Service Panel Key Codes
```
Panel               Code    Location
─────────────────────────────────────
Fuel Panel          LH2-01  STA 40L
Hydraulic Bay       HYD-01  STA 45R
Water Service       H2O-01  STA 25R
Waste Service       WST-01  STA 55R
Quantum Service     QSP-01  STA 25V
Electrical          GPU-01  STA 30R
Oxygen Service      O2-01   STA 18R
Data Port           DAT-01  STA 50R
```

---

**Document Control:**
- Next Review: 2026-06-15
- Change Authority: Chief Engineer - Systems
- Distribution: Line Maintenance, Base Maintenance

**Related Documents:**
- AMM 12-00-00: Servicing Procedures
- AMM 20-00-00: Standard Practices
- QSM-00-00: Quantum System Manual

**END OF DOCUMENT**
