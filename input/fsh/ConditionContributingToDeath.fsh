Profile: ConditionContributingToDeath
Parent: USCoreCondition
Id: VRDR-Condition-Contributing-To-Death
Title: "VRDR Condition Contributing To Death"
Description: "The Condition Contributing to Death profile is used to identify factors contributing to the cause of death as asserted by the death certifier. The Condition Contributing To Death profile builds upon the FHIR condition resource."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2020-07-11T03:07:27.108+00:00"
* ^meta.source = "#XvtBGofn6sv4I5A4"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-08"
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
* category 1..1
* category only CodeableConcept
* category = $sct#16100001 "Death diagnosis" (exactly)
* code 1..1
* code only CodeableConcept
* code ^short = "code"
* code ^comment = "The ConditionContributintgToDeath.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* code.coding 0..*
* code.coding.code 1..1
* code.coding.code only code
* code.coding.code from $ViewValueSet.action_2 (required)
* code.coding.code ^binding.description = "PHVS_CauseOfDeath_ICD-10_CDC"
* subject only Reference(Decedent)
* asserter 1..1
* asserter only Reference(VRDR_Certifier)

Instance: 56b8ce2e-64f8-450b-8885-0699a53fc781
InstanceOf: ConditionContributingToDeath
Title: "Condition Contributing To Death Example"
Description: "An instance example of the VRDR-Condition-Contributing-To-Death resource profile. In this example, the condition is noted as text only. This is typical of a death record outbound from a jurisdictional EDRS to the NCHS."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T04:48:02.057+00:00"
* meta.source = "#lMNehUUKrIGcu4us"
* category[0] = $sct#16100001 "Death diagnosis"
* code.text = "Example Contributing Conditions"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* asserter.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"