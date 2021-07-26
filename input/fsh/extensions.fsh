Extension: ExtensionDatePartAbsentReason
Id: Extension-date-part-absent-reason
Title: "Extension - Date Part Absent Reason"
Description: "Provides a reason why an expected date part is missing."
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2021-05-05T07:28:27.952+00:00"
* ^meta.source = "#yE5VLP9LhHX2gryZ"
* ^url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-date-part-absent-reason"
* ^version = "0.1.0"
* ^date = "2021-07-14T20:35:01+00:00"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* . 0..*
* . ^short = "unknown | asked | temp | notasked | masked | unsupported | astext | error"
* . ^definition = "Provides a reason why the expected date part is missing."
* extension contains
    date-part 1..1 and
    absent-reason 1..1
* extension[date-part] only Extension
* extension[date-part] ^short = "Date part"
* extension[date-part] ^definition = "Date part for which there is a reason for missing data"
* extension[date-part].url only uri
* extension[date-part].value[x] 1..
* extension[date-part].value[x] only CodeableConcept
* extension[date-part].value[x] from ValueSetDatePart (required)
* extension[date-part].value[x] ^short = "Specifies the date part that is missing data"
* extension[date-part].value[x] ^binding.description = "ValueSetDatePart"
* extension[absent-reason] only Extension
* extension[absent-reason] ^short = "Date part absent reason"
* extension[absent-reason] ^definition = "The reason the specific date part is missing."
* extension[absent-reason].url only uri
* extension[absent-reason].value[x] 1..
* extension[absent-reason].value[x] only code
* extension[absent-reason].value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
* extension[absent-reason].value[x] ^label = "Used to specify why the normally expected content of the date-part element is missing."
* extension[absent-reason].value[x] ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[absent-reason].value[x] ^binding.extension[=].valueString = "DataAbsentReason"
* extension[absent-reason].value[x] ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* extension[absent-reason].value[x] ^binding.extension[=].valueBoolean = true
* extension[absent-reason].value[x] ^binding.description = "DataAbsentReason"
* url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-date-part-absent-reason" (exactly)

Extension: LocationJurisdictionId
Id: Location-Jurisdiction-Id
Title: "Location Jurisdiction Id"
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2020-10-23T21:59:46.639+00:00"
* ^meta.source = "#S4UJik7apd2owgyl"
* ^meta.security[0] = $security#everyone^read
* ^meta.security[+] = $security#user^dMG-NXHH^write
* ^meta.security[+] = $security#user^TKWZUCCU^read
* ^meta.security[+] = $security#user^dMG-NXHH^read
* ^meta.security[+] = $security#user^PNgAbFNH^read
* ^meta.security[+] = $security#user^PNgAbFNH^write
* ^kind = #resource
* ^context.type = #extension
* ^context.expression = "Location"
* url 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_16 (required)
* value[x] ^binding.description = "PHVS_USVitalRecordsJurisdictions_NCHS"

Extension: ObservationLocation
Id: Observation-Location
Title: "Observation Location"
Description: "The location of the observed phenomenon or entity that is the subject of the observation."
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-08-17T02:50:36.574+00:00"
* ^meta.source = "#KMOI4nvtMFmvU3lz"
* ^kind = #resource
* ^context.type = #extension
* ^context.expression = "Observation"
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
* ^version = "1.0"
* ^status = #draft
* ^publisher = "Hi3 Solutions"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* ^purpose = "Inclusion within city limits is used in determining juridictional responsiblity."
* ^context.type = #element
* ^context.expression = "Address"
* value[x] 1..1
* value[x] only Coding
* value[x] from $ViewValueSet.action_1 (required)
* value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"