Profile: VRDR_DeathDate
Parent: Observation
Id: VRDR-Death-Date
Title: "VRDR_DeathDate"
* ^meta.versionId = "19"
* ^meta.lastUpdated = "2020-08-17T16:46:05.221+00:00"
* ^meta.source = "#cWH5FpaiGE9NuPNq"
* ^version = "1.0.0"
* ^date = "2021-04-07T19:28:04+00:00"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "Observation.extension.url"
* extension ^slicing.rules = #open
* extension contains deathLocation 0..1
* extension[deathLocation].url 1..1
* extension[deathLocation].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Observation-Location" (exactly)
* extension[deathLocation].value[x] 1..1
* extension[deathLocation].value[x] only Reference(DeathLocation)
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#81956-5 "Date+time of death" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 1..1
* effective[x] only dateTime
* performer 0..1
* performer only Reference(DeathPronouncementPerformer)
* value[x] 1..1
* value[x] only dateTime
* note 0..1
* method 0..1
* method = $sct#414135002 "Estimated" (exactly)
* component 0..1
* component.code 1..1
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]" (exactly)
* component.value[x] 1..1
* component.value[x] only dateTime

Instance: b531cbf7-6290-424c-8155-0549c3fb3243
InstanceOf: VRDR_DeathDate
Title: "Death Date Example"
Description: "An instance example of the VRDR-Death-Date resource profile. In this example, the date and time of death is 2018-02-20T16:48:06-05:00. The Date and time pronounced dead is also  2018-02-20T16:48:06-05:00."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T05:13:38.793+00:00"
* meta.source = "#JE1pSryeOBG0VdGY"
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectiveDateTime = "2018-02-19T16:48:06-05:00"
* performer[0].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* valueDateTime = "2018-02-20T16:48:06-05:00"
* component[0].code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component[0].valueDateTime = "2018-02-20T16:48:06-05:00"