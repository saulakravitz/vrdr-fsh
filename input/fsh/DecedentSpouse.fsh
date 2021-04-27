Profile: DecedentSpouse
Parent: RelatedPerson
Id: VRDR-Decedent-Spouse
Title: "VRDR Decedent Spouse"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-11T22:49:29.228+00:00"
* ^meta.source = "#WNGgSjS3ZSZMbp8W"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-10"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "patient"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#SPS "spouse" (exactly)
* relationship ^short = "relationship"
* name 1..1

Instance: 962fded4-b90a-44f7-950e-3832011ad65f
InstanceOf: DecedentSpouse
Title: "Decedent Spouse Example"
Description: "An instance example of the VRDR-Decedent-Spouse example."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:39:30.286+00:00"
* meta.source = "#PGjsDV0MqNsjbXzo"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship[0] = $v3-RoleCode#SPS "spouse"
* name[0].family = "Last"
* name[0].given[0] = "Spouse"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Ph.D."