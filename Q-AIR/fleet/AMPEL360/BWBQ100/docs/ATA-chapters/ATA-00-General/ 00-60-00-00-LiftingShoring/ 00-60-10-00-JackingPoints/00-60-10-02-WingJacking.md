# AMPEL360 BWB-Q100 - 00-60-10-02 Main (Wing) Jacking Points - Procedures

## Document Header & Identification

**Document Type:** Technical Manual - Critical Maintenance Procedure  
**ATA Chapter:** 00-60-10-02  
**Aircraft Model:** AMPEL360 BWB-Q100 (AS-M-PAX-BW-Q1H)  
**System:** Main (Wing) Jacking Points (MJP-L, MJP-R)  
**Version:** 2.0.0  
**Date:** 2025-07-26  
**Classification:** GAIA-QAO Technical Documentation - RESTRICTED  

**GQOIS Identifier:** `AS-M-PAX-BW-Q1H-JACK-PTS-WING-V2R0`  
**INFOCODE:** `GAIA-QAO-TM-00601002-V2R0-20250726`  
**DIKE Reference:** `DIKE-JACK-PTS-WING-PROC-002`  

---

## Table of Contents

1. [General Information & Criticality](#1-general-information--criticality)
2. [Mandatory Safety Protocols](#2-mandatory-safety-protocols)
3. [Required Resources](#3-required-resources)
4. [Pre-Operation Phase](#4-pre-operation-phase)
5. [Execution Phase: Step-by-Step Lifting Procedure](#5-execution-phase-step-by-step-lifting-procedure)
    - [5.1 Task 1: GSE Staging and System Integration](#51-task-1-gse-staging-and-system-integration)
    - [5.2 Task 2: Adapter Installation and QSM Verification](#52-task-2-adapter-installation-and-qsm-verification)
    - [5.3 Task 3: Initial Load Application (Structural Take-up)](#53-task-3-initial-load-application-structural-take-up)
    - [5.4 Task 4: Main Lift to Target Height](#54-task-4-main-lift-to-target-height)
    - [5.5 Task 5: Securing the Aircraft at Height](#55-task-5-securing-the-aircraft-at-height)
6. [Execution Phase: Step-by-Step Lowering Procedure](#6-execution-phase-step-by-step-lowering-procedure)
    - [6.1 Task 6: Preparation for Lowering](#61-task-6-preparation-for-lowering)
    - [6.2 Task 7: Synchronized Lowering](#62-task-7-synchronized-lowering)
7. [Post-Operation Phase](#7-post-operation-phase)
8. [Emergency Procedures (Wing-Lift Specific)](#8-emergency-procedures-wing-lift-specific)
9. [Quality Assurance and Digital Record Finalization](#9-quality-assurance-and-digital-record-finalization)

---

## 1. General Information & Criticality

### 1.1 Scope
This document details the complete, unabridged procedure for lifting the AMPEL360 BWB-Q100 airframe using the two Main Jacking Points (MJP-L and MJP-R). This procedure is classified as a **Critical Lift** due to the extreme loads and the catastrophic potential of procedural error.

### 1.2 Mandatory Prerequisites
- All general principles from [`00-60-00-00`: Lifting and Shoring - Overview](#) are in effect.
- All jacking point preparations from [`00-60-10-00`: Jacking Points - General](#) are mandatory.
- Successful completion of this procedure requires prior, documented experience with nose and aft jacking operations (`00-60-10-01` and `00-60-10-03`).

### 1.3 Structural Context: The Main Wing Box Lift
Lifting at MJP-L and MJP-R places the entire weight of the aircraft (minus landing gear) directly onto the main structural wing box. The immense span between these points (28 meters) creates a significant lever arm. Any differential in height or load between the two jacks will induce severe torsional (twisting) stress across the primary structure. This operation is not merely lifting; it is a live, precision-controlled structural load test. **The QSM system is the primary safety device.**

---

## 2. Mandatory Safety Protocols

**⚠️ CRITICAL WARNING: THIS IS THE HIGHEST-RISK LIFTING OPERATION FOR THIS AIRCRAFT. THE LOADS ARE EXTREME AND THE STRUCTURAL CONSEQUENCES OF AN ERROR ARE CATASTROPHIC. THERE IS NO MARGIN FOR PROCEDURAL DEVIATION.**

**🚨 WING-SPECIFIC TORSIONAL WARNING: A SYNCHRONIZATION FAILURE BETWEEN THE MJP-L AND MJP-R JACKS OF MORE THAN ±1 MM CAN INDUCE DAMAGING TORSIONAL STRESS. THE QSM AND CJC AUTOMATED SAFETY HALTS FOR SYNC FAILURE (SY-901) AND TORSIONAL STRESS (LD-601) MUST NOT BE OVERRIDDEN WITHOUT DIRECT, REAL-TIME AUTHORIZATION FROM THE GAIA-QAO STRUCTURAL ENGINEERING RESPONSE TEAM.**

- **Stability Quadrilateral:** The nose (NJP-1) and aft (AJP-1) jacks **MUST** be used in "Follower Mode" to create a stable four-point quadrilateral base. They are not passive; they actively maintain the aircraft's pitch attitude.
- **Controlled Environment:** This operation must be performed in a certified hangar with doors closed. Ambient temperature must be stable (±2°C change over 4 hours). Wind speed must be 0 knots.
- **Exclusion Zone:** A 20-meter hard exclusion zone must be established and maintained. Only the four essential personnel are permitted inside this zone during the lift.

---

## 3. Required Resources

### 3.1 Personnel (Minimum Team)
| Role | Certification Level | Qty | Primary Responsibility |
|---|---|:---:|---|
| Lead Technician | Level III+ (BWB Critical Lift) | 1 | Overall command, final authority for go/no-go decisions. |
| QSM Operator | QSM Level II (BWB Certified) | 1 | Dedicated monitoring of QIT, announcing all system alerts. |
| GSE Operator | Heavy Lift (CJC Certified) | 1 | Operation of the Central Jack Controller and physical jacks. |
| Safety Officer | BWB Ground Ops Supervisor | 2 | One per MJP, monitoring physical state, safety protocols, and team communication. |

### 3.2 Ground Support Equipment (GSE)
| Equipment | P/N | Qty |
|---|---|:---:|
| Main Jacks (150-ton) | GAIA-GSE-J150Q | 2 |
| Main Jack Adapters (150-ton) | GAIA-GSE-A150Q-MP | 2 |
| Stabilizer Jack, Nose (50-ton) | GAIA-GSE-J50Q | 1 |
| Stabilizer Jack, Aft (75-ton) | GAIA-GSE-J75Q | 1 |
| Central Jack Controller | GAIA-GSE-JCC-Q | 1 |
| Quantum Interface Terminal | QIT-MAINT-01 | 1 |
| Emergency Shores (100-ton) | GAIA-GSE-S100 | 2 |

---

## 4. Pre-Operation Phase

### 4.1 Aircraft Configuration Verification
- **[ACTION]** Perform all aircraft preparation steps (defueling, system configuration, etc.) as detailed in Section 3 of `00-60-00-00`.
- **[ACTION]** Use the Quantum Weight and Balance (QWB) system to generate the `Critical Lift CG Report`.
- **[CHECK]** Verify the calculated CG is within the "Full Lift" envelope (typically 24.5% - 26.5% MAC). Record the precise CG value.
    ```yaml
    QWB_Critical_Lift_Report:
      Timestamp: "2025-07-26T08:30:15Z"
      Aircraft_Weight_kg: 185540
      Calculated_CG_MAC: "25.8%"
      Status: "WITHIN_ENVELOPE - GO"
    ```

### 4.2 Jacking Point Comprehensive Inspection
- **[ACTION]** Perform a full, documented inspection of MJP-L, MJP-R, NJP-1, and AJP-1 using Form `GAIA-QAO-F-0060-02`.
- **[QA CHECK]** The Lead Technician must physically sign off on the inspection forms for all four points. These forms are scanned and attached to the digital work order.

### 4.3 QSM System Configuration
- **[ACTION]** Connect the QIT and initialize the QSM in "Maintenance Lift Mode".
- **[ACTION]** On the QIT, select the lifting profile `LIFT-PROFILE-BWB-FULL-01`.
- **[CHECK]** Verify the profile loads the correct safety parameters, including the ±1 mm MJP synchronization limit and the torsional strain limit of 0.05%.

---

## 5. Execution Phase: Step-by-Step Lifting Procedure

### 5.1 Task 1: GSE Staging and System Integration
1.  **[ACTION]** Position the two 150-ton jacks under MJP-L and MJP-R. Position the stabilizer jacks under NJP-1 and AJP-1.
2.  **[CHECK]** Use laser alignment tools to ensure each jack is positioned with less than 5 mm horizontal error from the jacking point center.
3.  **[ACTION]** Connect all four jacks to the Central Jack Controller (CJC) via their hydraulic and QSM data lines.
4.  **[ACTION]** Power on the CJC. Select the `LIFT-PROFILE-BWB-FULL-01` profile.
5.  **[CHECK]** On the CJC display, confirm all four jacks are identified, online, and correctly designated: MJP-L/R as `PRIMARY`, NJP-1/AJP-1 as `FOLLOWER`.

### 5.2 Task 2: Adapter Installation and QSM Verification
1.  **[ACTION]** Following the procedure in `00-60-10-00`, install the correct adapters on all four jacks.
2.  **[ACTION]** Raise each jack individually to seat its adapter and connect the QSM pigtail to the aircraft.
3.  **[QSM]** For **each of the four points**, the QSM Operator must initiate and verify a `Point Health Check` on the QIT.
    ```yaml
    # Example QIT output for MJP-L
    QSM_Health_Check_Result:
      Point_ID: "MJP-L"
      Overall_Status: "HEALTH_CHECK_PASSED"
      Confidence_Factor: "99.8%"
      Authorization: "READY_FOR_LOAD"
    ```
4.  **[QA HOLD POINT 1]** The Lead Technician must formally declare "HOLD POINT ONE COMPLETE. ALL FOUR POINTS ARE VERIFIED AND READY FOR LOAD." This must be recorded in the voice log.

### 5.3 Task 3: Initial Load Application (Structural Take-up)
1.  **[ACTION]** The GSE Operator announces "PREPARING FOR INITIAL LOAD." and initiates the sequence on the CJC.
2.  **[ACTION]** The CJC raises all four jacks to apply a balanced take-up load: **5000 kg (±50 kg)** on each of MJP-L and MJP-R, and **500 kg (±20 kg)** on NJP-1 and AJP-1.
3.  **[QSM]** The QSM system enters "Load Verification Mode." The QSM Operator focuses on the `Load Balance Differential (MJP-L vs MJP-R)` and `Torsional Strain` displays.
4.  **[CHECK]** The QSM operator must announce the results. The values must be within the specified limits.
    ```yaml
    # Example QIT output for Take-up Verification
    QSM_Load_Verification:
      Status: "STABLE_LOAD_VERIFIED"
      MJP_L_Load_kg: 5015
      MJP_R_Load_kg: 4995
      Load_Balance_Differential: "0.40%" # LIMIT: < 1.0%
      Torsional_Strain_Percent: "0.018%" # LIMIT: < 0.05%
    ```
5.  **[QA HOLD POINT 2]** The operation is paused. This is the most critical GO/NO-GO decision point. The Lead Technician must receive verbal confirmation of "PASS" from both the QSM Operator and GSE Operator before proceeding.

### 5.4 Task 4: Main Lift to Target Height
1.  **[ACTION]** Enter the target height (e.g., "Raise Aircraft 120 cm") into the CJC.
2.  **[ACTION]** The Lead Technician announces "CLEAR TO LIFT." The GSE Operator initiates the "Synchronized Lift" sequence.
3.  **[ACTION]** The CJC raises the MJP jacks at a rate of **1.0 cm/min**. The NJP and AJP jacks follow, maintaining the aircraft's pitch attitude.
4.  **[QSM]** **(QSM Operator)** Announce the Torsional Strain percentage every 10 cm of vertical lift. Example: "LIFT AT 30 CM, TORSION 0.025 PERCENT, NOMINAL."
5.  **[GSE]** **(GSE Operator)** Announce the MJP-L/R height synchronization deviation every 10 cm. Example: "LIFT AT 40 CM, SYNC DEVIATION ZERO-POINT-FIVE MILLIMETERS, NOMINAL."
6.  **[SAFETY]** **(Safety Officers)** Continuously scan their assigned MJP and surrounding structure for any physical anomalies.
7.  **[HALT]** The CJC will perform a smooth, automated stop once the target height is reached.

### 5.5 Task 5: Securing the Aircraft at Height
1.  **[ACTION]** Announce "AIRCRAFT AT TARGET HEIGHT. PREPARING TO SECURE."
2.  **[ACTION]** Engage the mechanical safety collars on all four jacks, starting with MJP-L and MJP-R. Use a torque wrench to tighten to the specified value.
3.  **[CHECK]** The Lead Technician and both Safety Officers must physically verify that all four collars are fully engaged and secure.
4.  **[ACTION]** The GSE Operator initiates the "Seat on Collars" sequence. The CJC lowers the hydraulic pressure by 5%, transferring the load to the mechanical collars.
5.  **[QSM]** The QSM Operator must confirm that the stress redistribution is stable and even.
6.  **[ACTION]** Place the QSM system into "Long-Term Static Monitoring Mode."
7.  **[LOG]** The Lead Technician declares the aircraft is "SECURED AT HEIGHT" and logs the time.

---

## 6. Execution Phase: Step-by-Step Lowering Procedure

### 6.1 Task 6: Preparation for Lowering
1.  **[ACTION]** Clear all personnel, tools, and equipment from under the aircraft.
2.  **[ACTION]** Conduct a pre-lowering safety briefing.
3.  **[QSM]** Activate the QSM system from "Static Monitoring" back to "Maintenance Lift Mode."
4.  **[ACTION]** The GSE Operator initiates the "Load to Hydraulics" sequence. The CJC raises the jacks by ~2mm to take the load off the safety collars.

### 6.2 Task 7: Synchronized Lowering
1.  **[ACTION]** Fully disengage and retract the mechanical safety collars from all four jacks. The Lead Technician must physically verify all are clear.
2.  **[ACTION]** The Lead Technician announces "COLLARS CLEAR. CLEAR TO LOWER." The GSE Operator initiates the "Synchronized Lower" sequence.
3.  **[ACTION]** The CJC lowers the aircraft at a controlled rate of **1.5 cm/min**.
4.  **[QSM]** The QSM Operator monitors the unloading stress patterns, announcing any torsional strain anomalies.
5.  **[HALT]** The system will automatically stop when the QSM and landing gear strut sensors confirm weight-on-wheels and all jack load cells read below 50 kg.

---

## 7. Post-Operation Phase
1.  **[ACTION]** Fully lower and retract all four jacks clear of the aircraft.
2.  **[ACTION]** Remove adapters and immediately install QSM port protective covers.
3.  **[ACTION]** Perform a detailed post-lift inspection of MJP-L and MJP-R as per `00-60-10-00`.
4.  **[QSM]** Initiate a "Post-Lift Structural Health Scan" from the QIT. This 5-minute diagnostic checks for any residual stress or micro-damage. This scan result **MUST** be "PASS" before the aircraft can be released.
5.  **[ACTION]** Stow all GSE according to standard hangar procedures.

---

## 8. Emergency Procedures (Wing-Lift Specific)
- **Synchronization Failure (SY-901):** Level 3 Emergency. QSM halts the lift. The priority is to prevent torsion. If one jack is high, the procedure is to attempt an extremely slow, controlled lowering of only the high jack by 1 mm increments, with constant QSM feedback. If this is not possible, deploy emergency shoring.
- **Torsional Load Alert (LD-601):** Level 3 Emergency. System halts. The cause must be identified (e.g., uneven floor settling, jack sync issue). The aircraft must not be moved until the cause is rectified or the GAIA-QAO Structural Emergency Response Team authorizes a specific recovery plan.
- **Hydraulic Failure at one MJP:** Level 3 Emergency. The other jacks will hold the aircraft stable. **IMMEDIATELY** deploy emergency shoring under the structural hard point nearest the failed jack before attempting any other action.

---

## 9. Quality Assurance and Digital Record Finalization
1.  **[ACTION]** The Lead Technician completes and digitally signs the Main Jacking Operation Log (Form `GAIA-QAO-F-0060-04`).
2.  **[QSM]** The QSM Operator downloads the complete QSM data log, including the take-up verification, main lift monitoring, and post-lift health scan reports. This data package is encrypted and attached to the aircraft's DIKE.
3.  **[QA CHECK]** The final QA verification must include a review of the synchronization and torsional strain data. Any alert, even if resolved, must be flagged for review in the aircraft's continuous safety monitoring program.
4.  **[LOG]** The usage cycle for points MJP-L and MJP-R is incremented by one in the aircraft's maintenance database.

---
## Document Control and Change History

**Change Record:**
| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | 2025-07-25 | A. Pelliccia | Initial release of the main wing jacking procedure. |
| 2.0.0 | 2025-07-26 | A. Pelliccia | Comprehensive revision to add granular detail, data-rich examples, and enhanced QA/QSM protocols per user feedback. |

**Next Review Date:** 2026-07-26

---

**End of Document**
