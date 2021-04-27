Profile: ExaminerContacted
Parent: Observation
Id: VRDR-Examiner-Contacted
Title: "VRDR Examiner Contacted"
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-07-12T05:20:58.180+00:00"
* ^meta.source = "#zYvtsisGRgdoIq1u"
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
* code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_6 (required)
* value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"

Instance: 4aed1450-ab2d-4cb9-858f-227b127323a6
InstanceOf: ExaminerContacted
Title: "Examiner Contacted Example"
Description: "An instance example of the VRDR-Examiner-Contacted resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T23:10:29.517+00:00"
* meta.source = "#0UwaugWPuvybDV66"
* status = #final
* code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $v2-0136#Y "Yes"