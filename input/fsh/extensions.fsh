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
* value[x] from $ViewValueSet.action_2 (required)
* value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"

Extension: ExtensionPartialDatePartAbsentReason
Id: VRDR-Partial-date-part-absent-reason
Title: "Extension - Partial Date Part Absent Reason"
Description: "Provides values of a partial date along with the reason one or more expected date part is missing."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2021-08-09T06:48:49.451+00:00"
* ^meta.source = "#83d0qyyAShJvOTBk"
* ^version = "0.1.0"
* ^date = "2021-08-05"
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
* . ^short = "Partial Date"
* . ^definition = "Provides a partial date and the reason one or more expected date part is missing."
* extension contains
    date-year 0..1 and
    date-year-absent-reason 0..1 and
    date-month 0..1 and
    date-month-absent-reason 0..1 and
    date-day 0..1 and
    date-month-absent-reason 0..1
* extension[date-year] only Extension
* extension[date-year] ^short = "Date Year"
* extension[date-year] ^definition = "The year portion (YYYY) of the partial date."
* extension[date-year].url only uri
* extension[date-year].value[x] 1..
* extension[date-year].value[x] only integer
* extension[date-year].value[x] ^definition = "Specifies the year portion of a partial date"
* extension[date-year].value[x] ^maxLength = 4
* extension[date-year-absent-reason] only Extension
* extension[date-year-absent-reason] ^short = "Date year absent reason"
* extension[date-year-absent-reason] ^definition = "The reason the year portion of a partial date is missing."
* extension[date-year-absent-reason].url only uri
* extension[date-year-absent-reason].url = "year-absent-reason" (exactly)
* extension[date-year-absent-reason].value[x] 1..
* extension[date-year-absent-reason].value[x] only code
* extension[date-year-absent-reason].value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
* extension[date-year-absent-reason].value[x] ^label = "Used to specify why the year portion of a partial date is missing."
* extension[date-year-absent-reason].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[date-year-absent-reason].value[x] ^binding.extension.valueString = "DataAbsentReason"
* extension[date-year-absent-reason].value[x] ^binding.description = "data-absent-reason"
* extension[date-month] only Extension
* extension[date-month] ^short = "Date Month"
* extension[date-month] ^definition = "The month portion (MM) of the partial date."
* extension[date-month].url only uri
* extension[date-month].value[x] 1..
* extension[date-month].value[x] only integer
* extension[date-month].value[x] ^definition = "Specifies the month portion of a partial date"
* extension[date-month].value[x] ^minValueInteger = 1
* extension[date-month].value[x] ^maxValueInteger = 12
* extension[date-month].value[x] ^maxLength = 2
* extension[date-month-absent-reason] only Extension
* extension[date-month-absent-reason] ^short = "Date month absent reason"
* extension[date-month-absent-reason] ^definition = "The reason the month portion of a partial date is missing."
* extension[date-month-absent-reason].url only uri
* extension[date-month-absent-reason].url = "month-absent-reason" (exactly)
* extension[date-month-absent-reason].value[x] 1..
* extension[date-month-absent-reason].value[x] only code
* extension[date-month-absent-reason].value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
* extension[date-month-absent-reason].value[x] ^label = "Used to specify why the month portion of a partial date is missing."
* extension[date-month-absent-reason].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[date-month-absent-reason].value[x] ^binding.extension.valueString = "DataAbsentReason"
* extension[date-month-absent-reason].value[x] ^binding.description = "data-absent-reason"
* extension[date-day] only Extension
* extension[date-day] ^short = "Date Day"
* extension[date-day] ^definition = "The day portion (DD) of the partial date."
* extension[date-day].url only uri
* extension[date-day].value[x] 1..
* extension[date-day].value[x] only integer
* extension[date-day].value[x] ^definition = "Specifies the day portion of a partial date."
* extension[date-day].value[x] ^minValueInteger = 1
* extension[date-day].value[x] ^maxValueInteger = 31
* extension[date-day].value[x] ^maxLength = 2
* extension[date-month-absent-reason] only Extension
* extension[date-month-absent-reason] ^short = "Date day absent reason"
* extension[date-month-absent-reason] ^definition = "The reason the day portion of a partial date is missing."
* extension[date-day-absent-reason].url only uri
* extension[date-day-absent-reason].url = "day-absent-reason" (exactly)
* extension[date-day-absent-reason].value[x] 1..
* extension[date-day-absent-reason].value[x] only code
* extension[date-day-absent-reason].value[x] from http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1 (required)
* extension[date-day-absent-reason].value[x] ^label = "Used to specify why the day portion of a partial date is missing."
* extension[date-day-absent-reason].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[date-day-absent-reason].value[x] ^binding.extension.valueString = "DataAbsentReason"
* extension[date-day-absent-reason].value[x] ^binding.description = "data-absent-reason"