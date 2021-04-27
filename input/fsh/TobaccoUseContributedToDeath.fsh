Profile: TobaccoUseContributedToDeath
Parent: Observation
Id: VRDR-Tobacco-Use-Contributed-To-Death
Title: "VRDR Tobacco Use Contributed To Death"
* ^meta.versionId = "15"
* ^meta.lastUpdated = "2020-07-21T22:41:29.615+00:00"
* ^meta.source = "#epAu4Mw1B00QLLbS"
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
* id 0..1
* id ^short = "id"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69443-0 "Did tobacco use contribute to death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_14 (required)
* value[x] ^label = "valueCodeableConcept"
* value[x] ^short = "valueCodeableConcept"
* value[x] ^alias[0] = "valueCodeableConcept"
* value[x] ^binding.description = "PHVS_ContributoryTobaccoUse_NCHS"

Instance: 4d0ce010-16f1-44f4-bbf8-3a2030e9de99
InstanceOf: TobaccoUseContributedToDeath
Title: "Tobacco Use Contributed To Death"
Description: "An instance example of the VRDR-Tobacco-Use-Contributed-To-Death resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T22:40:43.185+00:00"
* meta.source = "#cIJIQkq7Q2smLbo1"
* status = #final
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $sct#373066001 "Yes"