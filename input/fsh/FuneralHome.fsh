Profile: FuneralHome
Parent: USCoreOrganizationProfile
Id: VRDR-Funeral-Home
Title: "VRDR Funeral Home"
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2020-07-12T20:48:16.230+00:00"
* ^meta.source = "#f0OiHR37z6PHVn6U"
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
* id 0..1
* id ^short = "id"
* identifier 0..*
* type 1..1
* type = $organization-type#bus "Non-Healthcare Business or Corporation" (exactly)
* type ^short = "type"
* name 1..1
* name ^short = "name"
* address 1..1
* address ^short = "address"

Instance: 6f47da13-0c25-483b-8729-7b96716b17fc
InstanceOf: FuneralHome
Title: "Funeral Home Example"
Description: "An instance example of the VRDR-Funeral-Home resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T13:44:54.456+00:00"
* meta.source = "#rcCxHuRNpH2lnKn5"
* active = true
* type[0] = $organization-type#bus "Non-Healthcare Business or Corporation"
* name = "Smith Funeral Home"
* address[0].line[0] = "1011010 Example Street"
* address[0].line[1] = "Line 2"
* address[0].city = "Bedford"
* address[0].district = "Middlesex"
* address[0].state = "MA"
* address[0].postalCode = "01730"
* address[0].country = "United States"