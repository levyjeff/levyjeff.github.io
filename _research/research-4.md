---
title: "Education Data"
excerpt: "Income and Benefits Policy Center at the Urban Institute: Using Python to seamlessly maintain a network of datasets across Stata, SQL and S3 formats."
collection: projects
date: January 01, 2016
---

Several hundred files that are kept in Stata's proprietary .dta format, for use by researchers studying education policy, must also be maintained in an S3 bucket and in a SQL database.  The files are relied upon by both internal and external researchers, and are updated regularly, so the process must be seamless and not subject to human error.  To this end, I wrote a program in Python that reads in the Stata files and then authenticates and checks whether they need updating in the SQL database or on S3, then handles proper settings (such as primary keys and datatypes) and writes the updates.  

This allows the researchers to only worry about maintaining the Stata files, as they normally would, and then run a single Python script in order to update access for everyone.  This project is not yet released to the public.
