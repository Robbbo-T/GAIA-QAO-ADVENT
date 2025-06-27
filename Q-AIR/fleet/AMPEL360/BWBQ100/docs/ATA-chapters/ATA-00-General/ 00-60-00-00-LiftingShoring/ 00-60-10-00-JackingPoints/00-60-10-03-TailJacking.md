# AMPEL360 BWB-Q100 - 00-60-10-03 Aft Jacking Points - Procedures

## Document Header & Identification

**Document Type:** Technical Manual - Critical Maintenance Procedure  
**ATA Chapter:** 00-60-10-03  
**Aircraft Model:** AMPEL360 BWB-Q100 (AS-M-PAX-BW-Q1H)  
**System:** Aft Jacking Points (AJP-1, AJP-L, AJP-R, AJP-2)  
**Criticality Level:** 4 (High - Major Failure Potential)  
**Version:** 1.0.0 (Definitive Release)  
**Date:** 2025-08-01  
**Classification:** GAIA-QAO Technical Documentation - **RESTRICTED - CRITICAL LIFT**  

**GQOIS Identifier:** `AS-M-PAX-BW-Q1H-JACK-PTS-AFT-V1R0`  
**INFOCODE:** `GAIA-QAO-TM-00601003-V1R0-20250801`  
**DIKE Reference:** `DIKE-JACK-PTS-AFT-PROC-001`  

---

## Table of Contents

1.  [Criticality & Risk Assessment](#1-criticality--risk-assessment)
2.  [Mandatory Operational Controls](#2-mandatory-operational-controls)
3.  [Required Resources](#3-required-resources)
4.  [Phase 1: Planning & Simulation (T-24h to T-4h)](#4-phase-1-planning--simulation-t-24h-to-t-4h)
5.  [Phase 2: Preparation & Staging (T-4h to T-1h)](#5-phase-2-preparation--staging-t-4h-to-t-1h)
6.  [Phase 3: Final Verification & Authorization (T-1h to T-0)](#6-phase-3-final-verification--authorization-t-1h-to-t-0)
7.  [Phase 4: Execution - Lifting Procedure (T+0 to T+1.5h)](#7-phase-4-execution---lifting-procedure-t0-to-t15h)
8.  [Phase 5: Execution - Lowering Procedure](#8-phase-5-execution---lowering-procedure)
9.  [Phase 6: Post-Operation & Aircraft Release](#9-phase-6-post-operation--aircraft-release)
10. [Emergency Scenarios & Contingency Actions](#10-emergency-scenarios-and-contingency-actions)
11. [Quality Assurance & Digital Record Finalization](#11-quality-assurance--and-digital-record-finalization)

---

## 1. Criticality & Risk Assessment

### 1.1 Scope
This document provides the complete, unabridged procedure for lifting the aft section of the AMPEL360 BWB-Q100 aircraft using up to four designated aft jacking points:
- **AJP-1:** Primary Aft Jack Point (Centerline)
- **AJP-L:** Secondary Aft Jack Point (Left/Port)
- **AJP-R:** Secondary Aft Jack Point (Right/Starboard)
- **AJP-2:** Secondary Aft Jack Point (Centerline, Aft-most)

This procedure is designated a **Level 4 Critical Lift**. It is primarily used for maintenance on the aft pressure bulkhead, Vertical Tail Plane (VTP) actuators, and aft environmental control systems.

### 1.2 Risk Profile: Pitch Instability & Structural Overload
The primary risk is **pitch instability**, where an uncontrolled drop of the aft section could cause a catastrophic nose gear collapse. The secondary risk is **overloading the aft body frame structure** if loads are not distributed correctly across the AJP network.
**Risk Matrix:**
| Risk Factor | Likelihood (w/ Controls) | Consequence | Risk Score | Primary Control (QSM Alert) |
|---|---|---|---|---|
| Pitch Instability | Low | Catastrophic | 15 (High) | `STAB-701` (Attitude Deviation) |
| Aft Frame Overload | Low | Major Damage | 10 (Medium) | `LD-502` (Red Threshold) |
| Lateral Imbalance | Low | Major Damage | 10 (Medium) | `LD-602` (Lateral Load Imbalance)|
| Jack Point Failure | Remote | Major Damage | 10 (Medium) | `SE-101` (Sensor Failure) |

### 1.3 Mandatory Prerequisites
- Successful completion and understanding of `00-60-00-00` and `00-60-10-00`.
- All personnel must be certified Level II or higher for BWB Ground Operations. The Lead Technician must be Level III+.

---

## 2. Mandatory Operational Controls

### 2.1 Environmental Controls
- **Facility:** Certified Level 4 Lift Hangar.
- **Atmosphere:** Hangar doors closed and sealed.
- **Temperature:** Stable at 20°C ± 5°C for 2 hours prior to and during the operation.
- **Lighting:** Maintained at 600 lux minimum at all jacking points.

### 2.2 Personnel Controls
- **Exclusion Zone:** A 15-meter hard exclusion zone around the aft section of the aircraft.
- **Communication Protocol:** Dedicated, encrypted radio channel. Continuous voice recording is mandatory.
- **Stabilizer Requirement:** The Main Jacking Points (MJP-L and MJP-R) **MUST** be used in "Follower Mode" as the forward stabilizers to prevent pitch-down failure. They are the primary safety control for this operation.

---

## 3. Required Resources

### 3.1 Personnel Certifications & Roles
| Role | Certification Level Required | Qty |
|---|---|:---:|
| Lead Technician | Level III+, BWB Critical Lift (BWB-CL-3) | 1 |
| QSM Operator | QSM Level II (BWB Certified) | 1 |
| GSE Operator | Heavy Lift, CJC Master Operator (CJC-MO-BWB) | 1 |
| Safety Officer | BWB Ground Ops Supervisor (BWB-GOS) | 1 |

### 3.2 GSE & Software Requirements
| Equipment | P/N | Qty | Certification/Firmware Requirement |
|---|---|:---:|---|
| Aft Primary Jack (75-ton) | GAIA-GSE-J75Q | 1 | Certified & Calibrated within 90 days. |
| Aft Secondary Jacks (50-ton) | GAIA-GSE-J50Q | 2 | Certified & Calibrated within 90 days. |
| Aft-most Jack (60-ton) | GAIA-GSE-J60Q | 1 | Certified & Calibrated within 90 days. |
| Aft Jack Adapters | GAIA-GSE-A75Q-AP, etc. | 4 | Inspected per `GAIA-QAO-F-0060-01`. |
| Stabilizer Jacks (150-ton) | GAIA-GSE-J150Q | 2 | Certified & Calibrated within 30 days. |
| Central Jack Controller | GAIA-GSE-JCC-Q | 1 | Firmware v3.2.5 or later. |
| Quantum Interface Terminal | QIT-MAINT-01 | 1 | OS v4.5.1 or later. |
| Emergency Shores (75-ton) | GAIA-GSE-S75 | 2 | Staged at pre-designated aft locations. |

---

## 4. Phase 1: Planning & Simulation (T-24h to T-4h)

### 4.1 Task 1: Generate Digital Lift Twin (DLT) for Aft Lift
1.  **[LEAD TECH]** Open the `GAIA-QAO Lift Planner` software.
2.  **[ACTION]** Input aircraft S/N and select the `Aft Lift` profile. Specify which AJP points will be used (e.g., AJP-1, AJP-L, AJP-R).
3.  **[ACTION]** Initiate `Generate Digital Lift Twin`. The system simulates the lift, focusing on aft frame stress and aircraft pitch stability.
4.  **[VERIFY]** The DLT generation completes successfully.
    ```yaml
    DLT_Package_ID: "DLT-BWB004-20250801-AFTLIFT01"
    Lift_Configuration: "AJP-1, AJP-L, AJP-R (Primary Lift); MJP-L, MJP-R (Follower)"
    Predicted_Max_Aft_Frame_Stress_MPa: 198.3
    Predicted_Pitch_Change_degrees: "+3.5"
    Predicted_MJP_Follower_Load_kg: "Decrease of ~15,000 kg per jack"
    Status: "SIMULATION_PASSED - APPROVED_FOR_PLANNING"
    ```
5.  **[LEAD TECH]** Attach the DLT Package to the master work order.

---

## 5. Phase 2: Preparation & Staging (T-4h to T-1h)

### 5.1 Task 2: Aircraft and GSE Preparation
1.  **[ACTION]** Complete all aircraft configuration steps from `00-60-00-00`.
2.  **[VERIFY]** Aft cargo bay (CB4) must be empty. Confirm on Weight & Balance sheet.
3.  **[GSE OP]** Perform pre-use inspections on all required aft and main jacks.
4.  **[SAFETY OFFICER]** Establish the 15-meter aft exclusion zone.

### 5.2 Task 3: QSM System Configuration
1.  **[QSM OP]** Connect the QIT and initialize QSM in "Maintenance Lift Mode."
2.  **[ACTION]** On the QIT, load the DLT Package `...AFTLIFT01`.
3.  **[CHECK]** Verify the QIT displays the correct lift configuration: AJP points as `PRIMARY` and MJP points as `FOLLOWER`.
4.  **[ACTION]** Perform QSM `Point Health Check` on all AJP and MJP points to be used. All must pass.

---

## 6. Phase 3: Final Verification & Authorization (T-1h to T-0)

### 6.1 Task 4: 'Circle of Safety' Briefing
1.  **[LEAD TECH]** Assemble the 4-person team.
2.  **[ACTION]** Conduct the final safety briefing. Emphasize pitch stability risks and the role of the MJP stabilizer jacks.
3.  **[ACTION]** Each team member verbally confirms "Fit for Duty."

### 6.2 Task 5: Pre-Lift Authorization Checklist (Form `F-0060-06`)
| Item | Verification | Status | Sign-off (ID) |
|---|---|:---:|---|
| **1.0 DLT** | Aft Lift DLT Package loaded to QIT and CJC | ✅ | LT-123 |
| **2.0 A/C** | Aircraft CG matches DLT | ✅ | LT-123 |
| **3.0 QSM** | All required points passed Health Check | ✅ | QO-456 |
| **4.0 GSE** | All GSE pre-use inspections PASS | ✅ | GO-789 |
| **AUTH** | **AIRCRAFT IS AUTHORIZED FOR AFT LIFT** | ✅ | **LT-123** |

---

## 7. Phase 4: Execution - Lifting Procedure (T+0 to T+1.5h)

### 7.1 Sub-Task 7.1: GSE Staging and Adapter Installation
1.  **[LEAD TECH]** "Team, we are commencing execution. Task 7.1, GSE staging and adapter installation. Sequence: MJP-L, MJP-R, then AJP points."
2.  **[ACTION]** Position, align, and install adapters on the MJP-L and MJP-R stabilizer jacks first. Verify their QSM links.
3.  **[ACTION]** Position, align, and install adapters on the AJP-1, AJP-L, and AJP-R jacks. Verify their QSM links.
4.  **[LEAD TECH]** "Task 7.1 complete. All jacks are staged, adapters seated, QSM online."

### 7.2 Sub-Task 7.2: Initial Load Application (Take-up)
1.  **[GSE OP]** "Team, initiating Aft take-up sequence."
2.  **[ACTION]** GSE Operator initiates "Initial Load." The CJC applies **2000 kg** to AJP-1 and **1000 kg** to AJP-L/R. The MJP jacks remain at zero load but monitor for changes.
3.  **[QSM OP]** "QSM in Load Verification Mode. Comparing live data to Aft Lift DLT."
4.  **[QSM OP]** "Live data: AJP-1 load 2010 kg. Lateral balance AJP-L vs AJP-R is 0.8 percent, green. Pitch attitude stable. MJP load change nominal at minus 1500 kg. Stress profile deviation from DLT is plus 0.2 percent, green."
5.  **[QA HOLD POINT 1]**
    *   **[LEAD TECH]** "HOLD POINT ONE. All stations, GO or NO-GO for aft lift."
    *   **(All stations respond "GO")**
    *   **[LEAD TECH]** "Hold Point One is complete. We are cleared for aft lift to target height 45 centimeters."

### 7.3 Sub-Task 7.3: Main Lift to Target Height
1.  **[GSE OP]** "Lift initiated. Rate 1.5 centimeters per minute."
2.  **[COMMUNICATION CYCLE - Every 5cm]**
    *   **[LEAD TECH]** "Mark, 10 centimeters."
    *   **[QSM OP]** "QSM: Aft frame stress 35 percent. Pitch attitude plus 1.2 degrees. All nominal against DLT."
    *   **[GSE OP]** "CJC: MJP follower jacks are stable. No abnormal load shifts."
    *   **[SAFETY OFFICER]** "Aft section visual clear. No acoustic anomalies."
3.  *(This cycle repeats until target height is reached)*
4.  **[GSE OP]** "Target height of 45 centimeters reached. Lift complete. Motion stopped."

### 7.4 Sub-Task 7.4: Securing the Aircraft at Height
1.  **[LEAD TECH]** "Aircraft at height. Proceed to secure AJP jacks on collars."
2.  **[ACTION]** Engage mechanical safety collars on the active AJP jacks. Torque to specified values.
3.  **[VERBAL CHECK]** Lead Tech and Safety Officer verbally confirm collars are "TORQUED AND SECURE."
4.  **[GSE OP]** "Initiating 'Seat on Collars' sequence for aft jacks."
5.  **[QSM OP]** "Load transfer to collars stable. QSM entering static monitoring."
6.  **[LEAD TECH]** "Aft section is SECURED AT HEIGHT. Maintenance may commence."

---

## 8. Phase 5: Execution - Lowering Procedure

### 8.1 Sub-Task 8.1: Preparation for Lowering
1.  **[LEAD TECH]** "All maintenance complete. Preparing for aft section lowering."
2.  **[ACTION]** Conduct pre-lowering safety briefing.
3.  **[QSM OP]** "QSM activated from Static to Maintenance Lift Mode."
4.  **[GSE OP]** "Initiating 'Load to Hydraulics' on aft jacks."

### 8.2 Sub-Task 8.2: Synchronized Lowering
1.  **[ACTION]** Disengage and fully retract mechanical safety collars from all active AJP jacks.
2.  **[LEAD TECH]** "All AJP collars are clear. Clear to lower."
3.  **[GSE OP]** "Lowering initiated. Rate 2.0 centimeters per minute."
4.  **[COMMUNICATION CYCLE]** Verbal call-out cycle is repeated during descent, with focus on pitch attitude returning to baseline.
5.  **[GSE OP]** "Aircraft level. All jack load cells report less than 50 kilograms. Lowering sequence complete."

---

## 9. Phase 6: Post-Operation & Aircraft Release

### 9.1 Sub-Task 9.1: GSE Removal and Inspection
1.  **[ACTION]** Fully lower and retract all jacks and remove adapters.
2.  **[ACTION]** Install QSM port protective covers on all used points.
3.  **[ACTION]** Perform detailed post-lift inspection of all used AJP points.

### 9.2 Sub-Task 9.2: Final QSM Structural Verification
1.  **[QSM OP]** "Initiating Post-Lift Structural Health Scan for Aft Section."
2.  **[VERIFY]** The scan must return a "PASS" status with no new anomalies detected in the aft frame structure.
    ```yaml
    Post_Lift_Health_Scan_Report:
      Timestamp: "2025-08-01T14:15:00Z"
      Scan_Area: "AFT_STRUCTURE"
      Result: "PASS"
      Residual_Stress_Delta: "+0.02%"
      New_Anomalies_Detected: 0
      Baseline_Correlation: "99.97%"
    ```
3.  **[LEAD TECH]** "Post-Lift QSM Scan is PASS. The aft structure is clear."

---

## 10. Emergency Scenarios & Contingency Actions

| Scenario | QSM Alert | Primary Response | Contingency Plan |
|---|---|---|---|
| **Pitch Instability** | STAB-701 | **AUTO-HALT.** The QSM has detected pitch changing faster than predicted. | Do not move. Analyze cause. If a jack is failing, deploy emergency shores immediately. If stable, attempt micro-correction lowering. |
| **Lateral Imbalance**| LD-602 | **AUTO-PAUSE.** The system detects uneven load between AJP-L and AJP-R. | Verify aircraft lateral CG. Check for uneven floor settling. Attempt to re-balance load with micro-corrections on AJP-L/R. |
| **AJP Jack Failure** | Pressure Loss Alert | **AUTO-HALT.** | The remaining AJP and MJP jacks will hold attitude. Deploy emergency shore under the nearest aft hard point within 5 minutes. |
| **MJP Stabilizer Load Anomaly** | STAB-702 | **AUTO-PAUSE.** The load on a forward stabilizer jack is not changing as predicted. | This indicates a CG issue or unexpected structural flex. Do not proceed. Slowly lower the aircraft to take-up load and re-evaluate. |

---

## 11. Quality Assurance & Digital Record Finalization

1.  **[LEAD TECH]** Completes and digitally signs the Aft Jacking Operation Log (Form `GAIA-QAO-F-0060-07`).
2.  **[QSM OP]** Archives the complete, encrypted QSM data package (Aft Lift DLT, logs, health checks, final scan) to the aircraft's DIKE.
3.  **[QA CHECK]** An independent QA officer reviews the entire digital record. Any deviation is documented. QA officer provides the final signature for release.
4.  **[LOG]** The usage cycle for all used AJP points is incremented in the aircraft's maintenance database.

---
## Document Control and Change History

**Change Record:**
| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | 2025-08-01 | A. Pelliccia | Definitive release of the Aft Jacking procedure to Level 4/5 GAIA-QAO standards. |

**Next Review Date:** 2026-08-01

---

**End of Document**
