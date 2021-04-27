Profile: DeathCertificateReference
Parent: DocumentReference
Id: VRDR-Death-Certificate-Reference
Title: "VRDR Death Certificate Reference"
Description: "The Death Certificate Reference profile is used to enable interested parties to assign local identifiers to the death certificate document. The Death Certificate Reference profile builds upon the FHIR Document Reference resource."
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2020-08-16T20:39:12.490+00:00"
* ^meta.source = "#drWDxwGIRH58zfD6"
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
* identifier ^short = "identifier"
* identifier ^definition = "SHALL contain exactly one [1..1] identifier (CONF:4393-392)."
* status 1..1
* status only code
* status from DocumentReferenceStatus (required)
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status, which SHALL be selected from ValueSet DocumentReferenceStatus http://hl7.org/fhir/ValueSet/DocumentReferenceStatus DYNAMIC (CONF:4393-394)."
* status ^binding.description = "Document Type Value Set"
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* type ^short = "type"
* type ^definition = "SHALL contain exactly one [1..1] type=\"\"64297-5\"\"(CONF:4393-396)."
* date 1..1
* author 1..1
* author only Reference(InterestedParty)
* author ^short = "author"
* author ^definition = "SHALL contain exactly one [1..1] author=\"VRDR Interested Party\"(CONF:4393-390)."
* content 1..1
* content.attachment 1..1
* content.attachment.url 1..1
* content.attachment.url only url

Instance: bafe16b9-8b50-47e1-829a-a7dbafb45e05
InstanceOf: DeathCertificateReference
Title: "Death Certificate Reference Example"
Description: "An instance example of the VRDR-Death-Certificate-Reference resource profile."
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-08-18T14:05:00.835+00:00"
* meta.source = "#8iRGOaZ9QyOQtkXP"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:bafe16b9-8b50-47e1-829a-a7dbafb45e05"
* status = #current
* type = $loinc#64297-5 "Death certificate"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* date = "2005-12-24T09:43:41+11:00"
* author[0].reference = "Organization/1a110397-936f-4be4-ab10-2caed226569d"
* content[0].attachment.url = "urn:uuid:7a4613cc-b306-49b2-a428-9f8e67e67a85"