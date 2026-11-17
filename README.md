# IoT-Induction-Motor-Fault-Detection
# IoT-Based Automated Fault Detection System for Induction Motors
**Project by Peter Atandi**

A real-time condition monitoring and fault detection simulation for three-phase induction motors built in **MATLAB/Simulink (R2024b)** and integrated with **ThingSpeak** and **Blynk IoT**.

## System Overview
Industrial induction motors are vulnerable to electrical and mechanical stresses that cause costly downtime if undetected. This system models motor behavior under normal and fault conditions, evaluates fault thresholds in real time, and streams live telemetry to cloud dashboards for remote monitoring.

### Fault Scenarios Covered
* **`overvoltage fault/`**: Simulates supply overvoltage conditions, tracks stator RMS current, and triggers a fault trip flag (`1`) when thresholds are exceeded.
* **`mechanical fault/`**: Simulates sudden mechanical load torque (`Tm`) overload conditions, detects abnormal current rise, and triggers the protection trip flag (`1`).

## Architecture & Data Flow
`Simulink Motor Model` ➔ `Zero-Order Hold & MATLAB Function` ➔ `sendToThingSpeak.m` ➔ **ThingSpeak** (Historical Logging) & **Blynk Cloud** (`V1`: RMS Current, `V2`: Trip Status)

## How to Run Locally
1. Clone or download this repository and open **MATLAB R2024b** (with Simulink and the ThingSpeak Support Toolbox installed).
2. Open either `overvoltage fault` or `mechanical fault` as your Current Folder in MATLAB.
3. Open `sendToThingSpeak.m` and replace `YOUR_THINGSPEAK_WRITE_API_KEY`, `channelID`, and `YOUR_BLYNK_AUTH_TOKEN` with your own credentials.
4. Open the `.slx` model and click **Run** (`Stop Time = 20`).

## Screenshots
#1.
mechanical fault simulink model
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/d4c1947f-148f-41e0-bd17-c6c11b30dd40" />

mechanical fault scope 
<img width="1920" height="869" alt="Mechanical fault scope" src="https://github.com/user-attachments/assets/cb8f1cb7-8dfc-453e-9c37-5d86734de4cc" />

thingspeak screenshot
<img width="381" height="250" alt="image" src="https://github.com/user-attachments/assets/6bbffda8-d86a-47c6-a830-fc9911228d2b" />
<img width="791" height="250" alt="image" src="https://github.com/user-attachments/assets/824a9f0f-b65e-4470-a51f-56b5260dc886" />

Blynk app screenshot
<img width="685" height="348" alt="image" src="https://github.com/user-attachments/assets/750d60d0-1791-4d86-88ea-5419f6e1c604" />

#2
Overvoltage fault simulink model
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/6bb8cbf1-b2d7-4314-a4fc-d7d8949b5e92" />

overvoltage trip signal scope
<img width="1902" height="896" alt="overvoltage trip signal scope" src="https://github.com/user-attachments/assets/7d7d91a0-5a37-4132-9e1f-2c4fd2e3ea75" />

thingspeak screenshot
<img width="814" height="260" alt="image" src="https://github.com/user-attachments/assets/cc5f753b-9308-49d4-8d94-fbbed3653b34" />

<img width="399" height="246" alt="image" src="https://github.com/user-attachments/assets/a68c1a04-f6d5-4377-980a-1b3000666ee6" />


Blynk app screenshot
<img width="601" height="345" alt="image" src="https://github.com/user-attachments/assets/2c8749b8-7af9-406f-8a4f-735a4046b194" />


© 2026 Peter Atandi. All rights reserved. Shared for academic and portfolio demonstration only.



