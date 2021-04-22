Extension: LocationJurisdictionId
Id: Location-Jurisdiction-Id
Title: "Location Jurisdiction Id"
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2020-10-23T21:59:46.639+00:00"
* ^meta.source = "#S4UJik7apd2owgyl"
* ^meta.security[0] = $security#everyone^read
* ^meta.security[1] = $security#user^dMG-NXHH^write
* ^meta.security[2] = $security#user^TKWZUCCU^read
* ^meta.security[3] = $security#user^dMG-NXHH^read
* ^meta.security[4] = $security#user^PNgAbFNH^read
* ^meta.security[5] = $security#user^PNgAbFNH^write
* ^version = "1.0.0"
* ^date = "2021-04-07T19:28:04+00:00"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* ^kind = #resource
* ^context[0].type = #extension
* ^context[0].expression = "Location"
* url 1..1
* url = "jurisdictionID" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_15 (required)
* value[x] ^binding.description = "PHVS_USVitalRecordsJurisdictions_NCHS"

Extension: ObservationLocation
Id: Observation-Location
Title: "Observation Location"
Description: "The location of the observed phenomenon or entity that is the subject of the observation."
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-08-17T02:50:36.574+00:00"
* ^meta.source = "#KMOI4nvtMFmvU3lz"
* ^version = "1.0.0"
* ^date = "2021-04-07T19:28:04+00:00"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* ^kind = #resource
* ^context[0].type = #extension
* ^context[0].expression = "Observation"
* value[x] 1..1
* value[x] only Reference
* value[x] ^definition = "Reference to a Location resource."

Extension: Within_City_Limits_Indicator
Id: Within-City-Limits-Indicator
Title: "VRDR Within City Limits Indicator"
Description: "Used to indicate whether or not an address is within city limits. The content of the component shall be a value from the value set Yes No Unknown.  "
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-28T05:25:44.083+00:00"
* ^meta.source = "#YSxzMcCyoWhr4StP"
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
* ^purpose = "Inclusion within city limits is used in determining juridictional responsiblity."
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] 1..1
* value[x] only Coding
* value[x] from $ViewValueSet.action_1 (required)
* value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"