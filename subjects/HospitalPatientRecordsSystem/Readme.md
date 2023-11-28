# Hospital Patient Records System

## Objectives
Develop a basic Hospital Patient Records Management System in Go. This system should be capable of reading patient records from a file, processing them, and writing the updated information back to a file.

## Instructions
### Data Structures
- Design a Patient structure that can hold the following information:
  - Name
  - Age
  - Health Condition (Critical, Serious, Fair, Good)
  - Patient ID
- Create a Hospital structure that contains :
  - a Hospital ID.
  - a list of Patients.
## File Manipulation
- Implement a function to load a hospital's patient list from a CSV file. This function should parse the file and return a Hospital instance. If the file does not exist, it should return an error.
This function must accept a filename parameter.
- Implement a function to save the current state of the hospital's patient list in a CSV file. The function should return an error if there are issues saving the file.
## Features
- Write a function to calculate and return the average age of patients in the hospital.
- Write a function to update the health condition of a patient in the structure.
- Write a function to return a list of patients ordered by the severity of their health condition in descending order.
## Evaluation Criteria
- Implementation of the features.
- Readability and clarity of the code.
- Effective error management.
- Ability to research information and consult documentation.
## Constraints
- You are not permitted to use ChatGPT or other AI tools to complete this exercise.