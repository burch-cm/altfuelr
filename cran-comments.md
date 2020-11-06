## Test environments  
* local Windows 10.0.18362 install, R 4.0.1
* win-builder (devel and release)
* Windows Server 2008 R2 SP1, R-devel, 32/64 bit (via R-hub)


## R CMD check results  
There were no ERRORs or WARNINGs

There were no NOTEs
  
## Corrections of Issues from Previous Sumbission  

Issue: Please add a web reference for the API in the form <https:.....> to the
description of the DESCRIPTION file with no space after 'https:' and
angle brackets for auto-linking.

Correction: Web reference to API URL included in DESCRIPTION and README.md files.


Issue: Please always add all authors, contributors and copyright holders in the
Authors@R field with the appropriate roles. e.g.: Christopher Burch

Correction: Previously the DESCRIPTION file mixed the author's given name and 
nickname. The roles field has been updated to remove the author's nickname and 
now only lists the given name.
