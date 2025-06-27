# AMPEL360 BWB-Q100 - 00-60-10-01 Nose Jacking Points - Procedures

## Document Header & Identification

**Document Type:** Technical Manual - Maintenance Procedure  
**ATA Chapter:** 00-60-10-01  
**Aircraft Model:** AMPEL360 BWB-Q100 (AS-M-PAX-BW-Q1H)  
**System:** Nose Jacking Points (NJP-1, NJP-L, NJP-R)  
**Version:** 1.0.0  
**Date:** 2025-07-22  
**Classification:** GAIA-QAO Technical Documentation  

**GQOIS Identifier:** `AS-M-PAX-BW-Q1H-JACK-PTS-NOSE-V1R0`  
**INFOCODE:** `GAIA-QAO-TM-00601001-V1R0-20250722`  
**DIKE Reference:** `DIKE-JACK-PTS-NOSE-PROC-001`  

---

## Table of Contents

1. [General Information](#1-general-information)
2. [Critical Safety Precautions](#2-critical-safety-precautions)
3. [Required Personnel and Equipment](#3-required-personnel-and-equipment)
4. [Detailed Preparation](#4-detailed-preparation)
5. [Step-by-Step Jacking Procedure](#5-step-by-step-jacking-procedure)
    - [5.1 Phase 1: Positioning GSE](#51-phase-1-positioning-gse)
    - [5.2 Phase 2: Adapter Installation and Verification](#52-phase-2-adapter-installation-and-verification)
    - [5.3 Phase 3: Initial Load Application (Take-up)](#53-phase-3-initial-load-application-take-up)
    - [5.4 Phase 4: Main Lift to Target Height](#54-phase-4-main-lift-to-target-height)
    - [5.5 Phase 5: Securing the Aircraft at Height](#55-phase-5-securing-the-aircraft-at-height)
    - [5.6 Phase 6: Lowering the Aircraft](#56-phase-6-lowering-the-aircraft)
6. [Post-Operation Procedures](#6-post-operation-procedures)
7. [Emergency Procedures (Nose-Specific)](#7-emergency-procedures-nose-specific)
8. [Documentation and Quality Assurance](#8-documentation-and-quality-assurance)

---

## 1. General Information

### 1.1 Scope and Purpose
This document provides the detailed, step-by-step procedure for lifting and lowering the nose section of the AMPEL360 BWB-Q100 aircraft using the three designated nose jacking points:
- **NJP-1:** Primary Nose Jack Point (Centerline)
- **NJP-L:** Secondary Nose Jack Point (Left/Port)
- **NJP-R:** Secondary Nose Jack Point (Right/Starboard)

These procedures are applicable for tasks such as nose landing gear maintenance, sensor replacement, and other forward section structural work.

### 1.2 Mandatory Prerequisites
**ALL PERSONNEL** must have read, understood, and have access to the following documents before commencing this procedure:
- [`00-60-00-00`: Lifting and Shoring - Overview](#)
- [`00-60-10-00`: Jacking Points - General](#)

This procedure builds directly upon the general requirements and safety protocols established in those documents.

### 1.3 BWB Nose Section Context
The nose section of the BWB is critical for controlling the aircraft's pitch attitude on the ground. A failure during nose jacking can lead to a rapid and uncontrolled pitch-down motion, potentially causing a tail strike or catastrophic structural damage to the forward section. Extreme precision and continuous QSM monitoring are non-negotiable.

---

## 2. Critical Safety Precautions

**⚠️ CRITICAL WARNING: This procedure involves lifting a significant portion of the aircraft's weight. Failure to follow these steps precisely will lead to structural failure, severe equipment damage, and risk of death.**

**🚨 NOSE-SPECIFIC WARNING: An uncontrolled drop of the nose section can occur if a jack, adapter, or the NJP-1 point fails. The main and aft jacks must always be prepared for an emergency stabilization role, even if not actively lifting.**

- Adhere to all safety precautions listed in Sections 2 and 7 of `00-60-10-00`.
- Maintain the 15-meter safety exclusion zone at all times during the operation.
- Ensure the Central Jack Controller (CJC) is configured with the "Nose Lift" profile, which prioritizes stability and torsional monitoring.

---

## 3. Required Personnel and Equipment

### 3.1 Minimum Required Personnel
- **Lead Maintenance Technician (1):** Overall command, Level III certified.
- **QSM Operator (1):** Dedicated to monitoring the QIT, QSM certified.
- **GSE Operator (1):** Operates the CJC and jacks, Heavy Lift certified.
- **Safety Officer (1):** Monitors safety protocols and exclusion zone.

### 3.2 Required Ground Support Equipment (GSE)
- **Nose Jack (Primary):** 1x GAIA-GSE-J50Q (50-ton) for NJP-1.
- **Nose Jacks (Secondary):** 2x GAIA-GSE-J30Q (30-ton) for NJP-L and NJP-R.
- **Nose Jack Adapters:**
    - 1x GAIA-GSE-A50Q-NP for NJP-1.
    - 2x GAIA-GSE-A30Q-NS for NJP-L and NJP-R.
- **Main & Aft Jacks:** Must be in position as stabilizers, even if not lifting.
- **Central Jack Controller:** 1x GAIA-GSE-JCC-Q.
- **Quantum Interface Terminal:** 1x QIT-MAINT-01.

---

## 4. Detailed Preparation

### 4.1 Aircraft Configuration
- **[ACTION]** Perform all aircraft preparation steps as detailed in Section 3 of `00-60-00-00`.
- **[CHECK]** Ensure the nose landing gear bay, forward sensor arrays, and radome area are clear of all obstructions, tools, and non-essential equipment.
- **[CHECK]** Verify that the aircraft's Center of Gravity (CG) has been calculated for the specific maintenance configuration and is within the allowable limits for nose lifting.

### 4.2 Jacking Point Preparation
- **[ACTION]** Perform a complete inspection of jacking points NJP-1, NJP-L, and NJP-R as per the procedure in Section 4 of `00-60-10-00`.
- **[QA CHECK]** The Lead Technician must formally sign off on the inspection checklist (Form `GAIA-QAO-F-0060-02`) for all three points before GSE is positioned.

---

## 5. Step-by-Step Jacking Procedure

### 5.1 Phase 1: Positioning GSE
1.  **[ACTION]** Carefully position the 50-ton jack under the NJP-1 marking.
2.  **[ACTION]** Position the two 30-ton jacks under the NJP-L and NJP-R markings.
3.  **[CHECK]** Verify a minimum clearance of 30 cm (12 in) between the jack heads and the aircraft.
4.  **[ACTION]** Connect all jacks to the Central Jack Controller (CJC) and the CJC to ground power.

### 5.2 Phase 2: Adapter Installation and Verification
1.  **[ACTION]** Attach the GAIA-GSE-A50Q-NP adapter to the 50-ton jack head.
2.  **[ACTION]** Attach the GAIA-GSE-A30Q-NS adapters to the 30-ton jack heads.
3.  **[ACTION]** Raise the NJP-1 jack slowly until the adapter is 5 cm below the jacking point.
4.  **[CHECK]** Visually confirm perfect alignment between the adapter and the NJP-1 receptacle.
5.  **[ACTION]** Raise the jack to seat the adapter. Confirm positive mechanical lock with an audible click.
6.  **[ACTION]** Connect the adapter's QSM pigtail to the aircraft's NJP-1 QSM port.
7.  **[QSM]** On the QIT, initiate the `Point Health Check` for NJP-1.
8.  **[CHECK]** Verify a "HEALTH_CHECK_PASSED" status for NJP-1 on the QIT.
    ```yaml
    QSM_Health_Check_Result:
      Point_ID: "NJP-1"
      Timestamp: "2025-07-22T10:15:45Z"
      Overall_Status: "HEALTH_CHECK_PASSED"
      Authorization: "READY_FOR_LOAD"
    ```
9.  **[ACTION]** Repeat steps 3 through 8 for the NJP-L and NJP-R points and their respective adapters.
10. **[QA HOLD POINT]** Do not proceed until all three nose jacking points have passed their QSM Health Check and the Lead Technician has verified all adapters are correctly seated.

### 5.3 Phase 3: Initial Load Application (Take-up)
1.  **[ACTION]** The GSE Operator initiates the "Initial Load" sequence on the CJC.
2.  **[ACTION]** The CJC will automatically raise all three jacks simultaneously to apply a minimal take-up load of **1000 kg** on NJP-1 and **500 kg** on NJP-L and NJP-R.
3.  **[QSM]** The QSM system enters "Load Verification Mode." It compares the real-time measured stress against the predicted Finite Element Model (FEM) for this load case.
4.  **[CHECK]** The QSM Operator must verify that the stress deviation is less than 2%.
    ```yaml
    QSM_Load_Verification:
      Load_Case: "NOSE_TAKE_UP"
      Points_Active: [NJP-1, NJP-L, NJP-R]
      Predicted_Max_Stress: 15.2 MPa
      Measured_Max_Stress: 15.1 MPa
      Deviation: "-0.66%"
      Status: "PASS - NOMINAL"
    ```
5.  **[QA HOLD POINT]** The operation is paused. The Lead Technician, QSM Operator, and GSE Operator must all confirm the successful take-up before proceeding to the main lift.

### 5.4 Phase 4: Main Lift to Target Height
1.  **[ACTION]** Enter the target height (e.g., "Raise Nose 80 cm") into the CJC.
2.  **[ACTION]** The GSE Operator initiates the "Synchronized Lift" sequence.
3.  **[ACTION]** The CJC will raise all three nose jacks at a controlled, synchronized rate of **1.5 cm (0.6 in) per minute**.
4.  **[QSM]** The QSM Operator continuously monitors the real-time stress map on the QIT, paying close attention to torsional loads and stress levels around the forward structural cage.
5.  **[CHECK]** The Safety Officer continuously monitors the aircraft attitude, jack stability, and surrounding area.
6.  **[ACTION]** The CJC will automatically stop once the target height is reached.

### 5.5 Phase 5: Securing the Aircraft at Height
1.  **[ACTION]** Once the lift is complete, engage the mechanical safety collars on all three nose jacks.
2.  **[CHECK]** Verify that the collars are securely tightened and are now bearing the load.
3.  **[ACTION]** The GSE Operator will slightly lower the hydraulic pressure to fully seat the jacks on their safety collars.
4.  **[QSM]** The QSM system will be placed into "Static Monitoring Mode" to monitor structural health for the duration of the maintenance task.

### 5.6 Phase 6: Lowering the Aircraft
1.  **[ACTION]** Perform a pre-lowering inspection of the work area and aircraft.
2.  **[ACTION]** The GSE Operator raises the jacks slightly to transfer the load from the safety collars back to the hydraulic system.
3.  **[ACTION]** Fully disengage and retract the mechanical safety collars on all three jacks.
4.  **[ACTION]** The GSE Operator initiates the "Synchronized Lower" sequence on the CJC.
5.  **[ACTION]** The CJC will lower the nose at a controlled rate of **2.0 cm (0.8 in) per minute**.
6.  **[QSM]** The QSM Operator monitors the unloading stress patterns.
7.  **[CHECK]** The system will automatically stop when the QSM and jack load cells report zero load, indicating the aircraft is fully supported by its landing gear.

---

## 6. Post-Operation Procedures
1.  **[ACTION]** Fully lower and retract all jacks clear of the aircraft.
2.  **[ACTION]** Disconnect the QSM pigtails from the aircraft and remove the jack adapters.
3.  **[ACTION]** Immediately install the protective covers on the NJP-1, NJP-L, and NJP-R QSM ports.
4.  **[ACTION]** Perform a detailed post-use visual and QSM-assisted inspection of all three jacking points for any signs of stress or damage.
5.  **[ACTION]** Stow all GSE according to standard hangar procedures.
6.  **[ACTION]** Return the aircraft to its normal ground configuration. Remove placards, enable systems, and remove chocks as required.

---

## 7. Emergency Procedures (Nose-Specific)
In addition to the general procedures in `00-60-10-00`, the following are specific to nose jacking failures:
- **Hydraulic Leak at NJP-1:** The CJC will attempt to compensate with NJP-L and NJP-R. If unsuccessful, it will declare a "Loss of Stability" emergency and perform a controlled halt. Prepare to use emergency shoring.
- **QSM Failure at One Point:** The system will enter a "Degraded Mode." The lift will be paused. The operator may be authorized by engineering to proceed at a greatly reduced speed (0.5 cm/min) using data from adjacent sensors and classical backups, but lowering is the preferred action.
- **Sudden Drop/Adapter Slip:** This is a Level 3 emergency. Activate the master Emergency Stop. DO NOT attempt to "catch" the aircraft with the other jacks. Secure the scene and await the GAIA-QAO Structural Emergency Response Team.

---

## 8. Documentation and Quality Assurance
1.  **[ACTION]** The Lead Technician must complete and sign the Nose Jacking Operation Log (Form `GAIA-QAO-F-0060-03`).
2.  **[QSM]** The QSM Operator must download the complete QSM data log for the operation from the QIT and attach it to the aircraft's digital maintenance record (DIKE).
3.  **[QA CHECK]** A final QA verification must be performed, cross-referencing the completed forms with the QSM data to confirm all parameters remained within specified limits throughout the operation. The QA officer will then digitally sign the master record.
4.  **[LOG]** The usage cycle for points NJP-1, NJP-L, and NJP-R must be incremented by one in the aircraft's maintenance database.

---
## Document Control and Change History

**Change Record:**
| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | 2025-07-22 | A. Pelliccia | Initial release of the nose jacking procedure. |

**Next Review Date:** 2026-07-22

---

**End of Document**
