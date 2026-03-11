# Flood Risk Exemptions Data Analysis

## Project Overview
This project explores and analyses a flood risk exemptions dataset using Python.  
The analysis aims to understand patterns in flood risk exemption records by examining data quality, trends over time, exemption types, and spatial distribution.

The analysis demonstrates practical data analysis skills, including:
- Data cleaning and quality assessment
- Exploratory data analysis
- Temporal trend analysis
- Spatial data visualization

This project was developed as part of a personal project that showcases analytical techniques relevant to environmental data analysis.

---

## Dataset
The dataset used in this analysis contains records of flood risk exemptions, including:

- Exemption type codes
- Exemption descriptions
- Decision dates
- Location information
- Geographic coordinates (latitude and longitude)

These records allow exploration of how exemption decisions vary across time, type, and geographic location.

---

## Key Analysis Steps

### 1. Data Overview
Initial inspection of the dataset to understand:
- Data structure
- Variable types
- Record counts

### 2. Data Quality Assessment
The following checks were conducted:
- Missing values analysis
- Duplicate records detection
- Data consistency checks

### 3. Exemption Type Analysis
Grouping and summarising exemption records to identify:
- Most common exemption types
- Frequency of different exemption codes

### 4. Temporal Analysis
Decision dates were converted into a datetime format to analyse:
- Yearly trends
- Changes in exemption decisions over time

### 5. Spatial Analysis
Using geographic coordinates to visualise the spatial distribution of flood risk exemptions.

Mapping was conducted using:
- GeoPandas
- Contextually basemaps

---

## Technologies Used

Python libraries used in this project include:

- **Pandas** – data manipulation and analysis
- **GeoPandas** – spatial data analysis
- **Matplotlib** – data visualisation
- **Contextily** – adding basemaps to spatial plots

---

## Project Structure
