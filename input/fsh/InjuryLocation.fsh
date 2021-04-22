Profile: InjuryLocation
Parent: USCoreLocation
Id: VRDR-Injury-Location
Title: "VRDR Injury Location"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-12T20:16:47.199+00:00"
* ^meta.source = "#4i6LdZAxlBKqB1kU"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-13"
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
* name 1..1
* name ^short = "name"
* description 1..1
* description ^short = "description"
* address 1..1
* address ^short = "address"

Instance: 4b863da8-1bb5-4b17-9be2-4ea39b5d3a2a
InstanceOf: InjuryLocation
Title: "Injury Location"
Description: "An instance example of the VRDR-Injury-Location resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T21:43:41.124+00:00"
* meta.source = "#8kCZvAXky7HUqlzZ"
* name = "Example Injury Location Name"
* description = "Example Injury Location Description"
* address.line[0] = "781 Example Street"
* address.line[1] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"