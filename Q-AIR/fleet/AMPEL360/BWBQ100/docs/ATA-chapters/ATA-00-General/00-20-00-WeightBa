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

# Appendix A: Loading Diagram
## AMPEL360 BWB-Q100 Weight and Balance Reference

**Document Reference:** AMPEL-360BWBH200-00-2000-ZON-001  
**Version:** 1.0.0  
**Date:** 2025-06-15  
**Scale:** Not to Scale - Reference Only  
**Units:** All dimensions in meters unless noted

---

## 1. AIRCRAFT ZONES - TOP VIEW

```
                              FORWARD →
    BL -25    BL -20    BL -10    BL 0     BL +10   BL +20   BL +25
      │         │         │        │         │        │        │
      │    ┌────┴─────────┴────────┴─────────┴────────┴────┐   │
STA 0 │    │                COCKPIT                        │   │
      │    │               STA 0-5                         │   │
      │    └───────────────────┬───────────────────────────┘   │
      │                        │                                │
      │    ┌───────────────────┴───────────────────────────┐   │
STA 10│    │            QUANTUM SYSTEMS BAY                │   │
      │    │              QPU + QNS + QKD                  │   │
      │    │               STA 5-15                        │   │
      │    └───────────────────┬───────────────────────────┘   │
      │                        │                                │
      │    ┌───────────────────┴───────────────────────────┐   │
STA 20│  ╱ │          FORWARD CARGO HOLD                   │ ╲ │
      │ ╱  │            3,000 kg max                       │  ╲│
      │╱   │             STA 15-25                         │   ╲
      ├────┼───────────────────┬───────────────────────────┼────┤
STA 30│FOT │     ZONE 1        │        ZONE 1            │FOT │
      │ L  │   (50 PAX)        │       (50 PAX)           │ R  │
      │    ├───────────────────┼───────────────────────────┤    │
STA 40│FIT │     ZONE 2        │        ZONE 2            │FIT │
      │ L  │   (50 PAX)        │       (50 PAX)           │ R  │
      │    ├───────────────────┴───────────────────────────┤    │
STA 50│    │           CENTER CARGO HOLD                   │    │
      │    │            5,000 kg max                       │    │
      │    │             STA 45-55                         │    │
      │    ├───────────────────┬───────────────────────────┤    │
STA 60│    │     ZONE 3        │        ZONE 3            │    │
      │    │   (25 PAX)        │       (25 PAX)           │    │
      │    ├───────────────────┼───────────────────────────┤    │
STA 70│    │     ZONE 4        │        ZONE 4            │    │
      │    │   (25 PAX)        │       (25 PAX)           │    │
      │    └───────────────────┴───────────────────────────┘    │
      │ ╲                                                    ╱  │
STA 80│  ╲ ┌───────────────────────────────────────────────┐╱   │
      │   ╲│            AFT CARGO HOLD                     │    │
      │    │            4,000 kg max                       │    │
      │    │             STA 75-85                         │    │
      │    └───────────────────────────────────────────────┘    │
      │                                                         │
      └─────────────────────────────────────────────────────────┘

Legend:
FOT = Fuel Outer Tank (3,000 kg each)
FIT = Fuel Inner Tank (5,000 kg each)
FCT = Fuel Center Tank (9,000 kg) - Located STA 35-65 (not shown for clarity)
```

---

## 2. AIRCRAFT ZONES - SIDE VIEW

```
                     ←─── 85m Total Length ───→
    
    WL 300 ┌─────────────────────────────────────┐
           │                                     │
    WL 250 │    ┌──────────────────────┐        │
           │    │  PASSENGER CABIN     │        │
    WL 200 │    │    (WL 200)          │        │
           │    └──────────────────────┘        │
    WL 150 │  ┌────────────────────────────┐    │
           │  │   MAIN DECK CARGO          │    │
    WL 100 │  │    (WL 100-150)           │    │ QPU Bay
           │  └────────────────────────────┘    │ (WL 50-150)
    WL 50  │ ┌──┐┌────────────────────┐┌──┐    │
           │ │  ││  LOWER CARGO HOLDS  ││  │    │
    WL 0   └─┴──┴┴────────────────────┴┴──┴────┘
           NGear    Main Gear           Main Gear
           STA 8    STA 45              STA 45
    
    Station Lines (m):
    0    10   20   30   40   50   60   70   80   85
    │    │    │    │    │    │    │    │    │    │
    ▼    ▼    ▼    ▼    ▼    ▼    ▼    ▼    ▼    ▼
```

---

## 3. LOADING ZONES DETAIL

### 3.1 Passenger Zones

| Zone | Capacity | Rows | Seats/Row | Location | Weight Arm |
|------|----------|------|-----------|----------|------------|
| 1 | 100 PAX | 10 | 10 (3-4-3) | STA 25-35 | 30.0m |
| 2 | 100 PAX | 10 | 10 (3-4-3) | STA 35-45 | 40.0m |
| 3 | 50 PAX | 5 | 10 (2-6-2) | STA 55-65 | 60.0m |
| 4 | 50 PAX | 5 | 10 (2-6-2) | STA 65-75 | 70.0m |

**Standard Passenger Weights:**
- Economy: 95 kg (including carry-on)
- Business: 100 kg (including carry-on)
- Crew: 85 kg (including equipment)

### 3.2 Cargo Compartments

| Compartment | Volume | Max Weight | Floor Limit | Door Size | Container |
|-------------|--------|------------|-------------|-----------|-----------|
| FWD | 25 m³ | 3,000 kg | 750 kg/m² | 1.8×1.8m | LD3 only |
| CTR | 40 m³ | 5,000 kg | 800 kg/m² | 2.4×2.4m | LD3/LD6 |
| AFT | 30 m³ | 4,000 kg | 750 kg/m² | 1.8×1.8m | LD3 only |

### 3.3 Fuel Tanks

| Tank | Type | Capacity | Location | CG Arm | Feed Priority |
|------|------|----------|----------|--------|---------------|
| Center | LH2 | 9,000 kg | STA 35-65, WL 50 | 50.0m | 3 |
| L Inner | LH2 | 5,000 kg | BL -10, STA 30-60 | 45.0m | 2 |
| R Inner | LH2 | 5,000 kg | BL +10, STA 30-60 | 45.0m | 2 |
| L Outer | LH2 | 3,000 kg | BL -20, STA 25-55 | 40.0m | 1 |
| R Outer | LH2 | 3,000 kg | BL +20, STA 25-55 | 40.0m | 1 |

---

## 4. CENTER OF GRAVITY ENVELOPE

```
    % MAC Scale (from LE of MAC at STA 25)
    0%    10%   20%   30%   40%   50%
    │     │     │     │     │     │
    ▼     ▼     ▼     ▼     ▼     ▼
    ├─────┼─────┼─────┼─────┼─────┤
           FWD         AFT
           LIM         LIM
           15%         35%
    
    Physical Location (m from datum):
    STA 25  27.5  30   32.5  35   37.5
```

---

## 5. WEIGHT AND BALANCE STATIONS

### 5.1 Major Component Locations

| Component | Weight (kg) | Station | BL | WL | Moment Arm |
|-----------|-------------|---------|----|----|------------|
| Cockpit | 1,200 | 3 | 0 | 250 | 3.0m |
| QPU System | 2,500 | 10 | 0 | 100 | 10.0m |
| APU | 450 | 82 | 0 | 150 | 82.0m |
| L Engine | 4,000 | 75 | -15 | 200 | 75.0m |
| R Engine | 4,000 | 75 | +15 | 200 | 75.0m |
| Nose Gear | 850 | 8 | 0 | 0 | 8.0m |
| L Main Gear | 3,400 | 45 | -8 | 0 | 45.0m |
| R Main Gear | 3,400 | 45 | +8 | 0 | 45.0m |

### 5.2 Quantum System Components

| System | Weight | Station | Restrictions |
|--------|--------|---------|--------------|
| QPU Core | 500 | 10 | Fixed installation |
| Cryogenics | 1,500 | 11 | Variable (LHe level) |
| Control | 300 | 9 | Fixed |
| Shielding | 200 | 10 | Fixed |
| QNS Units | 150 | 8,10,12 | Distributed |
| QSM Network | 500 | Various | Throughout structure |

---

## 6. LOADING RESTRICTIONS

### 6.1 Structural Limitations

**Floor Loading Limits:**
```
Main Deck Cargo Areas:
┌─────────────────────────────────┐
│ FWD: 750 kg/m² (Running Load)  │
│      2,000 kg/m (Beam Load)    │
├─────────────────────────────────┤
│ CTR: 800 kg/m² (Running Load)  │
│      2,500 kg/m (Beam Load)    │
├─────────────────────────────────┤
│ AFT: 750 kg/m² (Running Load)  │
│      2,000 kg/m (Beam Load)    │
└─────────────────────────────────┘
```

### 6.2 Lateral Balance Requirements

**Maximum Lateral Imbalance:**
- Fuel: 500 kg between wings
- Cargo: 1,000 kg left/right
- Passengers: 20% difference L/R

### 6.3 Special Loading Considerations

**Hazardous Materials:**
- Must be loaded in AFT compartment only
- Maximum 500 kg total
- Not adjacent to quantum systems

**Live Animals:**
- FWD compartment only (temp controlled)
- Maximum 1,000 kg
- Special ventilation required

**High-Value Cargo:**
- Center compartment preferred
- QSM monitoring enhanced
- Maximum single item: 2,000 kg

---

## 7. QUICK REFERENCE

### 7.1 Loading Sequence Priority
1. Center cargo (ballast if needed)
2. Fuel (if less than full)
3. Forward cargo
4. Aft cargo
5. Passengers (center → outboard)
6. Final trim adjustment

### 7.2 Critical Values
- **CG Range**: 15-35% MAC (STA 26.9-29.4)
- **Lateral CG**: ±0.5m from centerline
- **Max Zero Fuel Weight**: 140,000 kg
- **Max Takeoff Weight**: 180,000 kg
- **Target CG**: 25% MAC (optimal)

### 7.3 Emergency Ballast Locations
- FWD: STA 5-10 (up to 1,000 kg water)
- AFT: STA 80-85 (up to 1,000 kg water)
- Lateral: Wing cargo bays (500 kg each)

---

## 8. DIGITAL TWIN INTERFACE

### 8.1 Real-Time Monitoring Points
```
QSM Sensor Locations (Weight & Balance):
• Nose Gear Strut: Load cell + extension
• Main Gear (×2): Load cells + extension  
• Cargo Floor (×6): Strain gauges
• Fuel Tanks (×5): Quantity + temperature
• Passenger Zones (×4): Occupancy sensors
```

### 8.2 Automatic Calculations
- Current CG position (±0.1% MAC)
- Lateral balance (±50 kg)
- Fuel distribution optimization
- Load shift warnings
- Predictive CG for fuel burn

---

**NOTES:**
1. All dimensions approximate for planning
2. Actual loading per Load Control Manual
3. Digital twin overrides in abnormal ops
4. QSM system provides continuous validation

**Document Control:**
- Drawing Number: AMPEL-360BWBH200-00-2000-ZON-001
- Revision: A
- Date: 2025-06-15
- Authority: Chief Engineer - Weights

**END OF APPENDIX A**

# Appendix B: CG Calculation Forms
## Electronic Flight Bag (EFB) Digital Format - AMPEL360 BWB-Q100

**Document Reference:** AMPEL-360BWBH200-00-2000-CAL-001  
**EFB Application:** GAIA-LoadCalc v2.0  
**Form Version:** 2.0.0  
**Last Updated:** 2025-06-15  
**Auto-sync with:** QSM Network, Fuel System, Load Database

---

## FORM 1: PRELIMINARY LOAD CALCULATION

### Flight Information
```
┌─────────────────────────────────────────────────────────────┐
│ FLIGHT DATA INPUT                                           │
├─────────────────────────────────────────────────────────────┤
│ Flight Number: [________]    Date: [____/____/____]         │
│ Aircraft Reg:  [QA-_____]    ETD:  [____:____] UTC         │
│ From: [____]   To: [____]    Alternate: [____]             │
│ Captain: [______________]    Load Master: [______________]  │
└─────────────────────────────────────────────────────────────┘
```

### Section A: Operating Weights
```
┌─────────────────────────────────────────────────────────────────────┐
│ OPERATING WEIGHT ENTRY                 │ Auto-filled from Database │
├────────────────────────┬───────────────┼────────────┬─────────────┤
│ Item                   │ Weight (kg)   │ Arm (m)    │ Moment      │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ Basic Empty Weight     │ [  92,500  ]  │ [ 28.20 ]  │ [ 2,608,500]│
│ Crew (_____ persons)   │ [    850   ]  │ [ 5.00  ]  │ [     4,250]│
│ Crew Baggage          │ [    150   ]  │ [ 8.00  ]  │ [     1,200]│
│ Catering              │ [  1,200   ]  │ [ 35.00 ]  │ [    42,000]│
│ Potable Water         │ [    800   ]  │ [ 40.00 ]  │ [    32,000]│
│ Emergency Equipment   │ [    500   ]  │ [ 30.00 ]  │ [    15,000]│
│ Quantum System LHe    │ [  1,000   ]  │ [ 10.00 ]  │ [    10,000]│
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ OPERATING EMPTY WT    │ [  97,000  ]  │ [Calculated]│ [ 2,712,950]│
└────────────────────────┴───────────────┴────────────┴─────────────┘
                                           OEW CG: [ 27.97 ]m = [ 22.4 ]% MAC
```

### Section B: Payload Entry
```
┌─────────────────────────────────────────────────────────────────────┐
│ PASSENGER DISTRIBUTION                  │ QSM Occupancy Verified   │
├────────────────────────┬───────────────┼────────────┬─────────────┤
│ Zone/Class             │ Pax Count     │ Std Wt(kg) │ Total Wt    │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ Zone 1 (Forward)       │ [    85    ]  │ [   95  ]  │ [   8,075  ]│
│   • Business (Rows 1-3)│ (    20    )  │ (  100  )  │ (   2,000  )│
│   • Economy (Rows 4-10)│ (    65    )  │ (   95  )  │ (   6,175  )│
│ Zone 2 (Mid-Forward)   │ [    90    ]  │ [   95  ]  │ [   8,550  ]│
│ Zone 3 (Mid-Aft)       │ [    45    ]  │ [   95  ]  │ [   4,275  ]│
│ Zone 4 (Aft)          │ [    30    ]  │ [   95  ]  │ [   2,850  ]│
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ TOTAL PASSENGERS      │ [   250    ]  │            │ [  23,750  ]│
└────────────────────────┴───────────────┴────────────┴─────────────┘

┌─────────────────────────────────────────────────────────────────────┐
│ CARGO DISTRIBUTION                      │ Container Scanner Linked │
├────────────────────────┬───────────────┼────────────┬─────────────┤
│ Compartment            │ Weight (kg)   │ Arm (m)    │ Moment      │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ FWD Cargo              │ [  2,500   ]  │ [ 20.0  ]  │ [   50,000 ]│
│   • LD3 Count: [ 3 ]   │               │            │             │
│ CTR Cargo              │ [  3,800   ]  │ [ 50.0  ]  │ [  190,000 ]│
│   • LD6 Count: [ 2 ]   │               │            │             │
│   • Bulk: [800]kg      │               │            │             │
│ AFT Cargo              │ [  1,700   ]  │ [ 80.0  ]  │ [  136,000 ]│
│   • LD3 Count: [ 2 ]   │               │            │             │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ TOTAL CARGO           │ [  8,000   ]  │            │ [  376,000 ]│
└────────────────────────┴───────────────┴────────────┴─────────────┘
```

### Section C: Zero Fuel Weight Calculation
```
┌─────────────────────────────────────────────────────────────────────┐
│ ZERO FUEL WEIGHT SUMMARY                                            │
├────────────────────────┬───────────────┬────────────┬─────────────┤
│ Component              │ Weight (kg)   │ CG (m)     │ Moment      │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ Operating Empty Weight │   97,000      │  27.97     │  2,712,950  │
│ Passengers            │   23,750      │  40.00     │    950,000  │
│ Cargo                 │    8,000      │  47.00     │    376,000  │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ ZERO FUEL WEIGHT      │  128,750      │ [CALC]     │  4,038,950  │
└────────────────────────┴───────────────┴────────────┴─────────────┘
                                           ZFW CG: [ 31.36 ]m = [ 25.1 ]% MAC

[✓] ZFW WITHIN LIMITS (Max: 140,000 kg)
[✓] ZFW CG WITHIN LIMITS (15-35% MAC)
```

---

## FORM 2: FUEL PLANNING & FINAL CALCULATION

### Section D: Fuel Distribution
```
┌─────────────────────────────────────────────────────────────────────┐
│ FUEL LOADING PLAN                       │ Auto-calc from Flight Plan│
├────────────────────────┬───────────────┼────────────┬─────────────┤
│ Tank                   │ Fuel (kg)     │ Arm (m)    │ Moment      │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ Center Tank (LH2)      │ [  7,200   ]  │ [ 50.0  ]  │ [  360,000 ]│
│ Left Inner (LH2)       │ [  4,000   ]  │ [ 45.0  ]  │ [  180,000 ]│
│ Right Inner (LH2)      │ [  4,000   ]  │ [ 45.0  ]  │ [  180,000 ]│
│ Left Outer (LH2)       │ [  2,400   ]  │ [ 40.0  ]  │ [   96,000 ]│
│ Right Outer (LH2)      │ [  2,400   ]  │ [ 40.0  ]  │ [   96,000 ]│
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ TOTAL FUEL            │ [ 20,000   ]  │ [CALC]     │ [  912,000 ]│
└────────────────────────┴───────────────┴────────────┴─────────────┘

Fuel Breakdown:
• Taxi Fuel:        500 kg
• Trip Fuel:     12,000 kg
• Contingency:    1,200 kg
• Alternate:      3,500 kg
• Final Reserve:  2,300 kg
• Additional:       500 kg
```

### Section E: Takeoff Weight Calculation
```
┌─────────────────────────────────────────────────────────────────────┐
│ TAKEOFF WEIGHT & CG                                                 │
├────────────────────────┬───────────────┬────────────┬─────────────┤
│ Component              │ Weight (kg)   │ CG (m)     │ Moment      │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ Zero Fuel Weight      │  128,750      │  31.36     │  4,038,950  │
│ Fuel for Departure    │   20,000      │  45.60     │    912,000  │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ RAMP WEIGHT           │  148,750      │ [CALC]     │  4,950,950  │
│ Less Taxi Fuel        │     -500      │  50.00     │    -25,000  │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ TAKEOFF WEIGHT        │  148,250      │ [CALC]     │  4,925,950  │
└────────────────────────┴───────────────┴────────────┴─────────────┘
                                           TOW CG: [ 33.23 ]m = [ 26.6 ]% MAC

[✓] TOW WITHIN LIMITS (Max: 180,000 kg)
[✓] TOW CG WITHIN LIMITS (15-35% MAC)
```

---

## FORM 3: LATERAL BALANCE CHECK

### Section F: Lateral Weight Distribution
```
┌─────────────────────────────────────────────────────────────────────┐
│ LATERAL BALANCE VERIFICATION            │ QSM Network Real-time    │
├────────────────────────┬───────────────┬────────────┬─────────────┤
│ Component              │ Left (kg)     │ Right (kg) │ Difference  │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ Fuel Distribution      │               │            │             │
│ • Outer Tank          │    2,400      │   2,400    │      0      │
│ • Inner Tank          │    4,000      │   4,000    │      0      │
│ Passenger Distribution │               │            │             │
│ • Window Seats        │    4,750      │   4,655    │    +95 L    │
│ • Center Seats        │    7,125      │   7,220    │    -95 R    │
│ Cargo Distribution    │               │            │             │
│ • FWD Compartment     │    1,250      │   1,250    │      0      │
│ • CTR Compartment     │    1,900      │   1,900    │      0      │
│ • AFT Compartment     │      850      │     850    │      0      │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ TOTAL LATERAL         │   22,275      │  22,275    │      0      │
└────────────────────────┴───────────────┴────────────┴─────────────┘
                                      Lateral CG Offset: [ +0.00 ]m

[✓] LATERAL BALANCE WITHIN LIMITS (Max: ±0.5m)
[✓] FUEL IMBALANCE WITHIN LIMITS (Max: 500 kg)
```

---

## FORM 4: LANDING WEIGHT PROJECTION

### Section G: Landing Weight Calculation
```
┌─────────────────────────────────────────────────────────────────────┐
│ LANDING WEIGHT PROJECTION               │ FMS Integration Active   │
├────────────────────────┬───────────────┬────────────┬─────────────┤
│ Component              │ Weight (kg)   │ CG (m)     │ Status      │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ Takeoff Weight        │  148,250      │  33.23     │ Actual      │
│ Less Trip Fuel        │  -12,000      │  45.60     │ Planned     │
├────────────────────────┼───────────────┼────────────┼─────────────┤
│ LANDING WEIGHT        │  136,250      │ [CALC]     │ Projected   │
└────────────────────────┴───────────────┴────────────┴─────────────┘
                                           LDW CG: [ 32.14 ]m = [ 25.7 ]% MAC

[✓] LDW WITHIN LIMITS (Max: 145,000 kg)
[✓] LDW CG WITHIN LIMITS (15-35% MAC)
```

---

## FORM 5: VALIDATION & APPROVAL

### Section H: System Cross-Checks
```
┌─────────────────────────────────────────────────────────────────────┐
│ AUTOMATED VALIDATION CHECKS                                         │
├─────────────────────────────────────────────────────────────────────┤
│ [✓] QSM Network Data Correlation:        PASS (Δ < 100 kg)         │
│ [✓] Fuel System Quantity Verification:   PASS (Δ < 50 kg)          │
│ [✓] Passenger Manifest Match:            PASS (250 = 250)          │
│ [✓] Cargo Scanner Weight Total:          PASS (Δ < 20 kg)          │
│ [✓] Lateral Accelerometer Balance:       PASS (< 0.1m offset)      │
│ [✓] Digital Twin Model Sync:             CURRENT (< 30 sec)        │
│ [✓] Structural Load Distribution:        NORMAL (All green)         │
│ [✓] Quantum System Weight Status:        STABLE (LHe nominal)      │
└─────────────────────────────────────────────────────────────────────┘
```

### Section I: Manual Verification
```
┌─────────────────────────────────────────────────────────────────────┐
│ CRITICAL VALUE SUMMARY                                              │
├────────────────────────┬───────────────┬────────────────────────────┤
│ Parameter              │ Value         │ Limit Check                │
├────────────────────────┼───────────────┼────────────────────────────┤
│ Taxi Weight           │ 148,750 kg    │ [✓] < 181,000 kg          │
│ Takeoff Weight        │ 148,250 kg    │ [✓] < 180,000 kg          │
│ Landing Weight        │ 136,250 kg    │ [✓] < 145,000 kg          │
│ Zero Fuel Weight      │ 128,750 kg    │ [✓] < 140,000 kg          │
│ Takeoff CG            │ 26.6% MAC     │ [✓] 15-35% MAC            │
│ Landing CG            │ 25.7% MAC     │ [✓] 15-35% MAC            │
│ Lateral Balance       │ 0.00m         │ [✓] < ±0.5m               │
└────────────────────────┴───────────────┴────────────────────────────┘
```

### Section J: Electronic Signatures
```
┌─────────────────────────────────────────────────────────────────────┐
│ LOAD SHEET APPROVAL                     │ Time: [____:____] UTC    │
├─────────────────────────────────────────────────────────────────────┤
│ Load Master:    [_______________] □ PIN: [____]  TimeStamp: [Auto] │
│ Captain:        [_______________] □ PIN: [____]  TimeStamp: [Auto] │
│ Dispatch:       [_______________] □ PIN: [____]  TimeStamp: [Auto] │
│                                                                     │
│ Digital Certificate: [QA-001-2025-06-15-GA001-VERIFIED]            │
│ Blockchain Hash: [0x7f3b9c2a1e5d8f6b4a9c3e7d2f8a5b1c6e9d4f7a2b8c] │
└─────────────────────────────────────────────────────────────────────┘
```

---

## FORM 6: SPECIAL OPERATIONS

### BWB-Specific Adjustments
```
┌─────────────────────────────────────────────────────────────────────┐
│ BWB CONFIGURATION CHECKS                                            │
├─────────────────────────────────────────────────────────────────────┤
│ □ Spanwise moment distribution verified                             │
│ □ Wing fuel for bending relief optimized                          │
│ □ Passenger lateral distribution < 10% asymmetry                   │
│ □ Pitch stability margin > 5% MAC                                 │
│ □ Quantum system CG effects included                              │
└─────────────────────────────────────────────────────────────────────┘
```

### Contingency Planning
```
┌─────────────────────────────────────────────────────────────────────┐
│ EMERGENCY BALLAST OPTIONS                                           │
├────────────────────────┬───────────────┬────────────────────────────┤
│ Location               │ Available     │ CG Effect per 1000 kg      │
├────────────────────────┼───────────────┼────────────────────────────┤
│ FWD Water Ballast     │ 2,000 kg      │ -2.5% MAC                 │
│ AFT Water Ballast     │ 2,000 kg      │ +2.5% MAC                 │
│ Cargo Repositioning   │ Variable      │ Depends on compartments   │
│ Fuel Transfer         │ Limited       │ ±1.0% MAC max             │
└────────────────────────┴───────────────┴────────────────────────────┘
```

---

## EFB INTERFACE FEATURES

### Real-Time Updates
- **Passenger Scanning**: Auto-updates as passengers board
- **Fuel System**: Continuous sync with fuel quantity system
- **Cargo Loading**: RFID container tracking integration
- **QSM Network**: Structural load validation every 10 seconds

### Calculation Modes
1. **Quick Mode**: Basic weight and CG only
2. **Standard Mode**: Full validation and checks
3. **Detailed Mode**: Includes spanwise analysis
4. **Manual Override**: For non-standard operations

### Data Export Options
- PDF Load Sheet for printing
- XML for airline operations
- CSV for analysis
- Direct uplink to FMS
- Blockchain verification record

### Error Handling
```
Common Warnings:
⚠️ "CG approaching limit" - Yellow at 90% of envelope
⚠️ "Lateral imbalance detected" - At 400 kg fuel difference
⚠️ "QSM deviation" - When >200 kg mismatch
🛑 "CG LIMIT EXCEEDED" - Prevents dispatch approval
🛑 "STRUCTURAL LIMIT" - Spanwise moment exceeded
```

---

**EFB System Requirements:**
- iPad Pro 12.9" or equivalent
- GAIA-LoadCalc v2.0 or higher
- Network connectivity for real-time sync
- Biometric authentication enabled

**Support:**
- Load Control: +34-XXX-XXXX (24/7)
- EFB Support: efb-support@gaia-qao.aero
- Training videos: Available in EFB Help menu

**END OF APPENDIX B**

# Appendix C: Fuel Distribution Diagram
## Hydrogen Fuel System Schematic - AMPEL360 BWB-Q100

**Document Reference:** AMPEL-360BWBH200-28-0000-SCH-001  
**Version:** 1.0.0  
**Date:** 2025-06-15  
**ATA Chapter:** 28 - Fuel  
**System Type:** Liquid Hydrogen (LH2) Cryogenic

---

## 1. FUEL TANK ARRANGEMENT - TOP VIEW

```
                           ← 85m →
    ┌─────────────────────────────────────────────────────┐
    │                    FORWARD                           │
    │  ┌─────────────────────────────────────────────┐   │
    │  │              AVIONICS BAY                    │   │
    │  │          (NO FUEL ZONE - QPU)               │   │
    │  └─────────────────────────────────────────────┘   │
    │                                                     │
    │  ╱───────────────────────────────────────────────╲  │
    │ ╱                                                 ╲ │
    │╱    ┌───────┐                     ┌───────┐      ╲│
    ├─────┤  LOT  ├─────────────────────┤  ROT  ├───────┤
    │     │ 3000kg│    ┌───────────┐    │ 3000kg│       │
    │     └───────┘    │    FCT    │    └───────┘       │
    │                  │  9000kg   │                     │
    │     ┌───────┐    │           │    ┌───────┐       │
    │     │  LIT  │    └───────────┘    │  RIT  │       │
    │     │ 5000kg├─────────────────────┤ 5000kg│       │
    │     └───────┘                     └───────┘       │
    │╲                                                  ╱│
    │ ╲   ┌─────┐                         ┌─────┐    ╱ │
    │  ╲  │ ENG │                         │ ENG │   ╱  │
    │   ╲ │  L  │                         │  R  │  ╱   │
    │    ╲└─────┘                         └─────┘ ╱    │
    │     ╲_____________________________________╱      │
    │                      AFT                          │
    └───────────────────────────────────────────────────┘

Legend:
FCT = Fuel Center Tank (9,000 kg LH2)
LIT = Left Inner Tank (5,000 kg LH2)
RIT = Right Inner Tank (5,000 kg LH2)
LOT = Left Outer Tank (3,000 kg LH2)
ROT = Right Outer Tank (3,000 kg LH2)
Total Capacity: 25,000 kg LH2
```

---

## 2. FUEL SYSTEM SCHEMATIC

```
                    FUEL FEED SYSTEM DIAGRAM
    
    LOT ──┬── LIT ──┬── FCT ──┬── RIT ──┬── ROT
     │    │         │         │         │    │
    [P]  [P]       [P]       [P]       [P]  [P]  ← Boost Pumps
     │    │         │         │         │    │
     └────┴────┬────┴────┬────┴────┬────┴────┘
               │         │         │
              [V]       [V]       [V]  ← Isolation Valves
               │         │         │
               └────┬────┴────┬────┘
                    │         │
                 ┌──┴──┐   ┌──┴──┐
                 │ XFD │   │ XFD │  ← Crossfeed Valves
                 └──┬──┘   └──┬──┘
                    │         │
                 ┌──┴──┐   ┌──┴──┐
                 │ LP  │   │ LP  │  ← Low Pressure Pumps
                 └──┬──┘   └──┬──┘
                    │         │
                 ┌──┴──┐   ┌──┴──┐
                 │ HP  │   │ HP  │  ← High Pressure Pumps
                 └──┬──┘   └──┬──┘
                    │         │
                 ┌──┴──┐   ┌──┴──┐
                 │ENGINE│   │ENGINE│
                 │  L   │   │  R   │
                 └─────┘   └─────┘

[P] = Pump  [V] = Valve  XFD = Crossfeed
HP = High Pressure  LP = Low Pressure
```

---

## 3. CRYOGENIC SYSTEM DETAILS

### 3.1 Tank Construction
```
                 LH2 TANK CROSS-SECTION
    
    ┌─────────────────────────────────────────┐
    │          Outer Shell (Aluminum)         │
    │  ┌───────────────────────────────────┐  │
    │  │      Vacuum Space (<10⁻⁶ Torr)    │  │
    │  │  ┌─────────────────────────────┐  │  │
    │  │  │   MLI Insulation (40 layers)│  │  │
    │  │  │  ┌───────────────────────┐  │  │  │
    │  │  │  │    Inner Tank (SS)    │  │  │  │
    │  │  │  │  ┌───────────────┐   │  │  │  │
    │  │  │  │  │   LH2 @ 20K   │   │  │  │  │
    │  │  │  │  │   (-253°C)    │   │  │  │  │
    │  │  │  │  └───────────────┘   │  │  │  │
    │  │  │  └───────────────────────┘  │  │  │
    │  │  └─────────────────────────────┘  │  │
    │  └───────────────────────────────────┘  │
    └─────────────────────────────────────────┘
    
    Wall Thickness:
    - Outer Shell: 8mm
    - Vacuum Gap: 100mm
    - Inner Tank: 5mm
```

### 3.2 Support System
```
    TANK SUPPORT & THERMAL MANAGEMENT
    
    ┌─────────────────────────────────────────┐
    │                                         │
    │    [GFRP Support Struts - Low Heat]    │
    │         │              │                │
    │      ┌──┴──┐       ┌──┴──┐            │
    │      │TANK │       │TANK │            │
    │      └─────┘       └─────┘            │
    │         ↑              ↑               │
    │    [Boil-off]    [Boil-off]          │
    │         │              │               │
    │      ┌──┴──────────────┴──┐           │
    │      │  Boil-off Header   │           │
    │      └──────────┬─────────┘           │
    │                 │                      │
    │           [Recondenser]                │
    │                 │                      │
    │            [Return/Vent]               │
    └─────────────────────────────────────────┘
```

---

## 4. FUEL QUANTITY INDICATION SYSTEM

### 4.1 Sensor Layout
```
    CAPACITANCE PROBE ARRANGEMENT (Per Tank)
    
    Top View:          Side View:
    ┌─────────┐        ┌─────────┐
    │ P1   P2 │        │    P4   │ 100%
    │         │        │    P3   │ 75%
    │    C    │        │    P2   │ 50%
    │         │        │    P1   │ 25%
    │ P3   P4 │        └─────────┘ 0%
    └─────────┘        
    
    P = Probe Location
    C = Compensator
    
    Total: 20 probes + 5 compensators
    Accuracy: ±0.5% of tank volume
```

### 4.2 Fuel Quantity Computer
```
    FUEL QUANTITY PROCESSING
    
    Tank Sensors ──→ [Signal Conditioning] ──→ [FQC]
                                                  │
    Temperature ───→ [Density Correction] ────────┤
                                                  │
    Attitude ──────→ [Attitude Compensation] ─────┤
                                                  ↓
                              [Fuel Quantity Display]
                              • Total Fuel: 25,000 kg
                              • Distribution by tank
                              • CG calculation input
                              • Imbalance warnings
```

---

## 5. FUEL MANAGEMENT SYSTEM

### 5.1 Normal Feed Sequence
```
    AUTOMATIC FUEL BURN SEQUENCE
    
    Phase 1: Outer Tanks (Wing Relief)
    LOT ─┐                    ┌─ ROT
         ├──→ ENGINE L/R ←────┤
    LIT ─┘                    └─ RIT
    
    Phase 2: Inner Tanks (Balanced)
    LIT ───→ ENGINE L
    RIT ───→ ENGINE R
    
    Phase 3: Center Tank
    FCT ───→ Both Engines (via crossfeed)
    
    Reserve: Inner Tanks maintain 500 kg each
```

### 5.2 CG Management Logic
```
    FUEL CG OPTIMIZATION ALGORITHM
    
    ┌─────────────────────────────────────┐
    │ Current CG Position                 │
    │         ↓                           │
    │ Compare to Target CG (25% MAC)     │
    │         ↓                           │
    │ CG Too Far Aft?  ──→ Burn Aft Fuel │
    │         ↓                           │
    │ CG Too Far Fwd?  ──→ Burn Fwd Fuel │
    │         ↓                           │
    │ Maintain Balance                    │
    └─────────────────────────────────────┘
```

---

## 6. FUEL SYSTEM CONTROLS

### 6.1 Cockpit Fuel Panel
```
    FUEL CONTROL PANEL LAYOUT
    
    ┌──────────────────────────────────────────┐
    │            FUEL SYSTEM CONTROL           │
    ├──────────────────────────────────────────┤
    │  [LOT]    [LIT]    [FCT]    [RIT]  [ROT]│
    │   ON       ON       ON       ON     ON  │
    │  3000     5000     9000     5000   3000 │
    │                                          │
    │  L ENGINE FEED           R ENGINE FEED   │
    │  [AUTO] [MAN]            [AUTO] [MAN]    │
    │                                          │
    │  CROSSFEED                               │
    │  [CLOSED] [OPEN]                         │
    │                                          │
    │  FUEL TEMP    FUEL PRESS    IMBALANCE   │
    │   -253°C       45 PSI         0 kg      │
    └──────────────────────────────────────────┘
```

### 6.2 EICAS Fuel Display
```
    ENGINE INDICATION - FUEL PAGE
    
    ┌──────────────────────────────────────────┐
    │                                          │
    │     3.0         FUEL (×1000 kg)    3.0  │
    │    ┌───┐                          ┌───┐ │
    │    │LOT│        ┌─────┐          │ROT│ │
    │    └───┘        │ 9.0 │          └───┘ │
    │     5.0         │ FCT │           5.0  │
    │    ┌───┐        └─────┘          ┌───┐ │
    │    │LIT│                          │RIT│ │
    │    └───┘      TOTAL: 25.0        └───┘ │
    │                                          │
    │    CG: 45.2m (22.5% MAC)               │
    │    FUEL TEMP: -253°C                    │
    │    BOIL-OFF: 2.5 kg/hr                 │
    └──────────────────────────────────────────┘
```

---

## 7. SAFETY FEATURES

### 7.1 Hydrogen-Specific Safety
```
    H2 SAFETY SYSTEMS
    
    Leak Detection:
    ├── H2 Sensors (25 locations)
    ├── UV Flame Detectors
    ├── Temperature Monitors
    └── Pressure Relief Valves
    
    Ventilation:
    ├── Forced Air Circulation
    ├── Natural Convection Paths
    ├── Emergency Dump Vents
    └── No Confined Spaces
    
    Fire Suppression:
    ├── N2 Inerting System
    ├── Water Deluge (ground)
    ├── Isolation Valves
    └── Emergency Fuel Dump
```

### 7.2 Structural Integration
```
    BWB FUEL TANK INTEGRATION
    
    Wing Structure:
    ├── Integral Tank Design
    ├── Composite Barriers
    ├── Thermal Expansion Joints
    └── Load Distribution
    
    CG Considerations:
    ├── Wide CG Travel
    ├── Lateral Balance Critical
    ├── Automated Redistribution
    └── QSM Monitoring
```

---

## 8. REFUELING SYSTEM

### 8.1 Ground Refueling Schematic
```
    LH2 REFUELING CONNECTION
    
    Ground Supply                Aircraft
    ┌─────────┐                ┌─────────┐
    │LH2 Truck├────┬───────────┤Receptacle│
    └─────────┘    │           └────┬────┘
                   │                │
    ┌─────────┐    │           ┌────┴────┐
    │ Vapor   ├────┴───────────┤ Vapor   │
    │ Return  │                │ Return  │
    └─────────┘                └─────────┘
    
    Features:
    - Automated coupling
    - Leak-free disconnect
    - Flow rate: 1000 kg/min
    - Pre-cool cycle
    - Grounding/bonding
```

### 8.2 Refuel Control Panel
```
    REFUEL/DEFUEL PANEL (External)
    
    ┌──────────────────────────────────────────┐
    │         LH2 REFUEL CONTROL              │
    ├──────────────────────────────────────────┤
    │  PRESELECT: [_____] kg                  │
    │                                          │
    │  DISTRIBUTION:                           │
    │  [AUTO] [MANUAL] [BALANCED]             │
    │                                          │
    │  FUEL TEMPERATURE: -253°C               │
    │  FLOW RATE: 850 kg/min                  │
    │  TIME REMAINING: 12 min                 │
    │                                          │
    │  [START] [STOP] [E-STOP]                │
    └──────────────────────────────────────────┘
```

---

## 9. SYSTEM INTEGRATION

### 9.1 Interface with Other Systems
```
    FUEL SYSTEM INTERFACES
    
    Fuel System
         │
         ├── Flight Management System
         │   └── Fuel Prediction/Optimization
         │
         ├── Weight & Balance System
         │   └── Real-time CG Calculation
         │
         ├── Quantum Structural Monitoring
         │   └── Tank Stress/Temperature
         │
         ├── Environmental Control System
         │   └── Fuel Tank Inerting
         │
         └── Electrical System
             └── Fuel Pump Power/Control
```

### 9.2 Digital Twin Integration
- Real-time fuel distribution modeling
- Thermal state prediction
- Boil-off rate calculation
- Structural load optimization
- CG envelope protection

---

## 10. QUICK REFERENCE DATA

### Tank Specifications
| Tank | Volume (m³) | Capacity (kg) | Operating Press (bar) |
|------|-------------|---------------|----------------------|
| FCT | 128 | 9,000 | 1.5-3.0 |
| LIT | 71 | 5,000 | 1.5-3.0 |
| RIT | 71 | 5,000 | 1.5-3.0 |
| LOT | 43 | 3,000 | 1.5-3.0 |
| ROT | 43 | 3,000 | 1.5-3.0 |

### System Parameters
- Fuel Type: Liquid Hydrogen (LH2)
- Temperature: 20K (-253°C)
- Density: 70.8 kg/m³
- Boil-off Rate: 0.5-1.0%/day
- Max Refuel Rate: 1000 kg/min
- Feed Pressure: 45-60 PSI

---

**Document Control:**
- Drawing Number: AMPEL-360BWBH200-28-0000-SCH-001
- Revision: A
- Date: 2025-06-15
- Authority: Chief Engineer - Fuel Systems

**END OF APPENDIX C**

# Appendix D: Quick Reference Tables
## Weight and Balance Reference Data - AMPEL360 BWB-Q100

**Document Reference:** AMPEL-360BWBH200-00-2000-QRF-001  
**Version:** 2.0.0  
**Date:** 2025-06-15  
**Purpose:** Quick reference for load planning calculations

---

## 1. STANDARD PASSENGER WEIGHTS

### 1.1 IATA Standard Weights (Including Hand Baggage)
```
┌─────────────────────────────────────────────────────────────┐
│                    PASSENGER WEIGHTS                        │
├─────────────────────────┬───────────┬─────────────────────┤
│ Category                │ Weight    │ Notes               │
├─────────────────────────┼───────────┼─────────────────────┤
│ ADULT PASSENGERS        │           │                     │
│ • Male                  │ 88 kg     │ Includes 7kg hand   │
│ • Female                │ 75 kg     │ baggage per pax     │
│ • Average Adult         │ 84 kg     │                     │
├─────────────────────────┼───────────┼─────────────────────┤
│ CHILDREN                │           │                     │
│ • Child (2-12 years)    │ 35 kg     │ Half hand baggage   │
│ • Infant (<2 years)     │ 10 kg     │ No seat required    │
├─────────────────────────┼───────────┼─────────────────────┤
│ CREW MEMBERS           │           │                     │
│ • Cockpit Crew         │ 85 kg     │ Inc. flight bag     │
│ • Cabin Crew           │ 75 kg     │ Inc. equipment      │
│ • Crew Baggage         │ 20 kg     │ Per crew member     │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 1.2 Regional Variations
```
┌─────────────────────────────────────────────────────────────┐
│              REGIONAL PASSENGER WEIGHTS                     │
├─────────────────────────┬───────────┬─────────────────────┤
│ Route/Region            │ Average   │ Adjustment Factor   │
├─────────────────────────┼───────────┼─────────────────────┤
│ Europe - Domestic       │ 84 kg     │ Standard            │
│ Europe - International  │ 84 kg     │ Standard            │
│ North America          │ 90 kg     │ +6 kg               │
│ Asia Pacific           │ 78 kg     │ -6 kg               │
│ Middle East            │ 85 kg     │ +1 kg               │
│ Latin America          │ 82 kg     │ -2 kg               │
│ Africa                 │ 80 kg     │ -4 kg               │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 1.3 Charter/Group Weights
```
┌─────────────────────────────────────────────────────────────┐
│                  SPECIAL GROUP WEIGHTS                      │
├─────────────────────────┬───────────┬─────────────────────┤
│ Group Type              │ Weight    │ Typical Adjustment  │
├─────────────────────────┼───────────┼─────────────────────┤
│ Sports Teams            │ 100 kg    │ +16 kg (equipment)  │
│ Military Personnel      │ 95 kg     │ +11 kg (gear)       │
│ Elderly Tour Groups     │ 78 kg     │ -6 kg               │
│ School Groups          │ 65 kg     │ -19 kg              │
│ Business Charter       │ 87 kg     │ +3 kg               │
│ Pilgrimage Groups      │ 82 kg     │ -2 kg               │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 1.4 Seasonal Adjustments
```
┌─────────────────────────────────────────────────────────────┐
│                 SEASONAL WEIGHT FACTORS                     │
├─────────────────────────┬───────────┬─────────────────────┤
│ Season/Condition        │ Factor    │ Reason              │
├─────────────────────────┼───────────┼─────────────────────┤
│ Summer                  │ -3 kg     │ Lighter clothing    │
│ Winter                  │ +5 kg     │ Heavy clothing      │
│ Holiday Season          │ +2 kg     │ Extra carry-on      │
│ Ski Destinations       │ +8 kg     │ Equipment           │
│ Beach Destinations     │ -2 kg     │ Light packing       │
└─────────────────────────┴───────────┴─────────────────────┘
```

---

## 2. CARGO DENSITIES

### 2.1 Standard Cargo Types
```
┌─────────────────────────────────────────────────────────────┐
│                  COMMON CARGO DENSITIES                     │
├─────────────────────────┬───────────┬─────────────────────┤
│ Cargo Type              │ Density   │ Typical Loading     │
│                         │ (kg/m³)   │                     │
├─────────────────────────┼───────────┼─────────────────────┤
│ GENERAL CARGO           │           │                     │
│ • Mixed General         │ 160       │ Volume limited      │
│ • Consolidated Freight  │ 180       │ Balanced            │
│ • Express Parcels       │ 120       │ Volume limited      │
│ • E-commerce           │ 100       │ Volume limited      │
├─────────────────────────┼───────────┼─────────────────────┤
│ MAIL                    │           │                     │
│ • Letter Mail          │ 150       │ Volume limited      │
│ • Parcel Post          │ 140       │ Volume limited      │
│ • Express Mail         │ 130       │ Volume limited      │
├─────────────────────────┼───────────┼─────────────────────┤
│ BAGGAGE                 │           │                     │
│ • Checked Baggage      │ 160       │ Standard            │
│ • Transfer Baggage     │ 170       │ Compressed          │
│ • Crew Baggage         │ 140       │ Loose packed        │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 2.2 Specialized Cargo
```
┌─────────────────────────────────────────────────────────────┐
│                 SPECIALIZED CARGO DENSITIES                 │
├─────────────────────────┬───────────┬─────────────────────┤
│ Cargo Type              │ Density   │ Loading Notes       │
│                         │ (kg/m³)   │                     │
├─────────────────────────┼───────────┼─────────────────────┤
│ HEAVY/DENSE             │           │                     │
│ • Machinery Parts       │ 400-800   │ Floor limit critical│
│ • Metal Products        │ 500-2000  │ Weight limited      │
│ • Books/Printed Matter  │ 600-800   │ Weight limited      │
│ • Liquids (drums)       │ 800-1200  │ Weight limited      │
├─────────────────────────┼───────────┼─────────────────────┤
│ LIGHT/VOLUMINOUS        │           │                     │
│ • Textiles/Clothing     │ 80-120    │ Volume limited      │
│ • Flowers              │ 40-60     │ Volume limited      │
│ • Empty Containers     │ 30-50     │ Volume limited      │
│ • Foam Products        │ 20-40     │ Volume limited      │
├─────────────────────────┼───────────┼─────────────────────┤
│ PERISHABLES            │           │                     │
│ • Fresh Produce        │ 200-300   │ Temp controlled     │
│ • Frozen Goods         │ 300-400   │ Insulated containers│
│ • Pharmaceuticals      │ 150-250   │ Special handling    │
│ • Live Animals         │ 100-150   │ Special compartment │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 2.3 Unit Load Devices (ULD)
```
┌─────────────────────────────────────────────────────────────┐
│                    ULD SPECIFICATIONS                       │
├─────────────────────────┬───────────┬──────────┬──────────┤
│ Container Type          │ Volume    │ Tare Wt  │ Max Gross│
│                         │ (m³)      │ (kg)     │ (kg)     │
├─────────────────────────┼───────────┼──────────┼──────────┤
│ LD3 (AKE)              │ 4.5       │ 82       │ 1,588    │
│ LD6 (ALF)              │ 8.9       │ 160      │ 3,175    │
│ LD11 (ALP)             │ 7.0       │ 185      │ 3,176    │
│ 88" Pallet (PAG)       │ 10.8      │ 120      │ 4,626    │
│ 96" Pallet (PMC)       │ 11.7      │ 130      │ 5,035    │
├─────────────────────────┴───────────┴──────────┴──────────┤
│ Average Densities in ULDs:                                  │
│ • General Cargo: 180 kg/m³                                 │
│ • Express: 140 kg/m³                                       │
│ • Mail: 150 kg/m³                                         │
│ • Baggage: 160 kg/m³                                      │
└─────────────────────────────────────────────────────────────┘
```

---

## 3. FUEL SPECIFICATIONS - LIQUID HYDROGEN (LH2)

### 3.1 Physical Properties
```
┌─────────────────────────────────────────────────────────────┐
│              LIQUID HYDROGEN PROPERTIES                     │
├─────────────────────────┬───────────┬─────────────────────┤
│ Property                │ Value     │ Units               │
├─────────────────────────┼───────────┼─────────────────────┤
│ DENSITY                 │           │                     │
│ • At 20K (-253°C)       │ 70.8      │ kg/m³               │
│ • At 22K (-251°C)       │ 69.5      │ kg/m³               │
│ • At NBP (20.3K)        │ 70.9      │ kg/m³               │
├─────────────────────────┼───────────┼─────────────────────┤
│ SPECIFIC GRAVITY        │           │                     │
│ • Relative to water     │ 0.071     │ @ 20K               │
├─────────────────────────┼───────────┼─────────────────────┤
│ TEMPERATURE             │           │                     │
│ • Normal Boiling Point  │ 20.3      │ K (-252.9°C)        │
│ • Triple Point          │ 13.8      │ K (-259.3°C)        │
│ • Critical Point        │ 33.2      │ K (-240.0°C)        │
├─────────────────────────┼───────────┼─────────────────────┤
│ ENERGY CONTENT          │           │                     │
│ • Lower Heating Value   │ 120.0     │ MJ/kg               │
│ • Higher Heating Value  │ 142.0     │ MJ/kg               │
│ • vs Jet-A (LHV)        │ 2.8×      │ More energy/kg      │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 3.2 Operational Parameters
```
┌─────────────────────────────────────────────────────────────┐
│           LH2 OPERATIONAL SPECIFICATIONS                    │
├─────────────────────────┬───────────┬─────────────────────┤
│ Parameter               │ Value     │ Notes               │
├─────────────────────────┼───────────┼─────────────────────┤
│ STORAGE CONDITIONS      │           │                     │
│ • Tank Pressure         │ 1.5-3.0   │ bar (absolute)      │
│ • Temperature Range     │ 20-22     │ K                   │
│ • Ullage Space          │ 5-10      │ % of tank volume    │
├─────────────────────────┼───────────┼─────────────────────┤
│ BOIL-OFF RATES          │           │                     │
│ • Ground (connected)    │ 0.5       │ %/day               │
│ • Ground (standalone)   │ 1.0       │ %/day               │
│ • Flight                │ 0.1       │ %/day               │
├─────────────────────────┼───────────┼─────────────────────┤
│ EXPANSION FACTORS       │           │                     │
│ • Liquid to Gas (NBP)   │ 1:848     │ Volume ratio        │
│ • Thermal Expansion     │ 0.13      │ %/K                 │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 3.3 Fuel Weight Calculations
```
┌─────────────────────────────────────────────────────────────┐
│              FUEL WEIGHT QUICK REFERENCE                    │
├─────────────────────────┬───────────┬─────────────────────┤
│ Volume                  │ Weight    │ @ 70.8 kg/m³        │
├─────────────────────────┼───────────┼─────────────────────┤
│ 1 m³                    │ 70.8 kg   │ Standard            │
│ 10 m³                   │ 708 kg    │ Standard            │
│ 100 m³                  │ 7,080 kg  │ Standard            │
├─────────────────────────┼───────────┼─────────────────────┤
│ TANK CAPACITIES         │           │                     │
│ • Center Tank (128 m³)  │ 9,062 kg  │ Nominal 9,000 kg    │
│ • Inner Tank (71 m³)    │ 5,027 kg  │ Nominal 5,000 kg    │
│ • Outer Tank (43 m³)    │ 3,044 kg  │ Nominal 3,000 kg    │
│ • Total (356 m³)        │ 25,204 kg │ Nominal 25,000 kg   │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 3.4 Temperature Correction Factors
```
┌─────────────────────────────────────────────────────────────┐
│           LH2 DENSITY TEMPERATURE CORRECTIONS               │
├─────────────────────────┬───────────┬─────────────────────┤
│ Temperature (K)         │ Density   │ Correction Factor   │
│                         │ (kg/m³)   │ (from 20K)          │
├─────────────────────────┼───────────┼─────────────────────┤
│ 19K                     │ 72.1      │ 1.018               │
│ 20K (Reference)         │ 70.8      │ 1.000               │
│ 21K                     │ 69.5      │ 0.982               │
│ 22K                     │ 68.2      │ 0.964               │
│ 23K                     │ 66.9      │ 0.945               │
│ 24K                     │ 65.6      │ 0.927               │
└─────────────────────────┴───────────┴─────────────────────┘
```

---

## 4. MISCELLANEOUS WEIGHTS

### 4.1 Standard Service Items
```
┌─────────────────────────────────────────────────────────────┐
│                  SERVICE ITEM WEIGHTS                       │
├─────────────────────────┬───────────┬─────────────────────┤
│ Item                    │ Weight    │ Per Unit            │
├─────────────────────────┼───────────┼─────────────────────┤
│ CATERING                │           │                     │
│ • Economy Meal Cart     │ 80 kg     │ Full (40 meals)     │
│ • Business Meal Cart    │ 100 kg    │ Full (24 meals)     │
│ • Beverage Cart         │ 60 kg     │ Full                │
│ • Duty Free Cart        │ 70 kg     │ Full                │
├─────────────────────────┼───────────┼─────────────────────┤
│ WATER & WASTE           │           │                     │
│ • Potable Water         │ 1.0 kg/L  │ Fresh               │
│ • Waste Water           │ 1.1 kg/L  │ Used                │
│ • Lavatory Waste        │ 1.2 kg/L  │ Average             │
├─────────────────────────┼───────────┼─────────────────────┤
│ EMERGENCY EQUIPMENT     │           │                     │
│ • Life Raft (25 pax)    │ 45 kg     │ Each                │
│ • Slide/Raft           │ 85 kg     │ Each                │
│ • Emergency Kit         │ 15 kg     │ Complete            │
│ • First Aid Kit         │ 8 kg      │ Enhanced            │
└─────────────────────────┴───────────┴─────────────────────┘
```

### 4.2 Quantum System Consumables
```
┌─────────────────────────────────────────────────────────────┐
│              QUANTUM SYSTEM CONSUMABLES                     │
├─────────────────────────┬───────────┬─────────────────────┤
│ Item                    │ Weight    │ Notes               │
├─────────────────────────┼───────────┼─────────────────────┤
│ Liquid Helium           │ 125 kg/m³ │ @ 4.2K              │
│ Liquid Nitrogen         │ 808 kg/m³ │ @ 77K               │
│ Molecular Sieve         │ 5 kg      │ Per canister        │
│ Vacuum Pump Oil         │ 0.9 kg/L  │ Synthetic           │
│ Thermal Blankets        │ 2.5 kg/m² │ MLI type            │
└─────────────────────────┴───────────┴─────────────────────┘
```

---

## 5. CONVERSION FACTORS

### 5.1 Quick Conversions
```
┌─────────────────────────────────────────────────────────────┐
│                  USEFUL CONVERSIONS                         │
├─────────────────────────────────────────────────────────────┤
│ Mass:           1 kg = 2.205 lb                            │
│                 1 lb = 0.454 kg                            │
│ Volume:         1 m³ = 35.31 ft³                           │
│                 1 L = 0.264 US gal                         │
│ Density:        1 kg/m³ = 0.0624 lb/ft³                    │
│ Temperature:    K = °C + 273.15                            │
│ Pressure:       1 bar = 14.5 psi                           │
│ Energy:         1 MJ = 0.278 kWh                           │
└─────────────────────────────────────────────────────────────┘
```

---

**Usage Notes:**
1. All weights include standard allowances
2. Actual weights should be used when available
3. Digital twin system provides real-time corrections
4. Seasonal/regional factors are cumulative

**Document Control:**
- Reference: AMPEL-360BWBH200-00-2000-QRF-001
- Revision: B
- Effective: 2025-06-15
- Review: Annual or as required

**END OF APPENDIX D**

## Notes and Cautions

⚠️ **CAUTION**: Always verify lateral balance for BWB configuration

⚠️ **WARNING**: Never exceed spanwise moment limits

ℹ️ **NOTE**: Digital twin provides real-time W&B data but manual verification required for dispatch

---

**END OF DOCUMENT**

*© 2025 GAIA-QAO Aerospace. All rights reserved.*  
*Subject to ITAR/EAR export controls where applicable.*
