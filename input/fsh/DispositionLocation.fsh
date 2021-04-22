Profile: DispositionLocation
Parent: USCoreLocation
Id: VRDR-Disposition-Location
Title: "VRDR Disposition Location"
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2020-08-17T03:44:29.675+00:00"
* ^meta.source = "#R0JjlUP3XBmks31q"
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
* name 1..1
* name ^short = "name"
* description 0..1
* description ^short = "description"
* type 0..1
* type ^short = "type"
* type.coding from $v3-ServiceDeliveryLocationRoleType (extensible)
* type.coding ^binding.description = "v3.ServiceDeliveryLocationRoleType"
* address 1..1
* address ^short = "address"
* physicalType 1..1
* physicalType ^short = "physicalType"
* physicalType.coding from LocationType (required)
* physicalType.coding ^binding.description = "LocationType"

Instance: bbe38248-9a8d-414f-996e-58d5fc9eb800
InstanceOf: DispositionLocation
Title: "Disposition Location Example"
Description: "Instance example of the VRDR-Disposition-Location resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T20:39:55.120+00:00"
* meta.source = "#yZiQmsI8g0FQZ7SK"
* name = "Bedford Hospital"
* type[0] = $v3-RoleCode#HOSP "Hospital"
* address.line[0] = "603 Example Street"
* address.line[1] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* physicalType = $location-physical-type#bu "Building"