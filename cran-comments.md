## Test environments  
* local Windows 10.0.18362 install, R 4.0.1
* win-builder (devel and release)
* Windows Server 2008 R2 SP1, R-devel, 32/64 bit (via R-hub)


## R CMD check results  
There were no ERRORs or WARNINGs

There was one NOTE:

* checking CRAN incoming feasibility ... NOTE
  Possibly mis-spelled words in DESCRIPTION:
    AFL (12:9)
    NREL (2:37, 11:42, 13:62)
  
These are not misspellings, but are acronyms associated with the 
National Renewable Energy Laboratory and its associated Alternative Fuel Locator
tool, to which this package provides API access.
