Coursera Getting and Cleaning Data Class
========================================
Project Repository
==================

Introduction
------------
This is the repository for my work on the class project.

Raw Data
--------
   The raw data used in the project is downloaded into the
"UCI HAR Dataset" directory by the run_analysis script
provided it doesn't already exist. The text files in that directory
explain the raw data structure. Start with README.txt.
Subsequent execution of the run_analysis script will use the
existing data.

Analysis Script and Tidy Dataset
--------------------------------
   The file run_analysis.R contains the script for converting
the raw data into a tidy dataset as descibed on the project
assessment page. The comments in the file explain the computations
and transformations performed for each step.
   Prior to running the script, the working directory MUST be
set to the the directory containing the run_analysis.R script.
When the script is executed, it will create or overwrite the
tidy.txt file. This file contains the results of the analysis,
and is the goal of the project.
   It was my decision to include only the variables for the
Euclidian magnitude of the three-dimensional signals and exclude
the individual components. The analysis script explains how to
include them if desired.

Code Book
---------
   The file CODEBOOK.md explains all the variables included
in the tidy.txt file including their units.

   

