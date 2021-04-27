Profile: DeathPronouncementPerformer
Parent: USCorePractitionerProfile
Id: VRDR-Death-Pronouncement-Performer
Title: "VRDR Death Pronouncement Performer"
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T20:52:38.577+00:00"
* ^meta.source = "#PYa7KArWUL0ZifDQ"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-09"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* identifier 1..1
* name 1..1
* name ^short = "name"

Instance: 9102c234-53ca-4066-8452-42f3ba751c7d
InstanceOf: DeathPronouncementPerformer
Title: "Death Pronouncement Performer Example"
Description: "An instance example of the VRDR-Death-Pronouncement-Performer resource profile"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-25T23:44:52.912+00:00"
* meta.source = "#lSYCtKrCXgjr2pRs"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1122334455"
* name[0].use = #official
* name[0].family = "Last"
* name[0].given[0] = "Doctor"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Jr."