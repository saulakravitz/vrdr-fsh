Profile: DecedentAge
Parent: Observation
Id: VRDR-Decedent-Age
Title: "VRDR Decedent Age"
Description: "The decedent's chronological age at the time of death. When present, the effective date of this observation shall be equal to the decedent's date of death. Age is derived as the difference in time between the decedent's death date and birth date. When age is less than one day then unit shall be minutes, when age is less than one year then unit shall be days, else unit shall be years."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2020-08-13T15:16:47.947+00:00"
* ^meta.source = "#NKNNLXhFI9eyzWz7"
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
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#30525-0 "Age" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity

Instance: df5a2807-e0b2-4971-9820-efdbbbfcef7b
InstanceOf: DecedentAge
Title: "Decedent Age Example"
Description: "An instance example of the VRDR-Decedent-Age resource profile. In this example, the decedent is identified as 79 years in age."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-08-13T15:20:48.039+00:00"
* meta.source = "#vIFk7iaTriXremhe"
* status = #final
* code = $loinc#30525-0 "Age"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectiveDateTime = "2020-01-02"
* valueQuantity.value = 79
* valueQuantity.unit = "a"