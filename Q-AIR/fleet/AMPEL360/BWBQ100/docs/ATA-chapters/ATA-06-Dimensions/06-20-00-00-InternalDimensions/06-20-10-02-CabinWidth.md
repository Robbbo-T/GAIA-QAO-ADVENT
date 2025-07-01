# ATA 06-20-10-02 Cabin Width - AMPEL360 BWB-Q100

```yaml
---
project: GAIA-QAO-AdVent
program: AMPEL360 BWB-Q100
ATA_chapter: 06-20-10-02
doc_id: GQOIS-QAIR-ATA-06201002-CABWID
version: 2.9.0
date: 2025-07-01
author: Amedeo Pelliccia
status: Final Draft
classification: GAIA-QAO Confidential
review_board: [Q-AIR-SAFETY, Q-CABIN-DESIGN, Q-STRUCT-ENG, Q-ERGONOMICS, Q-BWB-OPTIMIZATION]
info_code: CW-SPEC # Cabin Width Specification
enhancement_level: Lateral Dimension Analysis
quantum_verification: Transverse-Measurement-Verified
next_review_date: 2026-06-30
parent_document: GQOIS-QAIR-ATA-06201000-CABDIM
related_documents: 
  - GQOIS-QAIR-ATA-06201001-CABLEN
  - GQOIS-QAIR-ATA-06101001-ASCII-ENH
  - GQOIS-QAIR-ATA-05210000-BWB-STRUCTURE
---
```

<p align="center">
  <img src="https://img.shields.io/badge/Document_ID-GQOIS--QAIR--ATA--06201002--CABWID-0D9488?style=flat-square" />
  <img src="https://img.shields.io/badge/Aircraft-AMPEL360_BWB--Q100-673ab7?style=flat-square" />
  <img src="https://img.shields.io/badge/Chapter-ATA_06--20--10--02_Cabin_Width-blueviolet?style=flat-square" />
  <img src="https://img.shields.io/badge/Max_Width-18.288m_60ft-9c27b0?style=flat-square" />
  <img src="https://img.shields.io/badge/BWB_Optimized-Variable_Width-ff6b35?style=flat-square" />
</p>

---

## Document Overview

**Aircraft:** AMPEL360 BWB-Q100  
**Document Type:** Cabin Width Specification  
**ATA Chapter:** 06-20-10-02  
**Revision:** 2.9.0  
**Date:** 2025-07-01  

This document provides detailed lateral dimensional specifications for the passenger cabin of the AMPEL360 BWB-Q100, leveraging the unique variable-width advantages of the Blended Wing Body configuration. All measurements are quantum-verified for precision manufacturing and optimal passenger experience.

![image](https://github.com/user-attachments/assets/eeadbcc3-1fd2-47d3-9455-878b7337ddb5)


---

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [BWB Variable Width Profile](#2-bwb-variable-width-profile)
3. [Buttline Reference System](#3-buttline-reference-system)
4. [Seating Configuration Width Analysis](#4-seating-configuration-width-analysis)
5. [Aisle Width Specifications](#5-aisle-width-specifications)
6. [Cross-Sectional Dimensional Analysis](#6-cross-sectional-dimensional-analysis)
7. [Window and Sidewall Geometry](#7-window-and-sidewall-geometry)
8. [Service Area Width Allocations](#8-service-area-width-allocations)
9. [Emergency Egress Width Requirements](#9-emergency-egress-width-requirements)
10. [Manufacturing and Tolerance Specifications](#10-manufacturing-and-tolerance-specifications)

---

## 1. Executive Summary

### 1.1 Variable Width Advantage

The AMPEL360 BWB-Q100 revolutionary design maximizes passenger comfort through **variable cabin width** ranging from **12.192m to 18.288m**, providing unprecedented space efficiency and passenger experience optimization.

| **Parameter** | **Minimum** | **Maximum** | **Optimal Location** |
|---------------|-------------|-------------|---------------------|
| Cabin Interior Width | 12.192 m (40 ft 0 in) | 18.288 m (60 ft 0 in) | FS 35.052 (Max Width) |
| Passenger Area Width | 11.582 m (38 ft 0 in) | 17.678 m (58 ft 0 in) | Variable by zone |
| Usable Floor Width | 11.278 m (37 ft 0 in) | 17.374 m (57 ft 0 in) | Excluding sidewall taper |
| Effective Seat Width | 10.668 m (35 ft 0 in) | 16.764 m (55 ft 0 in) | Excluding aisles |

### 1.2 Width Distribution by Zone

```
Width Optimization by Passenger Class:
┌─────────────┬──────────────┬──────────────┬─────────────┐
│ First Class │ Business Cls │ Premium Econ │ Economy Cls │
│ 12.2-15.2m  │ 15.2-17.7m   │ 17.7-18.3m   │ 18.3-13.7m  │
│   Variable  │   Variable   │   Variable   │   Variable  │
└─────────────┴──────────────┴──────────────┴─────────────┘

Maximum Width Zone: FS 32.004 - FS 45.720 (Premium Economy/Forward Economy)
```

### 1.3 BWB Width Utilization Benefits

- **50% More Floor Area** compared to conventional single-aisle aircraft
- **Multiple Aisle Configurations** enabled by wide cabin cross-section
- **Enhanced Passenger Comfort** through increased personal space
- **Operational Efficiency** through optimized crew workflow paths

---

## 2. BWB Variable Width Profile

### 2.1 Width Variation by Fuselage Station

The BWB configuration provides a sophisticated width profile optimized for passenger comfort and structural efficiency.

#### 2.1.1 Master Width Profile
```
Cabin Width Variation (Interior Measurements):

FS 15.240 │ 12.192 m (40 ft 0 in) │ First Class Entry
FS 17.374 │ 13.106 m (43 ft 0 in) │ First Class Forward
FS 19.508 │ 14.020 m (46 ft 0 in) │ First Class Mid
FS 21.642 │ 14.935 m (49 ft 0 in) │ First Class Aft
FS 22.860 │ 15.240 m (50 ft 0 in) │ Business Class Entry
FS 25.908 │ 16.459 m (54 ft 0 in) │ Business Class Mid
FS 27.432 │ 16.764 m (55 ft 0 in) │ Business Class Maximum
FS 30.480 │ 17.374 m (57 ft 0 in) │ Business Class Exit
FS 32.004 │ 17.678 m (58 ft 0 in) │ Premium Economy Entry
FS 35.052 │ 18.288 m (60 ft 0 in) │ MAXIMUM CABIN WIDTH
FS 38.100 │ 18.288 m (60 ft 0 in) │ Maximum Width Zone
FS 41.148 │ 18.288 m (60 ft 0 in) │ Economy Class Entry
FS 45.720 │ 17.983 m (59 ft 0 in) │ Economy Forward
FS 50.292 │ 17.068 m (56 ft 0 in) │ Economy Mid
FS 55.169 │ 15.240 m (50 ft 0 in) │ Economy Aft
FS 58.520 │ 13.716 m (45 ft 0 in) │ Economy Exit
```

#### 2.1.2 Width Gradient Analysis
The BWB width change is gradual and optimized for passenger perception:

- **Maximum Rate of Change:** 0.305 m per 3.048 m (1 ft per 10 ft) longitudinal
- **Passenger Perception:** Imperceptible width changes during movement
- **Structural Efficiency:** Smooth load transfer through wing-body integration
- **Manufacturing Feasibility:** Gradual transitions enable efficient production

### 2.2 Cross-Sectional Geometry Evolution

#### 2.2.1 Forward Section (FS 15.240 - FS 25.908)
```
Forward Cabin Cross-Section Evolution:
Width Range: 12.192 m → 16.459 m
Taper Rate: 0.305 m/3.048 m (10% gradient)
Shape Factor: Elliptical transition to BWB profile
Passenger Impact: Intimate forward cabin atmosphere
```

#### 2.2.2 Maximum Width Section (FS 30.480 - FS 45.720)
```
Maximum Width Zone:
Width Range: 17.374 m → 18.288 m → 17.983 m
Stability Zone: FS 35.052 - FS 41.148 (constant maximum)
Shape Factor: Full BWB cross-section utilization
Passenger Impact: Spacious, open cabin environment
```

#### 2.2.3 Aft Section (FS 45.720 - FS 58.520)
```
Aft Cabin Cross-Section Transition:
Width Range: 17.983 m → 13.716 m
Taper Rate: 0.366 m/3.048 m (12% gradient)
Shape Factor: BWB transition to tail cone
Passenger Impact: Gradual transition, maintained comfort
```

---

## 3. Buttline Reference System

### 3.1 Master Buttline Grid

The AMPEL360 BWB-Q100 utilizes a comprehensive buttline system optimized for the variable-width BWB configuration.

#### 3.1.1 Primary Buttline Network
```
Critical Buttlines (Cabin Width References):

BL 0.000   │ Aircraft Centerline (Longitudinal Axis)
BL ±1.524  │ Inner Aisle Boundaries (First Class)
BL ±3.048  │ Seat Group Boundaries (Business Class)
BL ±4.572  │ Mid-Width Reference Lines
BL ±6.096  │ Standard Seat Track Positions
BL ±7.620  │ Wide-Body Reference Lines
BL ±9.144  │ Maximum Width Seat Positions
BL ±10.668 │ Window Line References (Maximum Width)
BL ±12.192 │ Sidewall Interface Lines
BL ±13.716 │ External Structure References
BL ±15.240 │ Wing Tip Integration Lines
```

#### 3.1.2 Variable Buttline Intersections
Due to the BWB's changing width, buttline intersections with cabin boundaries vary by fuselage station:

```
Buttline/Cabin Boundary Intersections:

At FS 15.240 (12.192 m width):
├─ Passenger Area: BL ±5.486 (18 ft from centerline)
├─ Window Line: BL ±5.791 (19 ft from centerline)  
└─ Sidewall: BL ±6.096 (20 ft from centerline)

At FS 35.052 (18.288 m width):
├─ Passenger Area: BL ±8.839 (29 ft from centerline)
├─ Window Line: BL ±9.144 (30 ft from centerline)
└─ Sidewall: BL ±9.144 (30 ft from centerline)

At FS 58.520 (13.716 m width):
├─ Passenger Area: BL ±6.553 (21.5 ft from centerline)
├─ Window Line: BL ±6.858 (22.5 ft from centerline)
└─ Sidewall: BL ±6.858 (22.5 ft from centerline)
```

### 3.2 Adaptive Reference System

#### 3.2.1 Seat Track Buttlines
Seat tracks are positioned relative to the local cabin width to maintain optimal passenger distribution:

**First Class Zone (12.192 - 15.240 m width):**
```
1-2-1 Configuration Buttlines:
BL -4.267: Single Seat (A) Track
BL -1.524: Double Seat (B) Track  
BL +1.524: Double Seat (C) Track
BL +4.267: Single Seat (D) Track
```

**Business Class Zone (15.240 - 17.678 m width):**
```
2-3-2 Configuration Buttlines:
BL -6.096: Double Seat (A,B) Tracks
BL -1.524: Triple Seat (C,D,E) Center Track
BL +1.524: Triple Seat (C,D,E) Center Track
BL +6.096: Double Seat (F,G) Tracks
```

**Premium Economy Zone (17.678 - 18.288 m width):**
```
2-4-2 Configuration Buttlines:
BL -7.315: Double Seat (A,B) Tracks
BL -2.438: Quad Seat (C,D,E,F) Tracks
BL +2.438: Quad Seat (C,D,E,F) Tracks
BL +7.315: Double Seat (G,H) Tracks
```

**Economy Class Zone (18.288 - 13.716 m width):**
```
3-4-3 Configuration Buttlines (Variable):
At Maximum Width (FS 35.052-41.148):
BL -8.229: Triple Seat (A,B,C) Tracks
BL -3.048: Quad Seat (D,E,F,G) Tracks  
BL +3.048: Quad Seat (D,E,F,G) Tracks
BL +8.229: Triple Seat (H,J,K) Tracks

At Reduced Width (FS 55.169):
BL -6.096: Triple Seat (A,B,C) Tracks
BL -1.524: Quad Seat (D,E,F,G) Tracks
BL +1.524: Quad Seat (D,E,F,G) Tracks
BL +6.096: Triple Seat (H,J,K) Tracks
```

---

## 4. Seating Configuration Width Analysis

### 4.1 First Class Width Optimization

#### 4.1.1 1-2-1 Configuration Details
**Total Width Requirement:** 10.363 m (34 ft 0 in) minimum
**Available Width Range:** 12.192 - 15.240 m (40 - 50 ft)
**Optimization Factor:** 18-47% additional space over minimum requirement

```
First Class Width Allocation:
┌─────────┬─────────┬─────────┬─────────┬─────────┐
│Port Aisle│  Seat A │Ctr Aisle│ Seats BC│Ctr Aisle│ Seat D │Stbd Aisle│
│ 0.610m  │ 0.559m  │ 0.914m  │1.118+gap│ 0.914m  │ 0.559m │ 0.610m   │
└─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴──────────┘
Total Core: 4.267 m + Variable center section + Variable margin space

At FS 15.240 (12.192 m cabin width):
├─ Core Seating: 10.363 m
├─ Lateral Comfort Space: 1.829 m (distributed)
└─ Personal Territory Enhancement: 15% over minimum

At FS 22.860 (15.240 m cabin width):  
├─ Core Seating: 10.363 m
├─ Lateral Comfort Space: 4.877 m (distributed)
└─ Personal Territory Enhancement: 47% over minimum
```

#### 4.1.2 First Class Personal Space Analysis
- **Seat Width:** 0.559 m (22 in) - Industry leading
- **Personal Envelope:** 4.67 m² floor area per passenger
- **Privacy Enhancement:** Variable center aisle width 0.914-1.219 m
- **Storage Integration:** Increased side storage due to width availability

### 4.2 Business Class Width Optimization

#### 4.2.1 2-3-2 Configuration Details
**Total Width Requirement:** 13.411 m (44 ft 0 in) minimum
**Available Width Range:** 15.240 - 17.678 m (50 - 58 ft)
**Optimization Factor:** 14-32% additional space over minimum requirement

```
Business Class Width Allocation:
┌─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┐
│Port Aisle│Seats AB │Mid Aisle│SeatsCDE │Mid Aisle│Seats FG │Stbd Aisle│
│ 0.559m  │ 1.066m  │ 0.559m  │ 1.599m  │ 0.559m  │ 1.066m  │ 0.559m  │
└─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┘
Total Core: 5.967 m + Variable center section + Variable margin space

At FS 22.860 (15.240 m cabin width):
├─ Core Seating: 13.411 m
├─ Lateral Comfort Space: 1.829 m (distributed)
└─ Space Enhancement: 14% over minimum

At FS 30.480 (17.374 m cabin width):
├─ Core Seating: 13.411 m  
├─ Lateral Comfort Space: 3.963 m (distributed)
└─ Space Enhancement: 30% over minimum
```

#### 4.2.2 Business Class Comfort Enhancements
- **Seat Width:** 0.533 m (21 in) with variable spacing
- **Aisle Access:** All passengers have direct aisle access or single-step access
- **Personal Territory:** 2.63 m² floor area per passenger
- **Social Spacing:** Enhanced center aisle width for passenger interaction

### 4.3 Premium Economy Width Optimization

#### 4.3.1 2-4-2 Configuration Details
**Total Width Requirement:** 15.240 m (50 ft 0 in) minimum
**Available Width Range:** 17.678 - 18.288 m (58 - 60 ft)
**Optimization Factor:** 16-20% additional space over minimum requirement

```
Premium Economy Width Allocation:
┌─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┐
│Port Aisle│Seats AB │Mid Aisle│SeatsCDEF│Mid Aisle│Seats GH │Stbd Aisle│
│ 0.508m  │ 0.966m  │ 0.508m  │ 1.932m  │ 0.508m  │ 0.966m  │ 0.508m  │
└─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┘
Total Core: 5.896 m + Variable center section + Variable margin space

At FS 32.004 (17.678 m cabin width):
├─ Core Seating: 15.240 m
├─ Lateral Comfort Space: 2.438 m (distributed)
└─ Space Enhancement: 16% over minimum

At FS 35.052 (18.288 m cabin width):
├─ Core Seating: 15.240 m
├─ Lateral Comfort Space: 3.048 m (distributed)  
└─ Space Enhancement: 20% over minimum
```

#### 4.3.2 Premium Economy Space Utilization
- **Seat Width:** 0.483 m (19 in) with enhanced legroom
- **Personal Territory:** 1.33 m² floor area per passenger
- **Center Section Comfort:** 4-abreast center section with individual armrests
- **Storage Enhancement:** Increased overhead bin capacity

### 4.4 Economy Class Width Optimization

#### 4.4.1 3-4-3 Configuration Details
**Total Width Requirement:** 15.545 m (51 ft 0 in) minimum
**Available Width Range:** 18.288 - 13.716 m (60 - 45 ft)
**Optimization Factor:** +18% to -12% variable by location

```
Economy Class Width Allocation (Variable):
┌─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┐
│Port Aisle│SeatsABC │Mid Aisle│SeatsDEFG│Mid Aisle│SeatsHJK │Stbd Aisle│
│ 0.457m  │ 1.296m  │ 0.457m  │ 1.728m  │ 0.457m  │ 1.296m  │ 0.457m  │
└─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┘

At Maximum Width FS 35.052-41.148 (18.288 m):
├─ Core Seating: 15.545 m  
├─ Lateral Comfort Space: 2.743 m (distributed)
└─ Space Enhancement: +18% over minimum

At Transition Zone FS 48.768 (17.068 m):
├─ Core Seating: 15.545 m
├─ Lateral Comfort Space: 1.523 m (distributed)
└─ Space Enhancement: +10% over minimum

At Reduced Width FS 55.169 (15.240 m):
├─ Core Seating: 15.240 m (compressed configuration)
├─ Lateral Comfort Space: 0 m
└─ Space Modification: -2% (still above industry standard)
```

#### 4.4.2 Economy Class Adaptive Configuration
- **Seat Width:** 0.432 m (17 in) standard, variable spacing
- **Adaptive Layout:** Seat spacing adjusts to available cabin width
- **Aisle Width Maintenance:** Minimum 0.457 m (18 in) preserved throughout
- **Personal Territory:** 1.05 m² average floor area per passenger

---

## 5. Aisle Width Specifications

### 5.1 Primary Aisle Network

#### 5.1.1 Longitudinal Aisle Widths
The BWB configuration enables multiple aisle configurations impossible in conventional aircraft:

```
Aisle Width by Cabin Zone:

First Class (4 Aisles):
├─ Port Window Aisle: 0.610 m (24 in)
├─ Port Center Aisle: 0.914 m (36 in) 
├─ Starboard Center Aisle: 0.914 m (36 in)
└─ Starboard Window Aisle: 0.610 m (24 in)
Total Aisle Width: 3.098 m (10 ft 2 in)

Business Class (3 Aisles):
├─ Port Main Aisle: 0.559 m (22 in)
├─ Center Main Aisle: 0.559 m (22 in)
└─ Starboard Main Aisle: 0.559 m (22 in)
Total Aisle Width: 1.677 m (5 ft 6 in)

Premium Economy (3 Aisles):
├─ Port Main Aisle: 0.508 m (20 in)
├─ Center Main Aisle: 0.508 m (20 in)
└─ Starboard Main Aisle: 0.508 m (20 in)
Total Aisle Width: 1.524 m (5 ft 0 in)

Economy Class (3 Aisles):
├─ Port Main Aisle: 0.457 m (18 in)
├─ Center Main Aisle: 0.457 m (18 in)
└─ Starboard Main Aisle: 0.457 m (18 in)
Total Aisle Width: 1.371 m (4 ft 6 in)
```

#### 5.1.2 Aisle Width Justification
- **Regulatory Minimum:** 0.457 m (18 in) per CS-25.815/FAR 25.815
- **BWB-Q100 Minimum:** 0.457 m (18 in) - Meets requirement
- **BWB-Q100 Maximum:** 0.914 m (36 in) - 100% above requirement
- **Safety Margin:** All aisles exceed regulatory minimums

### 5.2 Cross Aisle Connectivity

#### 5.2.1 Transverse Aisle Network
Cross aisles connect longitudinal aisles at service areas and emergency exits:

```
Cross Aisle Specifications:
Width: 0.305 m (12 in) minimum per CS-25.815
Clear Height: 2.032 m (80 in) minimum
Locations: 6 primary cross aisles

CA-1 (FS 18.288): Forward Main Door / First Class Service
├─ Width: 0.457 m (18 in)
├─ Connects: All 4 First Class aisles
└─ Function: Emergency egress + galley access

CA-2 (FS 22.860): First/Business Class Transition  
├─ Width: 0.406 m (16 in)
├─ Connects: First Class to Business Class aisles
└─ Function: Class transition + crew access

CA-3 (FS 32.004): Business/Premium Economy Transition
├─ Width: 0.406 m (16 in) 
├─ Connects: Business to Premium Economy aisles
└─ Function: Class transition + service access

CA-4 (FS 38.100): Mid-Cabin Service Complex
├─ Width: 0.559 m (22 in)
├─ Connects: All aisles at maximum width zone
└─ Function: Emergency egress + major service hub

CA-5 (FS 41.148): Premium Economy/Economy Transition
├─ Width: 0.457 m (18 in)
├─ Connects: Premium Economy to Economy aisles  
└─ Function: Class transition + crew access

CA-6 (FS 58.520): Aft Service Complex
├─ Width: 0.508 m (20 in)
├─ Connects: Economy aisles to service areas
└─ Function: Aft galley access + crew areas
```

### 5.3 Service Access Aisles

#### 5.3.1 Galley Service Corridors
Dedicated service aisles behind galley areas for crew efficiency:

- **Width:** 0.610 m (24 in) minimum
- **Height:** 1.981 m (78 in) minimum  
- **Surface:** Non-slip certified materials
- **Integration:** Direct access to all galley equipment

#### 5.3.2 Emergency Equipment Access
- **Width:** 0.457 m (18 in) minimum to all emergency equipment
- **Clearance:** Unobstructed access during normal and emergency operations
- **Marking:** Quantum-enhanced emergency lighting system

---

## 6. Cross-Sectional Dimensional Analysis

### 6.1 Cabin Cross-Section Geometry

#### 6.1.1 Maximum Width Cross-Section (FS 35.052)
```
Complete Cross-Section Analysis at Maximum Width:

Total External Width: 23.469 m (77 ft 0 in)
Structure Thickness: 2.591 m (8 ft 6 in) each side
Interior Cabin Width: 18.288 m (60 ft 0 in)

Interior Width Breakdown:
├─ Passenger Area: 17.678 m (58 ft 0 in)
├─ Port Sidewall: 0.305 m (12 in) 
└─ Starboard Sidewall: 0.305 m (12 in)

Passenger Area Distribution:
├─ Port Triple Seats: 1.296 m (4 ft 3 in)
├─ Port Aisle: 0.457 m (1 ft 6 in)
├─ Center Quad Seats: 1.728 m (5 ft 8 in)  
├─ Center Aisle: 0.457 m (1 ft 6 in)
├─ Starboard Quad Seats: 1.728 m (5 ft 8 in)
├─ Starboard Aisle: 0.457 m (1 ft 6 in)
├─ Starboard Triple Seats: 1.296 m (4 ft 3 in)
└─ Lateral Comfort Space: 10.259 m (33 ft 8 in) distributed
```

#### 6.1.2 Minimum Width Cross-Section (FS 15.240)
```
Forward Cabin Cross-Section Analysis:

Total External Width: 17.374 m (57 ft 0 in)
Structure Thickness: 2.591 m (8 ft 6 in) each side  
Interior Cabin Width: 12.192 m (40 ft 0 in)

Interior Width Breakdown:
├─ Passenger Area: 11.582 m (38 ft 0 in)
├─ Port Sidewall: 0.305 m (12 in)
└─ Starboard Sidewall: 0.305 m (12 in)

First Class 1-2-1 Distribution:
├─ Port Single Seat: 0.559 m (1 ft 10 in)
├─ Port Aisle: 0.610 m (2 ft 0 in)
├─ Center Double Seats: 1.118 m (3 ft 8 in)
├─ Center Aisle: 0.914 m (3 ft 0 in) 
├─ Center Double Seats: 1.118 m (3 ft 8 in)
├─ Starboard Aisle: 0.610 m (2 ft 0 in)
├─ Starboard Single Seat: 0.559 m (1 ft 10 in)
└─ Lateral Comfort Space: 6.094 m (20 ft 0 in) distributed
```

### 6.2 Height Variation Analysis

#### 6.2.1 Crown Height Distribution
The BWB cross-section provides exceptional height across the full width:

```
Height Profile Across Cabin Width:
BL 0.000 (Centerline): 2.743 m (9 ft 0 in)
BL ±1.524: 2.743 m (9 ft 0 in) - Full height zone
BL ±3.048: 2.692 m (8 ft 10 in) - Slight crown taper
BL ±4.572: 2.591 m (8 ft 6 in) - Comfortable standing
BL ±6.096: 2.438 m (8 ft 0 in) - Standard passenger height
BL ±7.620: 2.286 m (7 ft 6 in) - Seated comfort zone
BL ±9.144: 2.032 m (6 ft 8 in) - Minimum passenger area
```

#### 6.2.2 Effective Passenger Height
- **Standing Area:** BL ±6.096 zone (12.192 m wide minimum)
- **Seated Comfort:** BL ±9.144 zone (18.288 m wide maximum)
- **Service Access:** 2.032 m minimum throughout passenger area
- **Overhead Storage:** 0.559 m average clearance above heads

---

## 7. Window and Sidewall Geometry

### 7.1 Window Configuration by Width

#### 7.1.1 Window Spacing Adaptation
Window spacing adapts to the variable cabin width while maintaining passenger visual access:

```
Window Distribution by Cabin Zone:

Forward Cabin (12.192 - 15.240 m width):
├─ Windows per Side: 12 (First Class coverage)
├─ Window Spacing: 1.270 m (50 in) centerline to centerline
├─ Passengers per Window: 2 (optimal for First Class)
└─ Window Line: BL ±5.791 average

Mid Cabin (15.240 - 18.288 m width):
├─ Windows per Side: 36 (Business + Premium Economy)
├─ Window Spacing: 1.270 m (50 in) maintained
├─ Passengers per Window: 2.6 average
└─ Window Line: BL ±6.858 to BL ±9.144

Aft Cabin (18.288 - 13.716 m width):
├─ Windows per Side: 34 (Economy Class)
├─ Window Spacing: 1.270 m (50 in) maintained  
├─ Passengers per Window: 4.3 average
└─ Window Line: BL ±9.144 to BL ±6.858
```

#### 7.1.2 Window Sight Lines
- **Window Sill Height:** 1.067 m (42 in) above cabin floor
- **Window Size:** 0.406 × 0.508 m (16 × 20 in) external
- **Sight Line Optimization:** 95% of passengers have direct window view
- **BWB Advantage:** Wider cabin provides better window distribution

### 7.2 Sidewall Configuration

#### 7.2.1 Sidewall Angle Variation
The BWB sidewall profile varies with cabin width to optimize space:

```
Sidewall Geometry by Station:

Forward Section (Narrow Width):
├─ Sidewall Angle: 85° from vertical
├─ Window Line Angle: 82° from vertical
├─ Crown Transition: Gradual elliptical curve
└─ Space Efficiency: 92% of rectangular equivalent

Maximum Width Section:
├─ Sidewall Angle: 78° from vertical  
├─ Window Line Angle: 75° from vertical
├─ Crown Transition: Wide elliptical curve
└─ Space Efficiency: 89% of rectangular equivalent

Aft Section (Tapered Width):
├─ Sidewall Angle: 80° from vertical
├─ Window Line Angle: 77° from vertical
├─ Crown Transition: Gradual elliptical curve  
└─ Space Efficiency: 91% of rectangular equivalent
```

#### 7.2.2 Sidewall Interior Treatment
- **Panel Height:** 2.032 m (80 in) standard
- **Trim Integration:** Seamless integration with variable geometry
- **Storage Integration:** Sidewall storage optimized for each width zone
- **Safety Integration:** Emergency equipment accessible from all positions

---

## 8. Service Area Width Allocations

### 8.1 Galley Width Requirements

#### 8.1.1 Forward Galley Complex (First Class)
- **Available Width:** 12.192 - 15.240 m (variable by FS)
- **Galley Width Allocation:** 3.658 m (12 ft 0 in)
- **Remaining Passenger Width:** 8.534 - 11.582 m
- **Configuration:** Full-service galley with quantum food safety
- **Crew Circulation:** 0.610 m (24 in) service corridor

#### 8.1.2 Mid-Cabin Galley (Business/Premium Service)
- **Available Width:** 17.678 - 18.288 m (maximum width zone)
- **Galley Width Allocation:** 4.267 m (14 ft 0 in)
- **Remaining Passenger Width:** 13.411 - 14.021 m
- **Configuration:** Dual-side service galley
- **Crew Circulation:** 0.914 m (36 in) central service corridor

#### 8.1.3 Economy Service Galley
- **Available Width:** 17.068 - 15.240 m (variable by FS)
- **Galley Width Allocation:** 3.048 m (10 ft 0 in)
- **Remaining Passenger Width:** 14.020 - 12.192 m
- **Configuration:** High-efficiency service galley
- **Crew Circulation:** 0.508 m (20 in) service corridor

### 8.2 Lavatory Width Allocations

#### 8.2.1 Lavatory Complex Sizing
```
Lavatory Width Requirements by Zone:

Forward Complex (4 units):
├─ Individual Lavatory: 1.067 m (42 in) width
├─ Total Complex Width: 4.267 m (14 ft 0 in)
├─ Remaining Cabin Width: 7.925 - 10.973 m
└─ ADA Unit: 1.219 m (48 in) width

Mid-Cabin Complex (6 units):
├─ Individual Lavatory: 1.067 m (42 in) width  
├─ Total Complex Width: 6.401 m (21 ft 0 in)
├─ Remaining Cabin Width: 11.277 - 11.887 m
└─ ADA Units (2): 1.219 m (48 in) width each

Aft Complex (4 units):
├─ Individual Lavatory: 1.067 m (42 in) width
├─ Total Complex Width: 4.267 m (14 ft 0 in)  
├─ Remaining Cabin Width: 12.801 - 9.449 m
└─ ADA Unit: 1.219 m (48 in) width
```

### 8.3 Emergency Equipment Width Impact

#### 8.3.1 Emergency Slide Storage
- **Storage Width per Door:** 0.610 m (24 in)
- **Door Quantity:** 8 main doors
- **Total Width Impact:** 4.877 m distributed
- **Cabin Width Reduction:** <2% impact on usable width

#### 8.3.2 Life Raft Storage
- **Ceiling Storage Width:** 0.305 m (12 in) strips along sidewalls
- **Total Raft Quantity:** 16 rafts (25-person capacity each)
- **Width Impact:** Minimal due to ceiling integration
- **Cabin Access:** No reduction in usable cabin width

---

## 9. Emergency Egress Width Requirements

### 9.1 Emergency Exit Width Compliance

#### 9.1.1 Type A Door Requirements (CS-25.807/FAR 25.807)
**Regulatory Requirement:** 0.813 m (32 in) clear width minimum
**BWB-Q100 Provision:** 0.813 m (32 in) clear width
**Compliance Status:** Meets requirement exactly

```
Type A Door Width Analysis:
Door Frame Width: 0.914 m (36 in)
Door Leaf Thickness: 0.051 m (2 in)  
Clear Opening Width: 0.813 m (32 in)
Side Clearance: 0.025 m (1 in) each side
Compliance Margin: 0% (exact compliance)
```

#### 9.1.2 Type III Exit Requirements
**Regulatory Requirement:** 0.508 m (20 in) clear width minimum
**BWB-Q100 Provision:** 0.508 m (20 in) clear width
**Compliance Status:** Meets requirement exactly

### 9.2 Evacuation Route Width Analysis

#### 9.2.1 Passenger Flow Analysis
Emergency evacuation flow optimized for BWB variable width:

```
Flow Rate Analysis by Width Zone:

Maximum Width Zone (FS 35.052-41.148):
├─ Available Evacuation Width: 17.678 m
├─ Passengers: 164 (84 Premium Economy + 80 Economy)
├─ Flow Density: 9.3 passengers per meter width
└─ Evacuation Advantage: 40% faster than conventional

Minimum Width Zone (FS 15.240-22.860):
├─ Available Evacuation Width: 11.582 m  
├─ Passengers: 24 (First Class only)
├─ Flow Density: 2.1 passengers per meter width
└─ Evacuation Advantage: 80% faster than conventional

Variable Width Zones:
├─ Gradual width change prevents bottlenecks
├─ Multiple evacuation routes available
├─ Cross-aisle connections provide alternatives
└─ Overall evacuation time: 75 seconds target
```

#### 9.2.2 Width-Related Safety Advantages
- **Multiple Egress Paths:** Wide cabin enables redundant evacuation routes
- **Reduced Bottlenecks:** Variable width prevents passenger concentration
- **Enhanced Safety Margin:** 16.7% faster evacuation than required
- **Crew Access:** Wide aisles enable rapid crew emergency response

---

## 10. Manufacturing and Tolerance Specifications

### 10.1 Width Measurement Standards

#### 10.1.1 Measurement Protocol
- **Primary Method:** Quantum-enhanced coordinate measurement
- **Accuracy:** ±0.1 mm for critical width dimensions
- **Reference Temperature:** 20°C (68°F) standard conditions
- **Calibration Frequency:** Daily verification of measurement systems

#### 10.1.2 Width Tolerance Classifications
```
Width Tolerance Hierarchy:

Class A (Critical Safety): ±0.1 mm
├─ Emergency exit clear widths
├─ Aisle widths (regulatory compliance)
├─ Structural interface widths
└─ Pressure boundary dimensions

Class B (Important Functional): ±0.5 mm
├─ Seat track positioning widths
├─ Service area boundaries
├─ Equipment mounting positions
└─ Cross-aisle connections

Class C (Standard Interior): ±1.0 mm
├─ Interior panel interfaces
├─ Trim and finish elements
├─ Non-critical storage areas
└─ Decorative elements

Class D (General): ±2.0 mm
├─ Non-structural elements
├─ Comfort features
├─ Variable spacing elements
└─ Aesthetic treatments
```

### 10.2 BWB-Specific Manufacturing Challenges

#### 10.2.1 Variable Width Production
The BWB variable width requires specialized manufacturing approaches:

```
Manufacturing Complexity by Width Zone:

Constant Width Zones (Easier):
├─ FS 35.052 - FS 41.148: Maximum width maintained
├─ Standard tooling applicable
├─ Conventional assembly techniques
└─ Quality control simplified

Variable Width Zones (Complex):
├─ FS 15.240 - FS 35.052: Expanding width
├─ FS 41.148 - FS 58.520: Contracting width  
├─ Adaptive tooling required
├─ Progressive assembly techniques
└─ Enhanced quality control needed
```

#### 10.2.2 Quality Control Adaptations
- **Adaptive Templates:** Variable width templates for each fuselage station
- **Progressive Verification:** Width verification at 0.610 m (24 in) intervals
- **Digital Twin Integration:** Real-time comparison with CAD models
- **Statistical Process Control:** Width variation trend analysis

### 10.3 Assembly Sequence Considerations

#### 10.3.1 Width-Critical Assembly Steps
```
Critical Width Control Points:

Step 1 - Structure Assembly:
├─ Fuselage frame positioning: ±0.1 mm width control
├─ Wing integration: ±0.1 mm width alignment  
├─ Pressure vessel forming: ±0.1 mm width verification
└─ Major structure completion

Step 2 - Systems Installation:
├─ Seat track installation: ±0.5 mm width positioning
├─ Emergency door frame installation: ±0.1 mm width
├─ Service area framework: ±0.5 mm width control
└─ Systems integration verification

Step 3 - Interior Installation:
├─ Aisle width verification: ±0.5 mm confirmation
├─ Seat installation: Width compliance verification
├─ Service area completion: Width functionality testing
└─ Emergency egress width verification

Step 4 - Final Verification:
├─ Complete width audit: All zones verified
├─ Passenger flow testing: Width adequacy confirmed
├─ Emergency evacuation simulation: Width performance
└─ Certification compliance: Width documentation
```

---

## 11. Certification and Regulatory Compliance

### 11.1 Width-Related Regulatory Requirements

#### 11.1.1 CS-25/FAR 25.815 - Aisle Width Compliance
**Minimum Aisle Width:** 0.457 m (18 in)
**BWB-Q100 Minimum:** 0.457 m (18 in) - Economy class aisles
**BWB-Q100 Maximum:** 0.914 m (36 in) - First class center aisles
**Compliance Status:** Full compliance with 100% margin in premium areas

#### 11.1.2 Emergency Egress Width Requirements
**Type A Door Clear Width:** 0.813 m (32 in) minimum
**Type III Exit Clear Width:** 0.508 m (20 in) minimum
**BWB-Q100 Achievement:** Exact compliance for all exit types
**Safety Margin:** Enhanced by multiple wide evacuation routes

### 11.2 Accessibility Compliance

#### 11.2.1 ADA Width Requirements (14 CFR Part 382)
**Wheelchair Accessible Route:** 0.813 m (32 in) minimum
**BWB-Q100 Provision:** 0.914 m (36 in) minimum throughout
**Maneuvering Space:** 1.524 × 1.524 m (60 × 60 in) required
**BWB-Q100 Achievement:** Exceeded in all accessible areas

#### 11.2.2 Universal Design Benefits
- **Wide Aisles:** Enhanced mobility for all passengers
- **Multiple Routes:** Alternative paths for accessibility
- **Reduced Congestion:** Wide cabin reduces passenger conflicts
- **Service Access:** Enhanced crew access to assist passengers

---

## 12. Related Documents and References

### 12.1 GAIA-QAO Technical References
- **GQOIS-QAIR-ATA-06201000-CABDIM:** Parent Cabin Dimensions Document
- **GQOIS-QAIR-ATA-06201001-CABLEN:** Cabin Length Specification
- **GQOIS-QAIR-ATA-06101001-ASCII-ENH:** Enhanced General Arrangement
- **GQOIS-QAIR-ATA-05210000-BWB-STRUCTURE:** BWB Structural Design

### 12.2 Certification References
- **CS-25.815:** Width of aisle
- **CS-25.807:** Emergency exits
- **CS-25.785:** Seats, berths, safety belts, and harnesses
- **14 CFR Part 382:** Nondiscrimination on the basis of disability

### 12.3 Industry Standards
- **IATA Resolution 791:** Passenger seat dimensions
- **SAE ARP4102:** Aircraft passenger seat track
- **ISO 9001:** Quality management systems
- **ASTM F3342:** Digital data acquisition standards

---

## Document Control

**Revision History:**
- **v2.9.0:** Enhanced BWB width optimization analysis, quantum measurement integration
- **v2.8.0:** Added variable width manufacturing considerations
- **v2.7.0:** Updated emergency egress width analysis
- **v2.6.0:** Enhanced accessibility compliance documentation
- **v2.5.0:** Initial release for certification review

**Document Owner:** GAIA-QAO Engineering - BWB Design & Cabin Layout  
**Review Authority:** Cabin Design Review Board  
**Distribution:** Engineering Teams, Manufacturing, Certification Authorities

**Next Review Date:** 2026-06-30

---

**End of Document - ATA 06-20-10-02 Cabin Width**

*This document contains proprietary and confidential information of GAIA-QAO. Distribution is restricted to authorized personnel only.*
