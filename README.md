# IoT-Induction-Motor-Fault-Detection
# IoT-Based Automated Fault Detection System for Induction Motors
**Project by Misty Porcupine**

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
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/96833319-e60d-4a34-8b4f-e2576839a0a1" />

thingspeak screenshot
<img width="787" height="251" alt="image" src="https://github.com/user-attachments/assets/c55202b9-5852-4dad-8fa7-e2fee7a72149" />
<img width="413" height="247" alt="image" src="https://github.com/user-attachments/assets/1867f4e4-9973-41f0-9acf-63b4a4ede9f0" />

Blynk app screenshot
<img width="685" height="348" alt="image" src="https://github.com/user-attachments/assets/750d60d0-1791-4d86-88ea-5419f6e1c604" />

#2
Overvoltage fault simulink model
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/fd92d635-4e7e-455f-8021-da4b2b8b49c6" />

thingspeak screenshot
<img width="758" height="242" alt="image" src="https://github.com/user-attachments/assets/b023501c-400d-4bb9-baf4-94cf5ad574b0" />
<img width="399" height="246" alt="image" src="https://github.com/user-attachments/assets/a68c1a04-f6d5-4377-980a-1b3000666ee6" />

Blynk app screenshot
<img width="601" height="345" alt="image" src="https://github.com/user-attachments/assets/2c8749b8-7af9-406f-8a4f-735a4046b194" />






