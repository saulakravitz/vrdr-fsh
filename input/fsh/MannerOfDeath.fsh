Profile: MannerOfDeath
Parent: Observation
Id: VRDR-Manner-of-Death
Title: "VRDR Manner of Death"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-22T17:56:17.870+00:00"
* ^meta.source = "#LnHtbLbU4GqNgDNw"
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
* code = $loinc#69449-7 "Manner of death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "subject"
* performer 1..1
* performer only Reference(Practitioner)
* performer ^short = "performer"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_13 (required)
* value[x] ^binding.description = "PHVS_MannerOfDeath_NCHS"

Instance: d7c2e459-c7ca-415c-a38c-f78a0f0c5813
InstanceOf: MannerOfDeath
Title: "Manner of Death Example"
Description: "An instance example of the VRDR-Manner-of-Death resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T18:51:08.127+00:00"
* meta.source = "#hVmaJTwX1XDu5R6Q"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performer[0].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* valueCodeableConcept = $sct#7878000 "Accidental death"