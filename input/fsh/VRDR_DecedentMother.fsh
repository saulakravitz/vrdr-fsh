Profile: VRDR_DecedentMother
Parent: RelatedPerson
Id: VRDR-Decedent-Mother
Title: "Decedent Mother"
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2020-08-16T23:25:47.997+00:00"
* ^meta.source = "#K3ByEHNHauqovaBo"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-04-07T19:28:04+00:00"
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
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#MTH "mother" (exactly)
* name 1..1
* address 0..1

Instance: 89ababc6-8c2a-4e76-9f53-8677822f54a9
InstanceOf: VRDR_DecedentMother
Title: "Decedent Mother Example"
Description: "An instance example of the VRDR-Decedent-Mother resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:49:29.537+00:00"
* meta.source = "#Ig5XrcHuNGzpbSuz"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship[0] = $v3-RoleCode#MTH "mother"
* name[0].family = "Maiden"
* name[0].given[0] = "Mother"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Dr."