[Previous Page - Death Reporting Dataflow](death_reporting_dataflow.html)

The scope of this VRDR FHIR IG is the reporting of incidents of death by State Registrars to the NCHS. The data content of this dataflow contains an aggregation of data collected in preceding dataflows and used in additional dataflows related to the secondary use of death information such as clinical research, law enforcement, and health policy determination. 

<center>
<table><tr><td><img src="VRDRFHIRIGScope.png" style="width:100%;"/></td></tr></table>
</center>

While the scope of this IG is limited to death reporting by State Registrars to the NCHS, the FHIR Resource Profiles have been designed with the intent of being reusable in related preceding and antecedent dataflows.

The actors supported in this implementation guide include:

* Regional Electronic Death Registration System (EDRS)
* The National Vital Statistics System (NVSS)
* Secondary Users of Death Information (Secondary Users)

<table><tr><td><img src="Sequences.png" style="width:100%;"/></td></tr></table>

The sequence of exchanges supported in this implementation guide include:

*** (5) Draft death certificate document from regional EDRS to the NVSS.**

In this exchange the regional EDRS sends a draft of the death certificate document with text values for causes of death and decedent race/ethnicity to the NVSS to be encoded.

*** (6) Standardized cause of death and decedent race/ethnicity coding from the NVSS to regional EDRS.**

In this exchange the NVSS returns the draft death certificate document with coded values for causes of death and decedent race/ethnicity to the regional EDRS.

*** (7) Final death certificate document from regional EDRS to the NVSS.**

In this exchange the regional EDRS send the final death certificate to the NVSS. This exchange also supports the sending of a revised, amended, or replacement death certificate.

*** (8) Death certificate document from the NVSS to death information secondary users.**

In this exchange the NVSS sends a copy of the death certificate document it received from the regional EDRS to secondary users of death information.

*** (9) Death certificate document from regional EDRS to death information secondary users.**

In this exchange the regional EDRS send a copy of the final death certificate document to secondary users of death information.

[Next Page - Profiles](profiles.html)