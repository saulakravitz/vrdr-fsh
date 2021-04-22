Profile: InterestedParty
Parent: USCoreOrganizationProfile
Id: VRDR-Interested-Party
Title: "VRDR Interested Party"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-12T20:50:19.198+00:00"
* ^meta.source = "#eGOxlRQeMmKTfK2R"
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
* identifier 1..1
* identifier ^short = "identifier"
* active 1..1
* active ^short = "active"
* type 1..1
* type only CodeableConcept
* type from OrganizationType (required)
* type ^short = "type"
* name 1..1
* name ^short = "name"
* address 1..1
* address ^short = "address"
* partOf 0..1
* partOf only Reference(InterestedParty)
* partOf ^short = "partOf"

Instance: 1a110397-936f-4be4-ab10-2caed226569d
InstanceOf: InterestedParty
Title: "Interested Party Instance Example"
Description: "An instance example of the Interested Party resource profile. In the example, Example Hospital from MA is an active Healthcare Provider interested party."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T20:13:30.256+00:00"
* meta.source = "#WNc8XRJBmrGtNJO7"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1010101"
* active = true
* type[0] = $organization-type#prov "Healthcare Provider"
* name = "Example Hospital"
* address[0].line[0] = "10 Example Street"
* address[0].line[1] = "Line 2"
* address[0].city = "Bedford"
* address[0].district = "Middlesex"
* address[0].state = "MA"
* address[0].postalCode = "01730"
* address[0].country = "United States"