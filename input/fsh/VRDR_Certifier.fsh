Profile: VRDR_Certifier
Parent: USCorePractitionerProfile
Id: VRDR-Certifier
Title: "VRDR Certifier"
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-07-12T20:51:27.558+00:00"
* ^meta.source = "#k50jR3VnygtJK6fU"
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
* ^context[0].type = #element
* ^context[0].expression = "Practitioner"
* id 0..1
* id ^short = "id"
* id ^definition = "MAY contain zero or one [0..1] id (CONF:4393-300)."
* name 1..1
* name ^short = "name"
* name ^definition = "SHALL contain exactly one [1..1] name (CONF:4393-303)."
* address 1..1
* address ^short = "address"
* address ^definition = "SHALL contain exactly one [1..1] address (CONF:4393-302)."
* qualification 1..1
* qualification only BackboneElement
* qualification ^short = "qualification"
* qualification ^definition = "SHALL contain exactly one [1..1] qualification, which SHALL be selected from ValueSet v2table0360,Version2.7 http://hl7.org/fhir/ValueSet/v2table0360,Version2.7 DYNAMIC (CONF:4393-304)."
* qualification.identifier 1..1
* qualification.identifier ^short = "identifier"
* qualification.identifier ^definition = "This qualification SHALL contain exactly one [1..1] identifier (CONF:4393-305)."
* qualification.code 1..1
* qualification.code from $ViewValueSet.action_3 (required)
* qualification.code ^binding.description = "Identifier Type Codes"

Instance: cb1219bc-785f-431c-9f56-b8fbbe78bc4d
InstanceOf: VRDR_Certifier
Title: "Certifier Instance Example"
Description: "An instance example of a Certifier resource profile. This example is a certifying physician."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T01:29:51.589+00:00"
* meta.source = "#oHTVk2uNpGANjZpI"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "2233445511"
* name[0].use = #official
* name[0].family = "Last"
* name[0].given[0] = "Doctor"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Jr."
* address[0].line[0] = "11 Example Street"
* address[0].line[1] = "Line 2"
* address[0].city = "Bedford"
* address[0].district = "Middlesex"
* address[0].state = "MA"
* address[0].postalCode = "01730"
* address[0].country = "United States"
* qualification[0].identifier[0].value = "789123456"
* qualification[0].code = $sct#309343006 "Physician"