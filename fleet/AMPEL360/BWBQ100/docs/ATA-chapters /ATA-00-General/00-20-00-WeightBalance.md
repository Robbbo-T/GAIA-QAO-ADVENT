# ATA 00 - General
## 00-20-00 Weight and Balance

**Document Number**: 00-20-00-WeightBalance  
**ATA Chapter**: 00 - General  
**Version**: 2.0.0  
**Last Updated**: June 2025  
**Status**: Released  
**Classification**: Public Distribution

---

## Table of Contents
1. [Introduction](#1-introduction)
2. [Weight Definitions](#2-weight-definitions)
3. [Balance Reference](#3-balance-reference)
4. [Weight Limits](#4-weight-limits)
5. [Center of Gravity Limits](#5-center-of-gravity-limits)
6. [Loading Procedures](#6-loading-procedures)
7. [Fuel Distribution](#7-fuel-distribution)
8. [Quantum Systems Considerations](#8-quantum-systems-considerations)
9. [BWB-Specific Requirements](#9-bwb-specific-requirements)
10. [Calculations and Examples](#10-calculations-and-examples)

---

## 1. Introduction

### 1.1 Purpose
This document provides weight and balance information essential for safe operation of the AMPEL360 BWB-Q100 aircraft. The unique blended wing body configuration requires special attention to lateral balance and spanwise loading.

### 1.2 Scope
- Weight definitions and limitations
- Center of gravity envelope
- Loading procedures and restrictions
- Fuel management considerations
- Quantum system weight effects
- Digital twin integration for real-time W&B

### 1.3 Safety Notice
⚠️ **WARNING**: The BWB configuration has different stall and handling characteristics at various CG positions compared to conventional aircraft. Always verify weight and balance before flight.

---

## 2. Weight Definitions

### 2.1 Standard Weight Terms

| Term | Definition | Typical Value (kg) |
|------|------------|--------------------|
| **Manufacturer's Empty Weight (MEW)** | Aircraft as built by manufacturer | 92,500 |
| **Operating Empty Weight (OEW)** | MEW + operator items | 95,000 |
| **Zero Fuel Weight (ZFW)** | OEW + payload (no fuel) | Variable |
| **Maximum Zero Fuel Weight (MZFW)** | Maximum allowable ZFW | 140,000 |
| **Takeoff Weight** | Total weight at takeoff | Variable |
| **Maximum Takeoff Weight (MTOW)** | Maximum allowable takeoff weight | 180,000 |
| **Landing Weight** | Total weight at landing | Variable |
| **Maximum Landing Weight (MLW)** | Maximum allowable landing weight | 145,000 |

### 2.2 Component Weights

**Quantum Systems**
| Component | Weight (kg) | Location |
|-----------|-------------|----------|
| QPU + Cooling | 2,500 | STA 25, WL 100 |
| QNS Units (3) | 150 | STA 10, 25, 50 |
| QSM Network | 500 | Distributed |
| QKD System | 100 | STA 5 |

**Major Components**
| Component | Weight (kg) | CG Arm (m) |
|-----------|-------------|------------|
| Cockpit | 1,200 | 5.0 |
| Passenger Cabin | 8,500 | 30.0 |
| Wings (dry) | 22,000 | 32.0 |
| Engines (2) | 8,000 | 60.0 |
| Landing Gear | 6,800 | 35.0 |
| APU | 450 | 58.0 |

---

## 3. Balance Reference

### 3.1 Reference Datum
The reference datum is located at the aircraft nose (STA 0).

### 3.2 Moment Arms
```
    Reference Measurements (from datum)
    
    0m     10m    20m    30m    40m    50m    60m
    │       │      │      │      │      │      │
    ▼       ▼      ▼      ▼      ▼      ▼      ▼
    ├───────┼──────┼──────┼──────┼──────┼──────┤
    │  FWD  │      │ CABIN │      │      │ AFT  │
    │       │      │   ▲   │      │      │      │
    │       │      │  MAC  │      │      │      │
    └───────┴──────┴───┴───┴──────┴──────┴──────┘
                      │
                 CG Envelope
```

### 3.3 Mean Aerodynamic Chord (MAC)
- **MAC Length**: 12.5 m
- **MAC Leading Edge**: STA 25.0
- **MAC Reference**: Used for % MAC calculations

### 3.4 Lateral Reference
- **Centerline**: BL 0.0
- **Left Wing**: BL -25.0 to 0.0
- **Right Wing**: BL 0.0 to +25.0

---

## 4. Weight Limits

### 4.1 Certified Weight Limits

| Category | Weight (kg) | Notes |
|----------|-------------|-------|
| **Minimum Flight Weight** | 100,000 | All configurations |
| **Maximum Zero Fuel Weight** | 140,000 | Structural limit |
| **Maximum Takeoff Weight** | 180,000 | Performance/structural |
| **Maximum Landing Weight** | 145,000 | Structural limit |
| **Maximum Taxi Weight** | 181,000 | Ground operations |

### 4.2 Payload Limits

**Passenger Cabin**
- Maximum passengers: 250
- Standard passenger weight: 95 kg (inc. baggage)
- Maximum cabin payload: 23,750 kg

**Cargo Compartments**
| Compartment | Volume (m³) | Max Weight (kg) | Floor Loading (kg/m²) |
|-------------|-------------|-----------------|----------------------|
| Forward | 25 | 3,000 | 750 |
| Center | 40 | 5,000 | 800 |
| Aft | 30 | 4,000 | 750 |
| Total | 95 | 12,000 | - |

### 4.3 Fuel Capacity

**Hydrogen Fuel System**
| Tank | Capacity (kg) | Location | CG Arm (m) |
|------|---------------|----------|------------|
| Left Inner | 5,000 | BL -10 | 30.0 |
| Left Outer | 3,000 | BL -20 | 32.0 |
| Right Inner | 5,000 | BL +10 | 30.0 |
| Right Outer | 3,000 | BL +20 | 32.0 |
| Center | 9,000 | BL 0 | 35.0 |
| **Total** | **25,000** | - | - |

---

## 5. Center of Gravity Limits

### 5.1 Longitudinal CG Envelope

```
    Weight (kg)
    180,000 │      ┌────────┐
            │      │        │
    160,000 │     ╱│        │╲
            │    ╱ │        │ ╲
    140,000 │   ╱  │ NORMAL │  ╲
            │  ╱   │  OPS   │   ╲
    120,000 │ ╱    │        │    ╲
            │╱     │        │     ╲
    100,000 │──────┴────────┴──────│
            10%   15%      35%   40%
                  CG (% MAC)
```

### 5.2 CG Limits Table

| Weight (kg) | Forward Limit (% MAC) | Aft Limit (% MAC) |
|-------------|----------------------|-------------------|
| 100,000 | 10.0 | 40.0 |
| 120,000 | 12.0 | 38.0 |
| 140,000 | 15.0 | 35.0 |
| 160,000 | 15.0 | 35.0 |
| 180,000 | 15.0 | 35.0 |

### 5.3 Lateral CG Limits
- **Maximum lateral CG offset**: ±0.5 m from centerline
- **Fuel imbalance limit**: 500 kg between wings
- **Cargo lateral distribution**: Must maintain lateral CG within limits

---

## 6. Loading Procedures

### 6.1 Loading Sequence

**Standard Loading Order**
1. Center cargo compartments
2. Passenger seating (center to outside)
3. Wing cargo compartments
4. Fuel loading (balanced)
5. Final adjustments

### 6.2 Passenger Distribution

**BWB-Specific Requirements**
- Load center sections first
- Maintain lateral balance
- Consider moment effects of wide cabin

```
    Passenger Loading Zones (Top View)
    ┌─────────────────────────────────┐
    │  Zone 3    Zone 1    Zone 3     │
    │  ┌─────┐  ┌─────┐  ┌─────┐    │
    │  │     │  │     │  │     │    │
    │  │     │  │     │  │     │    │
    │  └─────┘  └─────┘  └─────┘    │
    │  Zone 4    Zone 2    Zone 4     │
    │  ┌─────┐  ┌─────┐  ┌─────┐    │
    │  │     │  │     │  │     │    │
    │  │     │  │     │  │     │    │
    │  └─────┘  └─────┘  └─────┘    │
    └─────────────────────────────────┘
    Load Sequence: 1→2→3→4
```

### 6.3 Cargo Loading

**Weight Distribution Requirements**
- Heavy items: Center compartments
- Lateral balance: Equal distribution
- Vertical CG: Consider floor loading

**Container Compatibility**
| Container Type | Dimensions | Max Weight | Compartments |
|----------------|------------|------------|--------------|
| LD3 | 1.5×1.5×1.6m | 1,588 kg | All |
| LD6 | 3.2×2.4×1.6m | 3,175 kg | Center only |
| Bulk | Variable | Per floor limit | All |

---

## 7. Fuel Distribution

### 7.1 Fuel Loading

**Standard Fuel Distribution**
```
Total Fuel: 25,000 kg

Distribution:
- Center Tank: 36% (9,000 kg)
- Inner Wings: 40% (10,000 kg)
- Outer Wings: 24% (6,000 kg)
```

### 7.2 Fuel Burn Sequence

**Automatic Fuel Management**
1. Outer wing tanks (maintain wing bending relief)
2. Inner wing tanks (balanced)
3. Center tank
4. Reserve in inner wings

### 7.3 CG Shift During Flight

| Fuel Remaining (%) | CG Shift (% MAC) | Trim Change |
|-------------------|------------------|-------------|
| 100% | Reference | 0° |
| 75% | +0.8 | -0.5° |
| 50% | +1.5 | -1.0° |
| 25% | +2.0 | -1.5° |
| 10% | +2.3 | -1.8° |

---

## 8. Quantum Systems Considerations

### 8.1 QPU Weight and Balance

**Special Requirements**
- Fixed installation (no movement)
- Temperature-controlled environment
- Vibration isolation affects CG height

**QPU System Weights**
| Component | Weight (kg) | CG Effect |
|-----------|-------------|-----------|
| QPU Core | 500 | Fixed |
| Cryogenic System | 1,500 | Liquid helium varies |
| Control Electronics | 300 | Fixed |
| Shielding | 200 | Fixed |

### 8.2 Operational Effects

**Quantum System States**
- **Initialization**: Helium consumption affects weight
- **Operating**: Stable weight and CG
- **Shutdown**: Helium boil-off considerations

### 8.3 Maintenance Considerations
- QPU removal requires reballasting
- Temporary ballast locations defined
- Digital twin updates for configuration

---

## 9. BWB-Specific Requirements

### 9.1 Spanwise Loading

**Critical Parameters**
- Wing bending moment limits
- Fuel distribution for load alleviation
- Passenger distribution effects

**Maximum Spanwise Moments**
| Station | Limit (kN⋅m) | Critical Case |
|---------|--------------|---------------|
| Wing Root | 45,000 | MTOW + Turbulence |
| Mid Span | 28,000 | Max Zero Fuel |
| Outer Wing | 12,000 | Minimum Fuel |

### 9.2 Pitch Stability

**BWB Considerations**
- Reduced pitch damping
- CG position critical for stability
- Active load alleviation required

**Stability Margins**
| Configuration | Min Static Margin |
|---------------|-------------------|
| Clean | 5% MAC |
| Landing Config | 3% MAC |
| Single Engine | 7% MAC |

### 9.3 Ground Handling

**Tipping Angles**
- Nose wheel: 15° (tail down)
- Main gear: 12° (nose down)
- Lateral: 8° (wing down)

**Ground Operations Limits**
- Maximum ground turn weight: 181,000 kg
- CG limits for pushback: 18-32% MAC
- Fuel distribution for ground stability

---

## 10. Calculations and Examples

### 10.1 Basic Weight and Balance

**Example: Typical Flight**
```
Operating Empty Weight:     95,000 kg @ 28.5m
Passengers (200):          19,000 kg @ 30.0m
Cargo:                      6,000 kg @ 25.0m
Zero Fuel Weight:         120,000 kg @ 28.7m
Fuel:                      40,000 kg @ 32.0m
Takeoff Weight:           160,000 kg @ 29.5m

CG Position: 29.5m = 23.6% MAC ✓
```

### 10.2 Load Sheet Format

```
AMPEL360 BWB-Q100 LOAD SHEET
Flight: GA001  Date: 15-JUN-25  Reg: QA-001

WEIGHTS (kg)          ARM (m)    MOMENT (kg⋅m)
DOW:      95,000      28.5       2,707,500
PAX:      19,000      30.0         570,000
CARGO:     6,000      25.0         150,000
ZFW:     120,000      28.6       3,427,500
FUEL:     40,000      32.0       1,280,000
TOW:     160,000      29.5       4,707,500

CG: 29.5m (23.6% MAC) - WITHIN LIMITS
LAT CG: 0.05m RIGHT - WITHIN LIMITS
```

### 10.3 Digital Twin Integration

**Real-Time W&B Monitoring**
- Continuous CG calculation
- Fuel burn predictions
- Load distribution optimization
- Automatic trim adjustment

**Data Sources**
- Fuel quantity sensors
- Passenger/cargo manifests
- Quantum system status
- Structural load sensors

---

## Appendices

### A. Loading Diagram
Reference: AMPEL-360BWBH200-00-2000-ZON-001

### B. CG Calculation Forms
Available in digital format via EFB

### C. Fuel Distribution Diagram
Reference: AMPEL-360BWBH200-28-0000-SCH-001

### D. Quick Reference Tables
- Standard passenger weights
- Cargo densities
- Fuel specific gravity (LH2)

---

## Notes and Cautions

⚠️ **CAUTION**: Always verify lateral balance for BWB configuration

⚠️ **WARNING**: Never exceed spanwise moment limits

ℹ️ **NOTE**: Digital twin provides real-time W&B data but manual verification required for dispatch

---

**END OF DOCUMENT**

*© 2025 GAIA-QAO Aerospace. All rights reserved.*  
*Subject to ITAR/EAR export controls where applicable.*
