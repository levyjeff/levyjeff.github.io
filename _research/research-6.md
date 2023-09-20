---
title: "National Center for Charitable Statistics IRS Core Files"
excerpt: "Center on Nonprofits and Philanthropy at the Urban Institute: Converting an outdated process of mixed manual and SQL code into a seamless 4,000-line Python script, in order to build the NCCS IRS Core Files."
collection: projects
date: January 01, 2016
---

This year-long project used entirely open-source software to rewrite the code used in the development of the annual NCCS Core Files, with a focus on generalization, reusability, and transparency. This will be much more cost effective while simultaneously offering increased accuracy and consistency to the nonprofit field at large.

Since 1989, the Urban Institute’s National Center for Charitable Statistics has assembled, cleaned and validated several datasets based around the IRS Form 990, collectively known as the Core Files. Each year, millions of rows of new raw IRS data are merged with other firm-level data, validated both programmatically and manually, and then standardized for easy comparison from year to year. In the last five months alone, these datasets have been viewed over 7,000 times.

The new process automates every step possible:

  1. Automatic downloading of raw data from both the IRS and the NCCS servers

  2. Automatic cleaning, renaming, merging, and calculating

  3. Automatic detection of anomalies that require manual investigation

  4. A validation tool that seamlessly interfaces with the anomaly output from step three

  5. Automatic incorporation of the fixed results from the validation tool in step four

Other key points:

  * Thorough review and rewriting of the code identified errors hidden by the old process

  * Revamped validation process allowed a dozen new columns to be tested for errors * Modular construction and documentation allows small fixes to one piece of the code to accommodate changes over time, without needing to re-edit the rest of the program

  * The integrated validation tool allowed us, for the first time, to release detailed data to our public users on exactly what errors we fixed manually and why
  
  *  In the interest of transparency, all of the code for the new process and validation tool is publicly available to external users for the first time

We currently estimate – excluding manual validation, which is necessary regardless of the process – that the upcoming 2018 release will require approximately 2-8 hours of work from one person, and that this trend will continue for the foreseeable future. The process has proven so successful that work has been extended to include the release of other NCCS products maintained through similar manual processes.

Overall, the project will allow CNP to sustainably supply this data of vital importance to the nonprofit research sector in a timelier fashion and at greatly decreased cost to Urban. Through this project, Urban also promotes an improved resource for the sector, offering a clear template for using transparent and reproducible methods to analyze publicly available data.

This project began in the fall of 2016, and concluded with the release of two years of the Core Files in September, 2017. It was done through extensive collaboration between IT and the Center on Nonprofits and Philanthropy, with the bulk of the work done by:

  * Jeff Levy, in Research Programming, was responsible for interpreting the old process and writing the new process (approximately 4,000 lines of Python) and interpreting the old process code, as well as testing and implementation

  * Brice McKeever, in CNP, was the primary source of expertise on the release data and its users, and was responsible for management of the validation process and verification of final release

With support, especially early in the process, from:

  * Nathan Dietz, in CNP, helped with understanding the release data and its users

  * Sybil Mendonca, in Research Programming, helped interpret the old process code

And with manual validation work from our 2017 CNP Interns:

  * Jennifer Lee, Joi James and Claire Boyd 
