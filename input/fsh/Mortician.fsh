Profile: Mortician
Parent: USCorePractitionerProfile
Id: VRDR-Mortician
Title: "VRDR Mortician"
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T20:53:15.849+00:00"
* ^meta.source = "#k32Cm7rzsaO3hzre"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2021-04-07T19:28:04+00:00"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"

Instance: 80db6f45-8a6d-4583-8a03-55a6663523c2
InstanceOf: Mortician
Title: "Mortician Example"
Description: "An instance example of the VRDR-Mortician resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T04:35:39.126+00:00"
* meta.source = "#Mze6QKeTUorpQzO2"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1122334455"
* name[0].use = #official
* name[0].family = "Last"
* name[0].given[0] = "FD"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Jr."
* qualification[0].identifier[0].value = "9876543210"
* qualification[0].code = $sct#309343006 "Physician"
* qualification[0].code.text = "Physician"