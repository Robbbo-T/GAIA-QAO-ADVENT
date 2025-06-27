# AMPEL360 BWB-Q100 - 00-60-10-00-01 Complete Aircraft Jacking Procedure

## Document Header & Identification

**Document Type:** Technical Manual - Master Critical Procedure  
**ATA Chapter:** 00-60-10-00-01  
**Aircraft Model:** AMPEL360 BWB-Q100 (AS-M-PAX-BW-Q1H)  
**System:** Complete Aircraft Jacking (All Points)  
**Criticality Level:** 5+ (Extreme - Combined Risk)  
**Version:** 1.0.0 (Definitive Master Release)  
**Date:** 2025-08-05  
**Classification:** GAIA-QAO Technical Documentation - **RESTRICTED - MASTER CRITICAL LIFT**  

**GQOIS Identifier:** `AS-M-PAX-BW-Q1H-JACK-MASTER-PROC-V1R0`  
**INFOCODE:** `GAIA-QAO-TM-0060100001-V1R0-20250805`  
**DIKE Reference:** `DIKE-JACK-MASTER-PROC-001`  

---

## Table of Contents

1.  [Criticality & Scope](#1-criticality--scope)
2.  [Mandatory Operational Controls](#2-mandatory-operational-controls)
3.  [Required Resources](#3-required-resources)
4.  [Phase 1: Planning & Digital Lift Twin (DLT) Generation (T-48h)](#4-phase-1-planning--digital-lift-twin-dlt-generation-t-48h)
5.  [Phase 2: Preparation & Staging (T-8h to T-1h)](#5-phase-2-preparation--staging-t-8h-to-t-1h)
6.  [Phase 3: Final Authorization & Pre-Lift Briefing (T-1h to T-0)](#6-phase-3-final-authorization--pre-lift-briefing-t-1h-to-t-0)
7.  [Phase 4: Execution - The 7 Stages of a Full Aircraft Lift](#7-phase-4-execution---the-7-stages-of-a-full-aircraft-lift)
    - [Stage 1: GSE Integration & QSM Health Checks](#stage-1-gse-integration--qsm-health-checks)
    - [Stage 2: Initial Load Application (Take-up)](#stage-2-initial-load-application-take-up)
    - [Stage 3: Main Lift (MJP Primary)](#stage-3-main-lift-mjp-primary)
    - [Stage 4: Aircraft Leveling at Height](#stage-4-aircraft-leveling-at-height)
    - [Stage 5: Securing on Mechanical Collars](#stage-5-securing-on-mechanical-collars)
    - [Stage 6: Synchronized Lowering](#stage-6-synchronized-lowering)
    - [Stage 7: Final Load-Off & GSE Removal](#stage-7-final-load-off--gse-removal)
8.  [Phase 5: Post-Operation & Aircraft Release](#8-phase-5-post-operation--aircraft-release)
9.  [Emergency Master Scenarios & Contingencies](#9-emergency-master-scenarios--contingencies)
10. [Quality Assurance & Master DIKE Record Finalization](#10-quality-assurance--master-dike-record-finalization)

---

## 1. Criticality & Scope

### 1.1 Scope
This document provides the single, authoritative, end-to-end procedure for lifting the entire AMPEL360 BWB-Q100 aircraft clear of the ground using the primary jacking point quadrilateral: **NJP-1, AJP-1, MJP-L, and MJP-R**. This is the most complex and highest-risk maintenance procedure performed outside of a D-check facility.

### 1.2 Document Relationship
This Master Procedure supersedes individual procedures when a full aircraft lift is required. It integrates the core principles and risks of:
- [`00-60-00-00`: Lifting and Shoring - Overview](#)
- [`00-60-10-00`: Jacking Points - General](#)
- [`00-60-10-01`: Nose Jacking Points - Procedures](#)
- [`00-60-10-02`: Main (Wing) Jacking Points - Procedures](#)
- [`00-60-10-03`: Aft Jacking Points - Procedures](#)

### 1.3 Combined Risk Profile
This operation combines all risks of the sub-procedures. The primary risk remains **torsional overload** between the main jacking points, compounded by the risk of **pitch instability** if the fore/aft jacks are not perfectly synchronized with the main lift.
- **Criticality:** Level 5+ (Combined Extreme Risk)
- **Primary Failure Mode:** Torsional shear of the main wing box.
- **Secondary Failure Mode:** Uncontrolled pitch or roll leading to jack collapse.

---

## 2. Mandatory Operational Controls

All controls from `00-60-10-02` (Wing Jacking) are in effect and enhanced:
- **Facility:** Level 5+ Lift Hangar only.
- **Personnel:** The 5-person team model is mandatory. A 6th GAIA-QAO Certified QA Officer must be present outside the exclusion zone but with full monitoring access.
- **Support:** The GAIA-QAO SERC must have a live, real-time data feed from the QIT and maintain an open voice channel with the Lead Technician for the entire duration of Phase 4.

---

## 3. Required Resources

As specified in `00-60-10-02`, Section 3, requiring the four primary jacks (2x 150-ton, 1x 75-ton, 1x 50-ton) and their corresponding adapters.

---

## 4. Phase 1: Planning & Digital Lift Twin (DLT) Generation (T-48h)

### 4.1 Task 1: Generate Master DLT
1.  **[LEAD TECH]** In the `GAIA-QAO Lift Planner`, select profile: `MASTER LIFT - FULL AIRCRAFT`.
2.  **[ACTION]** The system generates the Master DLT, which simulates the complex interplay of all four jacks through the entire lift, leveling, and lowering sequence.
3.  **[VERIFY]** The DLT must pass with all predicted stresses and deviations within certifiable limits.
    ```yaml
    DLT_Package_ID: "DLT-BWB004-20250805-MASTERLIFT01"
    Lift_Configuration: "NJP-1, AJP-1, MJP-L, MJP-R"
    Predicted_Max_Torsion: "0.033%"
    Predicted_Pitch_Moment_kN-m: 1250
    Predicted_Roll_Moment_kN-m: 850
    Status: "SIMULATION_PASSED - APPROVED_FOR_PLANNING"
    ```
4.  **[LEAD TECH]** Attach the Master DLT Package to the work order.

---

## 5. Phase 2: Preparation & Staging (T-8h to T-1h)

### 5.1 Task 2: Environment, Aircraft, and GSE Preparation
1.  **[LEAD TECH]** Verify all environmental and aircraft preparations from `00-60-10-02`, Section 5.1, are complete and documented.
2.  **[GSE OP]** Verify all four jacks have passed their pre-use inspections.
3.  **[QSM OP]** Perform and verify the `Full Airframe QSM Calibration`.

---

## 6. Phase 3: Final Authorization & Pre-Lift Briefing (T-1h to T-0)

### 6.1 Task 3: Final Authorization
1.  **[LEAD TECH]** Conduct the 'Circle of Safety' briefing.
2.  **[LEAD TECH]** Complete the Master Lift Authorization Checklist (Form `F-0060-08`). This is a 50-point checklist culminating in final authorization.
3.  **[LEAD TECH]** "This is Lead, requesting authorization to proceed from GAIA SERC."
4.  **[SERC]** "SERC copies. We have your data, all parameters are nominal. You are authorized to proceed with the Master Lift."
5.  **[LEAD TECH]** "Authorization from SERC received. Team, we are GO."

---

## 7. Phase 4: Execution - The 7 Stages of a Full Aircraft Lift

### Stage 1: GSE Integration & QSM Health Checks (Time: 30 min)
1.  **[GSE OP]** "Staging all four jacks."
2.  **[ACTION]** Position and laser-align all four jacks (NJP-1, AJP-1, MJP-L, MJP-R).
3.  **[LEAD TECH]** "Proceed with adapter installation and QSM checks, sequence Nose, Aft, Main Port, Main Starboard."
4.  **(For each of the four points, the full sequence of seating the adapter, confirming lock, connecting QSM, and running a successful `Point Health Check` is performed and verbally confirmed, as detailed in `00-60-10-02`, Sub-Task 7.2).**
5.  **[QA HOLD POINT 1]**
    *   **[LEAD TECH]** "HOLD POINT ONE. All points are healthy and online. We are GO for Stage 2, Initial Load."

### Stage 2: Initial Load Application (Take-up) (Time: 10 min)
1.  **[GSE OP]** "Team, initiating take-up sequence."
2.  **[ACTION]** The CJC applies a balanced take-up load: **5000 kg (±50 kg)** on MJP-L/R and **500 kg (±20 kg)** on NJP-1/AJP-1.
3.  **[QSM OP]** "QSM in Load Verification Mode. Comparing live data to Master DLT."
4.  **[QSM OP]** (Reads data from QIT): "Load Balance 0.35 percent, green. Torsion 0.018 percent, green. Pitch Moment 50 kN-m, green. Roll Moment 35 kN-m, green. Stress profile deviation from DLT is minus 0.6 percent, green."
5.  **[QA HOLD POINT 2 - FINAL GO/NO-GO]**
    *   **[LEAD TECH]** "HOLD POINT TWO. Final verification for main lift. All stations GO or NO-GO."
    *   **(All stations respond "GO")**
    *   **[LEAD TECH]** "All stations are GO. We are cleared for Stage 3, Main Lift to target height 150 centimeters."

### Stage 3: Main Lift (MJP Primary) (Time: approx. 150 min)
1.  **[LEAD TECH]** "Initiate Stage 3, Main Lift."
2.  **[GSE OP]** "Lift initiated. MJP jacks are primary at 1.0 centimeter per minute. NJP and AJP jacks are in follower mode, maintaining pitch attitude."
3.  **[COMMUNICATION CYCLE - Mandatory at every 10cm interval]**
    *   **[LEAD TECH]** "Mark, 10 centimeters."
    *   **[QSM OP]** "QSM: Torsion 0.021 percent. Max stress 25 percent. Pitch attitude stable at plus 0.2 degrees. All nominal against DLT."
    *   **[GSE OP]** "CJC: MJP Sync deviation 0.3 millimeters. NJP/AJP follower loads nominal. All green."
4.  **(This cycle repeats until target height is reached).**
5.  **[GSE OP]** "Target height of 150 centimeters reached on main jacks. Main lift complete."

### Stage 4: Aircraft Leveling at Height (Time: 10 min)
1.  **[LEAD TECH]** "Main lift complete. Proceed to Stage 4, Aircraft Leveling."
2.  **[GSE OP]** "Initiating 'Auto-Level' sequence."
3.  **[ACTION]** The CJC makes micro-adjustments to the NJP-1 and AJP-1 jacks to achieve a perfectly level aircraft attitude (0.0° pitch and roll), as measured by the aircraft's internal laser gyros and the QSM accelerometer network.
4.  **[QSM OP]** "QSM confirms leveling complete. Pitch 0.00°, Roll 0.00°. Stress distribution is stable and matches the level-at-height DLT model."

### Stage 5: Securing on Mechanical Collars (Time: 20 min)
1.  **[LEAD TECH]** "Aircraft is level at height. Proceed to Stage 5, secure on collars."
2.  **[ACTION]** Engage and torque mechanical safety collars on all four jacks to their specified values.
3.  **[VERBAL CHECK]** All four positions are verbally confirmed "TORQUED AND SECURE."
4.  **[GSE OP]** "Initiating 'Seat on Collars' sequence."
5.  **[QSM OP]** "Load transfer to collars is stable. QSM entering long-term static monitoring."
6.  **[LEAD TECH]** "Aircraft is SECURED AT HEIGHT on mechanical collars."

### Stage 6: Synchronized Lowering (Time: approx. 100 min)
1.  **[LEAD TECH]** "All maintenance complete. Preparing for aircraft lowering."
2.  **[ACTION]** Conduct pre-lowering briefing.
3.  **[GSE OP]** "Initiating 'Load to Hydraulics'."
4.  **[ACTION]** Disengage and retract all four safety collars.
5.  **[LEAD TECH]** "All collars are clear. Clear to lower."
6.  **[GSE OP]** "Lowering initiated. Rate 1.5 centimeters per minute. All jacks synchronized."
7.  **[COMMUNICATION CYCLE]** Verbal call-out cycle is repeated during descent.
8.  **[GSE OP]** "Weight on wheels confirmed. All jack load cells below 50 kilograms. Lowering sequence complete."

### Stage 7: Final Load-Off & GSE Removal (Time: 20 min)
1.  **[GSE OP]** "Jacks are fully retracting."
2.  **[ACTION]** Fully lower and remove all jacks and adapters from the aircraft vicinity.
3.  **[ACTION]** Install QSM port protective covers.

---

## 8. Phase 5: Post-Operation & Aircraft Release

### 8.1 Task 8: Post-Lift Structural Verification
1.  **[ACTION]** Lead Tech and Safety Officers perform a detailed post-lift inspection of all four jacking points.
2.  **[QSM OP]** "Initiating MASTER Post-Lift Structural Health Scan."
3.  **[VERIFY]** This 10-minute scan must return a "PASS" with no new anomalies.
    ```yaml
    Post_Lift_Health_Scan_Report:
      Scan_Type: "MASTER_FULL_AIRFRAME"
      Result: "PASS"
      Residual_Stress_Delta: "-0.005%"
      New_Anomalies_Detected: 0
      Baseline_Correlation: "99.99%"
    ```
4.  **[LEAD TECH]** "Post-Lift QSM Scan is PASS. The aircraft is structurally clear."

---

## 9. Emergency Master Scenarios & Contingencies

| Scenario | QSM Alert | Description & Action |
|---|---|---|
| **Torsional Overload** | LD-601 | AUTO-HALT. Twisting force between MJP-L/R exceeds limit. **Do not move.** Analyze cause (sync fail, floor settling). Deploy shores. Contact SERC. |
| **Pitch Instability**| STAB-701 | AUTO-HALT. Pitch angle deviation exceeds DLT prediction. Indicates fore/aft instability. **Do not move.** Analyze jack loads. Contact SERC. |
| **Combined Failure**| MULTI-FAIL | A combination of alerts (e.g., sync fail and pressure loss). **MASTER EMERGENCY STOP.** This is the most critical failure. Deploy all emergency shores. Evacuate the hangar. Contact SERC immediately. |

---

## 10. Quality Assurance & Master DIKE Record Finalization

1.  **[LEAD TECH]** Completes and digitally signs the Master Jacking Operation Log (Form `GAIA-QAO-F-0060-09`).
2.  **[QSM OP]** Archives the complete, encrypted Master QSM data package (DLT, logs, scans) to the aircraft's DIKE.
3.  **[QA OFFICER]** The 6th team member (QA Officer) performs an independent audit of the entire digital record, including the voice/video log. The QA Officer provides the final digital signature for aircraft release.
4.  **[LOG]** The usage cycle for all four primary jacking points is incremented by one.

---
## Document Control and Change History

**Change Record:**
| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | 2025-08-05 | A. Pelliccia | Definitive Master Release combining all jacking procedures into a single, Level 5+ Critical Lift document. |

**Next Review Date:** 2026-08-05

---

**End of Document**
