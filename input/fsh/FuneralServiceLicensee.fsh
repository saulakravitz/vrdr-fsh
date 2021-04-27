Profile: FuneralServiceLicensee
Parent: USCorePractitionerRoleProfile
Id: VRDR-Funeral-Service-Licensee
Title: "VRDR Funeral Service Licensee"
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2020-07-12T20:24:29.100+00:00"
* ^meta.source = "#rniAzblHy27od5Yy"
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

Instance: 4b96759f-8395-4093-8417-e1ca3cd26f0a
InstanceOf: FuneralServiceLicensee
Title: "Funeral Service Licensee Example"
Description: "An instance example of the VRDR-Funeral-Service-Licensee resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T13:45:13.457+00:00"
* meta.source = "#6trg7JpciR7u5T8N"
* practitioner.reference = "Practitioner/80db6f45-8a6d-4583-8a03-55a6663523c2"
* organization.reference = "Organization/6f47da13-0c25-483b-8729-7b96716b17fc"
* telecom[0].system = #phone
* telecom[0].value = "716-873-1557"