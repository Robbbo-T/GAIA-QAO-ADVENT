# AMPEL360 BWB-Q100 - 00-60-10-02 Main (Wing) Jacking Points - Procedures

## Document Header & Identification

**Document Type:** Technical Manual - Critical Maintenance Procedure  
**ATA Chapter:** 00-60-10-02  
**Aircraft Model:** AMPEL360 BWB-Q100 (AS-M-PAX-BW-Q1H)  
**System:** Main (Wing) Jacking Points (MJP-L, MJP-R)  
**Criticality Level:** 5 (Extreme - Catastrophic Failure Potential)  
**Version:** 4.0.0  
**Date:** 2025-07-29  
**Classification:** GAIA-QAO Technical Documentation - **RESTRICTED - CRITICAL LIFT**  

**GQOIS Identifier:** `AS-M-PAX-BW-Q1H-JACK-PTS-WING-V4R0`  
**INFOCODE:** `GAIA-QAO-TM-00601002-V4R0-20250729`  
**DIKE Reference:** `DIKE-JACK-PTS-WING-PROC-004`  

---

## Table of Contents

1.  [Criticality & Risk Assessment](#1-criticality--risk-assessment)
2.  [Mandatory Operational Controls](#2-mandatory-operational-controls)
3.  [Required Resources](#3-required-resources)
4.  [Phase 1: Planning & Simulation (T-48h to T-8h)](#4-phase-1-planning--simulation-t-48h-to-t-8h)
5.  [Phase 2: Preparation & Staging (T-8h to T-1h)](#5-phase-2-preparation--staging-t-8h-to-t-1h)
6.  [Phase 3: Final Verification & Authorization (T-1h to T-0)](#6-phase-3-final-verification--authorization-t-1h-to-t-0)
7.  [Phase 4: Execution - Lifting Procedure](#7-phase-4-execution---lifting-procedure)
8.  [Phase 5: Execution - Lowering Procedure](#8-phase-5-execution---lowering-procedure)
9.  [Phase 6: Post-Operation & Aircraft Release](#9-phase-6-post-operation--aircraft-release)
10. [Emergency Scenarios & Contingency Actions](#10-emergency-scenarios-and-contingency-actions)
11. [Quality Assurance & Digital Record Finalization](#11-quality-assurance--digital-record-finalization)

---

## 1. Criticality & Risk Assessment

### 1.1 Scope
This document details the complete, unabridged procedure for lifting the AMPEL360 BWB-Q100 airframe using the two Main Jacking Points (MJP-L and MJP-R), supported by stabilizer jacks at NJP-1 and AJP-1. This procedure is designated a **Level 5 Critical Lift**, only to be performed by Level III+ certified personnel who have successfully completed this procedure in a Hardware-in-the-Loop (HIL) simulation within the last 90 days.

### 1.2 Risk Profile: Torsional Overload
The primary risk is **catastrophic structural failure of the main wing box due to torsional stress**. The 28-meter span between MJP-L and MJP-R creates an immense lever arm where a small height deviation results in enormous twisting forces. The QSM system is the primary safety device against this risk.
**Risk Matrix:**
| Risk Factor | Likelihood (w/ Controls) | Consequence | Risk Score | Primary Control (QSM Alert) |
|---|---|---|---|---|
| Torsional Overload | Very Low | Catastrophic | 15 (High) | `LD-601` (Torsional Load) |
| Synchronization Failure | Very Low | Catastrophic | 15 (High) | `SY-901` (CJC Sync Failure) |
| Jack Point Structural Failure | Remote | Major Damage | 10 (Medium) | `LD-502` (Red Threshold) |
| Human Factor Error | Low | Catastrophic | 15 (High) | Strict Adherence to this Procedure |

---

## 2. Mandatory Operational Controls

### 2.1 Environmental Controls
- **Facility:** Certified Level 5 Lift Hangar with independent foundation slabs for each main jacking position.
- **Atmosphere:** All hangar doors closed, sealed, and locked out. Positive pressure (50 Pa above ambient) maintained. Air filtration must be active to Class 8 cleanroom standards.
- **Temperature:** Stable at 20°C ± 1.5°C for 6 hours prior to and during the operation, monitored by 16 thermal sensors across the airframe and hangar.
- **Lighting:** Maintained at 750 lux minimum at all jacking points, with emergency backup lighting tested to provide 500 lux for 4 hours.
- **Acoustics:** Non-essential facility noise must be ceased. Ambient noise level must be < 40 dB to allow clear verbal communication and detection of structural sounds.
- **Floor Integrity:** Laser survey of floor levelness must be performed at T-2h. Deviation must be < ±2 mm across the operational footprint. Report `FAC-SRV-[YYYYMMDD]` must be attached to work order.

### 2.2 Personnel Controls
- **Exclusion Zone:** A 20-meter hard exclusion zone, marked with physical barriers and active "CRITICAL LIFT IN PROGRESS - NO ENTRY" flashing signage.
- **Access Log:** All personnel entering the zone must provide biometric (fingerprint) authentication at the entry gate, which is managed by the Lead Technician's console.
- **Communication Protocol:** All communication on a dedicated, encrypted radio channel. A continuous, time-stamped, multi-channel voice and 360-degree video recording of the operation is mandatory and archived as part of the DIKE.
- **Biometric Monitoring:** All five team members within the exclusion zone must wear GAIA-QAO bio-harnesses. Heart rate, HRV, and cognitive stress indicators are monitored in real-time by the central safety system. An alert is triggered if a team member's stress level exceeds their established baseline by 3-sigma.

---

## 3. Required Resources

### 3.1 Personnel Certifications & Roles
| Role | Certification Level Required |
|---|---|
| Lead Technician | Level III+, BWB Critical Lift (BWB-CL-3), QSM Level I |
| QSM Operator | QSM Level II (BWB Certified), QIT Operator (QIT-OP-2) |
| GSE Operator | Heavy Lift, CJC Master Operator (CJC-MO-BWB) |
| Safety Officer (Port) | BWB Ground Ops Supervisor (BWB-GOS) |
| Safety Officer (Starboard) | BWB Ground Ops Supervisor (BWB-GOS) |

### 3.2 GSE & Software Requirements
| Equipment | P/N | Qty | Certification/Firmware Requirement |
|---|---|:---:|---|
| Main Jacks (150-ton) | GAIA-GSE-J150Q | 2 | Certified & Calibrated within 30 days. |
| Main Jack Adapters | GAIA-GSE-A150Q-MP | 2 | Inspected per `GAIA-QAO-F-0060-01`. |
| Stabilizer Jacks | GAIA-GSE-J50Q/J75Q | 2 | Certified & Calibrated within 90 days. |
| Central Jack Controller | GAIA-GSE-JCC-Q | 1 | Firmware v3.2.5 or later. |
| Quantum Interface Terminal| QIT-MAINT-01 | 1 | OS v4.5.1 or later. |
| Emergency Shores | GAIA-GSE-S100 | 2 | Hydraulically-actuated, rapid-deployment model. |
| Laser Alignment System| GAIA-GSE-LAS-01 | 4 | Calibrated within 180 days. |

### 3.3 Support Resources
- **Direct Line to GAIA-QAO SERC:** A dedicated, redundant (fiber and satellite), high-bandwidth video link must be established and tested. The SERC team will be on standby for the duration of the lift.

---

## 4. Phase 1: Planning & Simulation (T-48h to T-8h)

### 4.1 Task 1: Generate Digital Lift Twin (DLT)
1.  **[LEAD TECH]** Open the `GAIA-QAO Lift Planner` software suite.
2.  **[ACTION]** Input aircraft S/N. The system pulls the latest weight, CG, and structural health data from the aircraft's DIKE.
3.  **[ACTION]** Input the target lift height and maintenance task.
4.  **[ACTION]** Initiate `Generate Digital Lift Twin`. The system performs a cloud-based FEA and quantum simulation.
5.  **[VERIFY]** The DLT generation completes successfully. The output `DLT Package` contains predicted stress maps, load curves, and safety thresholds.
    ```yaml
    DLT_Package_ID: "DLT-BWB004-20250729-LIFT01"
    Predicted_Max_Torsion: "0.031%"
    Predicted_Max_MJP_Stress_MPa: 215.7
    Predicted_MJP_Sync_Deviation_mm: 0.4
    Status: "SIMULATION_PASSED - APPROVED_FOR_PLANNING"
    ```
6.  **[LEAD TECH]** Attach the DLT Package to the master work order. This DLT will be the baseline against which the real-world lift is measured.

---

## 5. Phase 2: Preparation & Staging (T-8h to T-1h)

### 5.1 Task 2: Hangar and Aircraft Final Preparation
1.  **[LEAD TECH]** Verify hangar doors are closed, sealed, and locked out.
2.  **[ACTION]** Complete all aircraft configuration steps from `00-60-00-00`.
3.  **[GSE OP]** Perform pre-use inspections on all jacks and the CJC.
4.  **[SAFETY OFFICERS]** Establish the 20-meter hard exclusion zone.

### 5.2 Task 3: QSM Full System Calibration
1.  **[QSM OP]** Connect the QIT to the aircraft.
2.  **[ACTION]** Initiate `Full Airframe QSM Calibration` (approx. 25 minutes).
3.  **[VERIFY]** Calibration must complete with a `Confidence Factor > 99.5%`.

---

## 6. Phase 3: Final Verification & Authorization (T-1h to T-0)

### 6.1 Task 4: The 'Circle of Safety' Briefing
1.  **[LEAD TECH]** Assemble the 5-person team at the nose of the aircraft.
2.  **[ACTION]** Conduct the final safety briefing. Review roles, communication, emergencies, and key DLT parameters.
3.  **[ACTION]** Each team member verbally states their role and confirms they are "Fit for Duty." Recorded.

### 6.2 Task 5: Pre-Lift Authorization Checklist (Form `F-0060-05`)
| Item | Verification | Status | Sign-off (ID) |
|---|---|:---:|---|
| **1.0 DLT** | DLT Package `...LIFT01` loaded to QIT and CJC | ✅ | LT-123 |
| **2.0 A/C** | Aircraft CG matches DLT (±0.1% MAC) | ✅ | LT-123 |
| **3.0 QSM** | Full Airframe Calibration `...` PASS (99.7%) | ✅ | QO-456 |
| **4.0 GSE** | All GSE pre-use inspections PASS | ✅ | GO-789 |
| **5.0 ENV** | Hangar environment is within limits | ✅ | SO-1A/SO-2B |
| **6.0 SERC** | Video link to SERC is active | ✅ | LT-123 |
| **AUTH** | **AIRCRAFT IS AUTHORIZED FOR LIFT** | ✅ | **LT-123** |

---

## 7. Phase 4: Execution - Lifting Procedure

### 7.1 Sub-Task 7.1: GSE Staging & Laser Alignment
1.  **[GSE OP]** "Staging main and stabilizer jacks."
2.  **[ACTION]** Position all four jacks. Power on laser alignment system.
3.  **[GSE OP]** "Achieving laser alignment." Adjust each jack until its laser crosshair is within the 5mm tolerance circle.
4.  **[CHECK]** The CJC display confirms `LASER_ALIGN_LOCK` for all four positions.

### 7.2 Sub-Task 7.2: Adapter Installation & QSM Verification
1.  **[LEAD TECH]** "Proceed with adapter installation, sequence NJP-1, AJP-1, MJP-L, MJP-R."
2.  **[ACTION]** For each jack, raise, seat adapter, confirm lock, and connect QSM pigtail.
3.  **[QSM OP]** For each point: "QSM, initiating health check on MJP-L." ... "QSM, health check for MJP-L is PASS, Confidence 99.8 percent."
4.  **[QA HOLD POINT 1]**
    *   **[LEAD TECH]** "HOLD POINT ONE. All stations, report status for initial load."
    *   **[QSM OP]** "QSM reports all four points passed health check and are online."
    *   **[GSE OP]** "CJC reports all four jacks are locked, adapters seated, and linked."
    *   **[LEAD TECH]** "Hold Point One is complete. We are GO for initial load."

### 7.3 Sub-Task 7.3: Initial Load Application (Structural Take-up)
1.  **[GSE OP]** "Team, initiating take-up sequence. Stand by."
2.  **[ACTION]** GSE Operator initiates "Initial Load." The CJC applies **5000 kg (±50 kg)** to MJP-L/R and **500 kg (±20 kg)** to NJP-1/AJP-1.
3.  **[QSM OP]** "QSM is in Load Verification Mode. Comparing live data to Digital Lift Twin."
4.  **[QSM OP]** "Reading live data: MJP-L load 5012 kg, MJP-R load 4998 kg. Balance differential is 0.28 percent, green. Torsional strain is 0.015 percent, green. Stress profile deviation from DLT is minus 0.5 percent, green."
5.  **[QA HOLD POINT 2 - FINAL GO/NO-GO]**
    *   **[LEAD TECH]** "HOLD POINT TWO. Final verification for main lift. All stations, GO or NO-GO."
    *   **[QSM OP]** "QSM is GO."
    *   **[GSE OP]** "CJC is GO."
    *   **[SAFETY OFFICER L]** "Port side is GO."
    *   **[SAFETY OFFICER R]** "Starboard side is GO."
    *   **[LEAD TECH]** "All stations are GO. We are cleared for main lift to 120 centimeters. Initiate lift sequence."

### 7.4 Sub-Task 7.4: Main Lift to Target Height
1.  **[GSE OP]** "Lift initiated. Rate 1.0 centimeter per minute."
2.  **[COMMUNICATION CYCLE - Every 10cm]**
    *   **[LEAD TECH]** "Mark, 10 centimeters."
    *   **[QSM OP]** "QSM: Torsion 0.019 percent. Max stress 28 percent. All nominal against DLT."
    *   **[GSE OP]** "CJC: Sync deviation 0.2 millimeters. All nominal."
3.  *(This cycle repeats)*
4.  **[GSE OP]** "Target height of 120 centimeters reached. Lift complete. Motion stopped."

### 7.5 Sub-Task 7.5: Securing the Aircraft at Height
1.  **[LEAD TECH]** "Aircraft at height. Proceed to secure on collars."
2.  **[ACTION]** Engage mechanical safety collars on all four jacks. Torque to 500 Nm.
3.  **[VERBAL CHECK]** Each Safety Officer and the Lead Tech verbally confirm their assigned collars are "TORQUED AND SECURE."
4.  **[GSE OP]** "Initiating 'Seat on Collars' sequence."
5.  **[QSM OP]** "Load transfer to collars is stable. Stress redistribution is nominal. QSM entering long-term static monitoring mode."
6.  **[LEAD TECH]** "Aircraft is SECURED AT HEIGHT on mechanical collars. Log time. Maintenance operations may now be authorized."

---

## 8. Phase 5: Execution - Lowering Procedure

### 8.1 Sub-Task 8.1: Preparation for Lowering
1.  **[LEAD TECH]** "All maintenance complete. Preparing for aircraft lowering. Clear all personnel and equipment from under the aircraft."
2.  **[ACTION]** Conduct a pre-lowering safety briefing, reviewing all steps.
3.  **[QSM OP]** "QSM activated from Static Monitoring to Maintenance Lift Mode."
4.  **[GSE OP]** "Initiating 'Load to Hydraulics' sequence." The CJC raises the jacks ~2mm to take the load off the safety collars.
5.  **[QSM OP]** "QSM confirms load transfer is stable."

### 8.2 Sub-Task 8.2: Synchronized Lowering
1.  **[ACTION]** Disengage and fully retract the mechanical safety collars from all four jacks.
2.  **[LEAD TECH]** "I have visually confirmed all four safety collars are fully retracted and clear. All stations confirm."
3.  **(ALL OTHERS)** "QSM clear." "CJC clear." "Safety Port clear." "Safety Starboard clear."
4.  **[LEAD TECH]** "We are clear to lower. Initiate lowering sequence."
5.  **[GSE OP]** "Lowering initiated. Rate 1.5 centimeters per minute."
6.  **[COMMUNICATION CYCLE - Every 20cm]** Verbal call-out cycle is repeated during descent.
7.  **[GSE OP]** "Weight on wheels confirmed by landing gear sensors. All jack load cells report less than 50 kilograms. Lowering sequence complete."

---

## 9. Phase 6: Post-Operation & Aircraft Release

### 9.1 Sub-Task 9.1: GSE Removal and Inspection
1.  **[ACTION]** Fully lower and retract all four jacks and remove adapters.
2.  **[ACTION]** Install QSM port protective covers. Torque to 5 Nm.
3.  **[ACTION]** Lead Tech and Safety Officers perform a detailed post-lift inspection of MJP-L and MJP-R, using a 10x magnifying glass and eddy current probes on critical fasteners.

### 9.2 Sub-Task 9.2: Final QSM Structural Verification
1.  **[QSM OP]** "Initiating Post-Lift Structural Health Scan."
2.  **[ACTION]** The 5-minute diagnostic checks for residual stress, micro-damage, and compares the final unloaded state to the pre-lift baseline.
3.  **[VERIFY]** The scan must return a "PASS" status.
    ```yaml
    Post_Lift_Health_Scan_Report:
      Timestamp: "2025-07-29T14:55:00Z"
      Result: "PASS"
      Residual_Stress_Delta: "-0.01%"
      New_Anomalies_Detected: 0
      Baseline_Correlation: "99.98%"
      Digital_Signature: "QS_HASH_..."
    ```
4.  **[LEAD TECH]** "Post-Lift QSM Scan is PASS. The aircraft is structurally clear."

---

## 10. Emergency Scenarios and Contingency Actions

| Scenario | QSM Alert | Primary Response | Contingency Plan |
|---|---|---|---|
| **Sync Failure** | SY-901 | **AUTO-HALT.** Identify the lagging/leading jack. | Use CJC's "Manual Micro-Correction" mode (0.1mm increments). If unresolved, deploy emergency shores and contact SERC. |
| **Torsion Overload**| LD-601 | **AUTO-HALT.** Analyze QSM data for the cause. | If caused by sync failure, see above. If by floor settling, deploy shores immediately and contact SERC. |
| **MJP Hydraulic Fail**| Pressure Loss Alert | **AUTO-HALT.** Remaining jacks hold attitude. | Deploy emergency shore under the SHP point nearest the failed jack within 5 minutes. Contact SERC for recovery. |
| **QSM Point Failure** | SE-101 | **AUTO-PAUSE.** System enters Degraded Mode. | **DO NOT CONTINUE LIFT.** Only authorized action is a slow, controlled lowering (0.5 cm/min) with heightened monitoring. |

---

## 11. Quality Assurance & Digital Record Finalization

1.  **[LEAD TECH]** Completes and digitally signs the Main Jacking Operation Log (Form `GAIA-QAO-F-0060-04`).
2.  **[QSM OP]** Archives the complete, encrypted QSM data package (DLT, lift log, alerts, health checks, final scan) to the aircraft's DIKE.
3.  **[QA CHECK]** An independent QA officer reviews the entire digital record, including the voice/video log, against this procedure. Any deviation is documented. QA officer provides the final digital signature for aircraft release from maintenance.
4.  **[LOG]** The usage cycle for points MJP-L and MJP-R is incremented by one in the aircraft's maintenance database.

---
## Document Control and Change History

**Change Record:**
| Version | Date | Author | Description |
|---|---|---|---|
| 4.0.0 | 2025-07-29 | A. Pelliccia | Definitive release incorporating Level 5 Critical Lift protocols, DLT, and extreme procedural granularity per GAIA-QAO standards. |

**Next Review Date:** 2026-07-29

---

**End of Document**
