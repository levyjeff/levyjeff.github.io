---
title: "DC Courts Web Scraping"
excerpt: "Justice Policy Center at the Urban Institute: Responsibly automating millions of connections to the DC Courts website in order to retrieve and parse public data."
collection: research
date: January 01, 2016
---

The Washington DC court system maintains records of cases at dccourts.gov.  The data, while public record, was not available to researchers in any format beyond the web interface, which was an unnecessarily complex system using Java Server Faces.  The site used an elaborate sequence of get and post requests, returning only a limited number of results at a time.  In total, retrieving the records necessary for the researchers involved nearly 2 million total connections to the site.

In addition to managing the complciated interface, I wrote code to monitor the response times of the website being connected to.  It then throttles the speed of searching accordingly, to make sure that our searches were never playing a role in slowing down the site.

In response to my concerns over the legal and ethical issues involved in web scraping of this magnitude, the Chief Technology Officer, Senior Data Scientist, myself and outside legal council formualted an official automated data retrieval policy for the entire Urban Institute.
