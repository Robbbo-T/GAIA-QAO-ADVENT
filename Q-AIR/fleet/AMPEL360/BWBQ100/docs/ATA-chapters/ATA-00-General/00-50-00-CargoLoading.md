# 00-50-00 Cargo Loading
## AMPEL360 BWB-Q100 Blended Wing Body Aircraft

**Document Number:** 00-50-00-CargoLoading  
**ATA Chapter:** 00 - General  
**Version:** 2.0.0  
**Date:** 2025-06-15  
**Status:** Released  
**Classification:** Ground Operations

---

## Table of Contents

1. [Introduction](#1-introduction)
2. [Cargo Compartment Layout](#2-cargo-compartment-layout)
3. [Loading Specifications](#3-loading-specifications)
4. [Container Compatibility](#4-container-compatibility)
5. [Loading Procedures](#5-loading-procedures)
6. [Weight Distribution Requirements](#6-weight-distribution-requirements)
7. [Special Cargo Handling](#7-special-cargo-handling)
8. [Safety Requirements](#8-safety-requirements)
9. [Digital Load Monitoring](#9-digital-load-monitoring)
10. [Quick Reference Guide](#10-quick-reference-guide)

---

## 1. Introduction

### 1.1 Purpose
This document provides comprehensive cargo loading procedures for the AMPEL360 BWB-Q100, addressing the unique requirements of the blended wing body configuration and integration with quantum monitoring systems.

### 1.2 Scope
- Cargo compartment specifications
- Loading procedures and sequences
- Weight and balance requirements
- Container handling procedures
- Special cargo provisions
- Safety and security requirements

### 1.3 BWB-Specific Considerations
⚠️ **CRITICAL:** The blended wing body design requires strict adherence to lateral balance limits and distributed loading to maintain structural integrity and flight characteristics.

---

## 2. Cargo Compartment Layout

### 2.1 Compartment Overview
```
                    CARGO COMPARTMENT LAYOUT (Top View)
    
    STA 15          STA 45           STA 75
     │               │                │
     ├───────────────┼────────────────┼───────────────┤
     │               │                │               │
     │  FORWARD      │    CENTER      │     AFT       │
     │   CARGO       │    CARGO       │    CARGO      │
     │               │                │               │
     │  ┌─────────┐  │  ┌──────────┐  │  ┌─────────┐  │
     │  │         │  │  │          │  │  │         │  │
     │  │  FWD    │  │  │   CTR    │  │  │   AFT   │  │
     │  │  3000kg │  │  │  5000kg  │  │  │  4000kg │  │
     │  │         │  │  │          │  │  │         │  │
     │  └─────────┘  │  └──────────┘  │  └─────────┘  │
     │               │                │               │
     ├───────────────┴────────────────┴───────────────┤
     
     Access: RH Side Cargo Doors
     Total Capacity: 12,000 kg / 95 m³
```

### 2.2 Compartment Specifications

| Compartment | Volume | Max Weight | Door Size | Floor Area |
|-------------|--------|------------|-----------|------------|
| **Forward** | 25 m³ | 3,000 kg | 2.0×2.0m | 20 m² |
| **Center** | 40 m³ | 5,000 kg | 2.5×2.5m | 32 m² |
| **Aft** | 30 m³ | 4,000 kg | 2.0×2.0m | 24 m² |
| **Total** | 95 m³ | 12,000 kg | - | 76 m² |

### 2.3 Structural Limitations

**Floor Loading Limits:**
```
┌─────────────────────────────────────────────┐
│         FLOOR LOADING SPECIFICATIONS        │
├─────────────────┬───────────────────────────┤
│ Parameter       │ Limit                     │
├─────────────────┼───────────────────────────┤
│ Running Load    │ 750 kg/m² (FWD/AFT)      │
│                 │ 800 kg/m² (CTR)          │
│ Point Load      │ 250 kg/0.1m²             │
│ Linear Load     │ 2000 kg/m (FWD/AFT)      │
│                 │ 2500 kg/m (CTR)          │
│ Max Single Item │ 2000 kg                  │
└─────────────────┴───────────────────────────┘
```

---

## 3. Loading Specifications

### 3.1 Container Positions

**Forward Compartment (LD3 Only)**
```
    ┌─────────────────────────┐
    │  P1A      P1B      P1C  │  3 × LD3 Positions
    │  ┌──┐     ┌──┐     ┌──┐ │  Max: 1588 kg each
    │  │  │     │  │     │  │ │
    │  └──┘     └──┘     └──┘ │
    └─────────────────────────┘
    Loading: Right to Left (P1C→P1B→P1A)
```

**Center Compartment (LD3/LD6 Compatible)**
```
    ┌─────────────────────────────────┐
    │  P2A              P2B            │  2 × LD6 Positions
    │  ┌────────┐      ┌────────┐     │  Max: 3175 kg each
    │  │        │      │        │     │  - OR -
    │  └────────┘      └────────┘     │  6 × LD3 Positions
    └─────────────────────────────────┘
    Loading: Aft to Forward (P2B→P2A)
```

**Aft Compartment (LD3 + Bulk)**
```
    ┌─────────────────────────┐
    │  P3A      P3B    │ BULK │  2 × LD3 + Bulk
    │  ┌──┐     ┌──┐   │      │  Max: 1588 kg each
    │  │  │     │  │   │      │  Bulk: 750 kg
    │  └──┘     └──┘   │      │
    └─────────────────────────┘
    Loading: Forward to Aft
```

### 3.2 Load Distribution Matrix

| Loading Scenario | FWD (kg) | CTR (kg) | AFT (kg) | CG Impact |
|-----------------|----------|----------|----------|-----------|
| Empty | 0 | 0 | 0 | Reference |
| Balanced Load | 1000 | 1667 | 1333 | Minimal |
| Forward Heavy | 2000 | 1000 | 500 | -1.5% MAC |
| Aft Heavy | 500 | 1000 | 2000 | +1.8% MAC |
| Maximum | 3000 | 5000 | 4000 | Varies |

### 3.3 Container Specifications

| Type | External Dimensions | Internal Volume | Tare Weight | Max Gross |
|------|--------------------:|-----------------|-------------|-----------|
| **LD3** | 156×153×163 cm | 4.5 m³ | 82 kg | 1,588 kg |
| **LD6** | 318×244×163 cm | 8.9 m³ | 160 kg | 3,175 kg |
| **LD11** | 318×153×163 cm | 7.0 m³ | 185 kg | 3,176 kg |

---

## 4. Container Compatibility

### 4.1 Compartment Compatibility Matrix

| Container | Forward | Center | Aft | Notes |
|-----------|---------|--------|-----|-------|
| LD3/AKE | ✓ | ✓ | ✓ | Standard |
| LD6/ALF | ✗ | ✓ | ✗ | Center only |
| LD11/ALP | ✗ | ✓ | ✗ | Center only |
| 88" Pallet | ✗ | ✓ | ✗ | With net |
| 96" Pallet | ✗ | ✗ | ✗ | Too large |
| Bulk | ✓ | ✓ | ✓ | All compartments |

### 4.2 Door Clearance Requirements

```
                DOOR CLEARANCE DIAGRAM
    
    Container    Door Frame    Clearance Required
    ┌─────┐     ┌───────┐     
    │     │     │       │      Vertical: 10 cm
    │ ULD │     │ DOOR  │      Horizontal: 15 cm
    │     │     │       │      Diagonal: 20 cm
    └─────┘     └───────┘     
    
    Note: BWB door geometry requires careful alignment
```

### 4.3 Restraint System

**Container Locks:**
- Type: Automated retractable locks
- Positions: All container positions
- Load Rating: 9G forward, 1.5G aft
- Control: Electronic with manual backup

**Bulk Cargo Nets:**
- Material: Kevlar reinforced polyester
- Attachment: 5,000 lb rated fittings
- Spacing: 50 cm maximum
- Certification: TSO-C172

---

## 5. Loading Procedures

### 5.1 Pre-Loading Checklist

```
PRE-LOADING VERIFICATION
□ Weight and Balance calculated
□ Load plan verified against manifest
□ Compartment inspection complete
□ Fire detection system operational
□ Cargo door serviceability checked
□ QSM monitoring active
□ Ground equipment positioned
□ Loading crew briefed
```

### 5.2 Standard Loading Sequence

**Phase 1: System Preparation**
1. Open cargo doors (hydraulic power required)
2. Deploy door sill protection
3. Verify compartment lighting
4. Check restraint system operation
5. Activate QSM cargo mode

**Phase 2: Container Loading**
```
OPTIMAL LOADING SEQUENCE:
1. Center Compartment (heavy items)
   └─ Start with position P2B (aft)
   └─ Progress to P2A (forward)
   
2. Aft Compartment (balance)
   └─ Position P3A first
   └─ Position P3B second
   └─ Bulk area last
   
3. Forward Compartment (trim)
   └─ Load as needed for CG
   └─ Right to left sequence
```

**Phase 3: Securing**
1. Verify container locks engaged
2. Install bulk cargo nets
3. Check load distribution via QSM
4. Secure loose items
5. Complete documentation

### 5.3 Loading Time Standards

| Operation | Standard Time | Equipment |
|-----------|---------------|-----------|
| LD3 Loading | 2 min/unit | PDL/Belt |
| LD6 Loading | 3 min/unit | PDL |
| Bulk Loading | 10 min/m³ | Manual |
| Door Operation | 30 sec | Hydraulic |
| Lock Verification | 5 min total | Visual/Electronic |

### 5.4 Unloading Procedures

**Reverse Sequence:**
1. Forward compartment first
2. Aft compartment second
3. Center compartment last

**Safety Requirements:**
- Maintain aircraft balance
- Monitor nose gear strut extension
- Check CG remains within limits

---

## 6. Weight Distribution Requirements

### 6.1 BWB-Specific Balance Requirements

**Lateral Balance Limits:**
```
                LATERAL BALANCE ENVELOPE
    
    Left Limit          CL           Right Limit
    -1000 kg ←─────────┼─────────→ +1000 kg
                       │
    ┌──────────────────┼──────────────────┐
    │                  │                  │
    │     CAUTION      │     CAUTION      │
    │   -750 to -500   │   +500 to +750   │
    │                  │                  │
    │  ┌────────────┐  │  ┌────────────┐  │
    │  │            │  │  │            │  │
    │  │   NORMAL   │  │  │   NORMAL   │  │
    │  │  -500 to 0 │  │  │  0 to +500 │  │
    │  │            │  │  │            │  │
    │  └────────────┘  │  └────────────┘  │
    └──────────────────┴──────────────────┘
```

### 6.2 Longitudinal Distribution

**CG Management Strategy:**
1. Load center compartment first (baseline)
2. Use aft compartment for forward CG
3. Use forward compartment for aft CG
4. Maintain 25% MAC target CG

**Load Distribution Examples:**
```
Scenario 1: Forward CG Correction
FWD: 500 kg    CTR: 5000 kg    AFT: 3500 kg
Result: CG shifts aft by 1.2% MAC

Scenario 2: Optimal Distribution
FWD: 2000 kg   CTR: 4000 kg    AFT: 2500 kg
Result: CG maintained at 25% MAC

Scenario 3: Maximum Payload
FWD: 3000 kg   CTR: 5000 kg    AFT: 4000 kg
Result: CG at 26% MAC (acceptable)
```

### 6.3 Structural Load Distribution

**Spanwise Moment Considerations:**
- Center cargo creates minimal wing bending
- Distribute heavy items along centerline
- Avoid point loads near wing junction
- Monitor via QSM real-time display

---

## 7. Special Cargo Handling

### 7.1 Dangerous Goods

**Location Restrictions:**
```
┌─────────────────────────────────────────┐
│         DG LOADING RESTRICTIONS         │
├─────────────────┬───────────────────────┤
│ DG Class        │ Permitted Location    │
├─────────────────┼───────────────────────┤
│ Class 1 (Explos)│ NOT PERMITTED         │
│ Class 2 (Gases) │ AFT only, max 100 kg  │
│ Class 3 (Flamm) │ AFT only, segregated  │
│ Class 4 (Solids)│ CTR or AFT            │
│ Class 5 (Oxid)  │ FWD only              │
│ Class 6 (Toxic) │ AFT, isolated         │
│ Class 7 (Radio) │ AFT, shielded         │
│ Class 8 (Corr)  │ Any, protected        │
│ Class 9 (Misc)  │ Any compartment       │
└─────────────────┴───────────────────────┘

Quantum System Protection:
- No magnetic materials within 5m of QPU
- No radioactive materials forward of STA 40
```

### 7.2 Live Animals

**Compartment Requirements:**
- Forward compartment only (temperature controlled)
- Maximum 1,000 kg total
- Ventilation verification required
- Access for inspection

**Loading Procedures:**
1. Pre-condition compartment (20°C)
2. Load animals last
3. Secure containers with extra restraints
4. Verify ventilation airflow
5. Document loading time

### 7.3 Perishable Cargo

**Temperature Zones:**
| Compartment | Temperature Range | Cooling |
|-------------|------------------|---------|
| Forward | +2°C to +25°C | Active |
| Center | +10°C to +30°C | Passive |
| Aft | +15°C to +35°C | None |

**Special Handling:**
- Load refrigerated containers last
- Connect power within 5 minutes
- Monitor temperature continuously
- Priority offloading

### 7.4 High-Value Cargo

**Security Requirements:**
1. Dedicated container seals
2. QSM intrusion monitoring active
3. CCTV coverage verification
4. Dual-person loading verification
5. Electronic manifest tracking

**Preferred Locations:**
- Center compartment (maximum security)
- Direct QSM sensor coverage
- Away from bulk cargo areas

---

## 8. Safety Requirements

### 8.1 Personal Protective Equipment

**Standard PPE:**
- High-visibility vest (EN471 Class 3)
- Safety footwear (S3 rated)
- Cut-resistant gloves
- Hearing protection (>80 dB areas)

**Special Cargo PPE:**
- Chemical gloves (DG handling)
- Respiratory protection (toxic materials)
- Anti-static clothing (sensitive cargo)
- Thermal gloves (cold storage)

### 8.2 Equipment Safety

**Loader Operation:**
```
SAFETY ZONES DURING LOADING
                 
    ┌─────────────────────────┐
    │                         │
    │     DANGER ZONE        │  ← No personnel
    │      (2m radius)       │    during movement
    │         ┌───┐          │
    │         │PDL│          │  ← Operator position
    │         └───┘          │
    │                        │
    │    CAUTION ZONE       │  ← Spotters only
    │     (5m radius)       │
    └────────────────────────┘
```

**Safety Interlocks:**
- Door motion inhibit during loading
- Automatic stop on obstruction
- Emergency stop buttons (4 locations)
- Overload protection

### 8.3 Fire Safety

**Cargo Fire Suppression:**
- Halon 1301 system (all compartments)
- Smoke detection (dual loop)
- Temperature monitoring
- Remote discharge capability

**Emergency Procedures:**
1. Stop loading immediately
2. Remove ignition sources
3. Evacuate compartment
4. Alert fire services
5. Prepare for suppression discharge

### 8.4 BWB-Specific Safety

**Structural Protection:**
- No loading during jack operations
- Monitor QSM stress indicators
- Respect floor loading limits
- Avoid impact loads >2G

**Balance Safety:**
- Continuous CG monitoring
- Automatic alerts at 80% lateral limit
- Loading stops at 90% limit
- Supervisor override required >90%

---

## 9. Digital Load Monitoring

### 9.1 Quantum Structural Monitoring Integration

**Real-Time Displays:**
```
┌─────────────────────────────────────────┐
│        CARGO LOAD MONITOR - QSM         │
├─────────────────────────────────────────┤
│  Compartment Loads:                     │
│  FWD: ████░░░░░░ 1,250 kg (42%)       │
│  CTR: ████████░░ 4,000 kg (80%)       │
│  AFT: ██████░░░░ 2,400 kg (60%)       │
│                                         │
│  CG Position: 25.8% MAC [NORMAL]       │
│  Lateral Offset: +45 kg [NORMAL]       │
│                                         │
│  Floor Stress:                          │
│  Max: 85% at CTR-P2B                   │
│  [────────────●─────] 650 kg/m²        │
│                                         │
│  Alerts: None                           │
└─────────────────────────────────────────┘
```

### 9.2 Load Planning System

**Digital Integration:**
- RFID container tracking
- Automatic weight capture
- Real-time CG calculation
- Load plan optimization
- Digital documentation

**Data Flow:**
```
Container RFID → Scale System → Load Database
                                      ↓
Manifest Data → Planning System → QSM Display
                                      ↓
                               Final Load Report
```

### 9.3 Predictive Analytics

**QSM Capabilities:**
- Stress accumulation monitoring
- Fatigue life tracking
- Load distribution optimization
- Predictive maintenance alerts
- Historical trend analysis

### 9.4 Documentation System

**Electronic Load Sheet:**
- Automatic generation
- Digital signatures
- Blockchain verification
- Cloud backup
- Regulatory compliance

---

## 10. Quick Reference Guide

### 10.1 Loading Limits Summary

```
┌─────────────────────────────────────────┐
│        CARGO QUICK REFERENCE            │
├─────────────────┬───────────────────────┤
│ Compartment     │ Weight / Volume       │
├─────────────────┼───────────────────────┤
│ Forward         │ 3,000 kg / 25 m³     │
│ Center          │ 5,000 kg / 40 m³     │
│ Aft             │ 4,000 kg / 30 m³     │
│ TOTAL           │ 12,000 kg / 95 m³    │
├─────────────────┼───────────────────────┤
│ Floor Loading   │ 750-800 kg/m²        │
│ Single Item Max │ 2,000 kg             │
│ Lateral Limit   │ ±1,000 kg            │
│ CG Range        │ 18-35% MAC           │
└─────────────────┴───────────────────────┘
```

### 10.2 Container Quick Reference

| Container | Dimensions (cm) | Weight Limit | Compartments |
|-----------|----------------|--------------|--------------|
| LD3 | 156×153×163 | 1,588 kg | ALL |
| LD6 | 318×244×163 | 3,175 kg | CTR only |
| LD11 | 318×153×163 | 3,176 kg | CTR only |

### 10.3 Loading Sequence Checklist

```
STANDARD LOADING SEQUENCE
□ 1. Calculate weight and balance
□ 2. Position ground equipment
□ 3. Open cargo doors
□ 4. Inspect compartments
□ 5. Load CENTER compartment
□ 6. Load AFT compartment
□ 7. Load FORWARD compartment
□ 8. Verify restraints
□ 9. Check QSM readings
□ 10. Close doors and document
```

### 10.4 Emergency Contacts

| Function | Contact | Phone |
|----------|---------|-------|
| Load Control | Supervisor | +34-XXX-XXXX |
| QSM Support | Monitoring | +34-XXX-XXXX |
| DG Advisor | Safety | +34-XXX-XXXX |
| Fire Services | Emergency | 112 |
| Maintenance | Line Station | +34-XXX-XXXX |

---

**Document Control:**
- Next Review: 2026-06-15
- Authority: Manager - Cargo Operations
- Distribution: Load Masters, Ramp Personnel

**Related Documents:**
- Weight and Balance Manual (00-20-00)
- Ground Handling Manual (00-30-00)
- QSM Operations Guide (XX-90-00)

**END OF DOCUMENT**
