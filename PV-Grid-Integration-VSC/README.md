# Grid-Connected PV System Using VSC with PLL-Based Synchronization

**Modelling and Simulation of a 5 MW Grid-Connected Photovoltaic System**

This repository contains the design, simulation, and control analysis of a **5 MW Grid-Connected PV System**. The project utilizes a **Voltage Source Converter (VSC)** with an L-filter interface to convert variable DC solar power for reliable injection into a **690 V AC grid**, ensuring stability and power quality under varying irradiance conditions.

## 📖 Table of Contents
- [Project Overview](#-project-overview)
- [Key Features](#-key-features)
- [Simulation Highlights](#-simulation-highlights)
- [Repository Structure](#-repository-structure)
- [Getting Started](#-getting-started)
- [Dependencies](#-dependencies)
- [License](#-license)

## 🚀 Project Overview

This project implements a robust **grid-following control strategy** for renewable energy integration. By employing a cascaded vector control architecture in the **dq-reference frame**, the system effectively decouples active and reactive power control.

**Key Objectives:**
* **Validating Grid Synchronization:** Utilizing Phase-Locked Loop (PLL) for stable operation at 50 Hz.
* **Regulating DC-Link Voltage:** Maintaining a stable 1200 V DC bus to ensure efficient power transfer.
* **Testing Dynamic Response:** Analyzing system behavior under step changes in solar irradiance.
* **Ensuring Power Quality:** Maintaining unity power factor and low harmonic distortion.

**Target Applications:** Utility-scale solar farms, smart grid integration, and distributed energy resources (DERs).

## ✨ Key Features

### 1. Advanced Control Architecture
* **Cascaded Vector Control (dq-frame):** Decoupled control of active ($P$) and reactive ($Q$) power using independent current control loops.
* **PLL-Based Synchronization:** Robust grid synchronization ensuring phase alignment even during transient disturbances.
* **PI Controllers:** Optimized tuning of inner current loops and outer voltage loops for rapid regulation.

### 2. Comprehensive System Modeling
* **5 MW PV Array:** Modeling of non-linear PV characteristics ($I_{sc}$, $V_{oc}$) and MPPT parameters.
* **VSC & L-Filter:** Detailed switching model of the converter and output filter for realistic harmonic analysis.
* **Fault Ride-Through:** Validation of system stability during grid disturbances.

### 3. Performance Metrics
* **Grid Frequency:** 50 Hz synchronization.
* **DC-Link Voltage:** 1200 V regulation.
* **Transient Response:** Fast settling times for voltage and current.

## 📊 Simulation Highlights

### 1. Grid Synchronization & Stability
* **Steady-State Error:** Achieved **zero steady-state error** in grid synchronization at 50 Hz.
* **Transient Response:** Fast voltage settling time of **approx. 40 ms** post-disturbance.

### 2. Current Control & Tracking
* **Precision Tracking:** Inner current loops demonstrated **<5% overshoot** during step changes in solar irradiance.
* **Power Factor:** Maintained **unity power factor** throughout operation, ensuring efficient grid injection.

### 3. DC-Link Voltage Regulation
* **Robust Clamping:** DC-link voltage remained robustly clamped to the **1200 V reference**, minimizing ripple and ensuring converter safety.

## 📂 Repository Structure

```plaintext
├── PV_Grid_Integration_VSC.slx       # Main Simulink Model File
├── PV_Grid_Integration_VSC_code.m    # MATLAB Script for Parameters & Initialization
└── README.md                         # Project Documentation
```
## 🛠 Getting Started

### Running the Simulation
1.  Clone this repository or download the files.
2.  Open MATLAB and run the script `PV_Grid_Integration_VSC_code.m` to load system parameters into the workspace.
3.  Open `PV_Grid_Integration_VSC.slx` in Simulink.
4.  Run the simulation.
5.  View the scopes to analyze **Grid Voltage**, **Active Power**, and **DC-Link Voltage**.

## ⚙️ Dependencies
To run this simulation correctly, you will need:
* **MATLAB** (R2024b or later recommended)
* **Simulink**
* **Simscape Electrical** (Specialized Power Systems)
* **Control System Toolbox**

## 📜 License
This project is open-source and available under the **MIT License**.

