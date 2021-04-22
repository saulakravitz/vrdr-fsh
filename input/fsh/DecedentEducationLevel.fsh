Profile: DecedentEducationLevel
Parent: Observation
Id: VRDR-Decedent-Education-Level
Title: "VRDR Decedent Education Level"
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2020-07-12T05:13:10.239+00:00"
* ^meta.source = "#kwSRexAJ0iXFfL5f"
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
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action (required)
* value[x] ^short = "value[x]"
* value[x] ^binding.description = "PHVS_DecedentEducationLevel_NCHS"

Instance: 9676ae27-2a89-4295-913c-0d6847300a3a
InstanceOf: DecedentEducationLevel
Title: "Decedent Education Level Example"
Description: "An instance example of the VRDR-Decedent-Education-Level resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:25:50.595+00:00"
* meta.source = "#j3yydvKd5etH1fHS"
* status = #final
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $ViewValueSet.action#PHC1453 "Bachelor's Degree"