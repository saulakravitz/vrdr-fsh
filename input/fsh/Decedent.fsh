Profile: Decedent
Parent: USCorePatientProfile
Id: VRDR-Decedent
Title: "VRDR Decedent"
* ^meta.versionId = "84"
* ^meta.lastUpdated = "2020-08-17T01:34:52.818+00:00"
* ^meta.source = "#znJwDaDCFknl4UOR"
* ^version = "1.0"
* ^experimental = false
* ^date = "2020-05-09"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* extension contains patient-birthPlace 0..1
* extension[patient-birthPlace] only Extension
* identifier 1..* MS
* name 1..* MS
* gender 1..1
* gender from $ViewValueSet.action_9 (required)
* gender ^definition = "The observed sex (male, female, or unknown) of the decedent at the time of death as determined by the death certifier or authoritative informant."
* gender ^comment = "This item aids in the identification of the decedent. It is also used in research and statistical analysis to determine sex-specific death rates. \n\nThis element differs from the US Core BirthSex element. Birthsex is not a concept required for completion of a death record for submission to NCHS. It is included in the VRDR FHIR IG by virtue of using the US Core Patient as the base profile for Decedent. The US Core IG defined BirthSex as a code classifying the person's sex assigned at birth and declares the element as \"must support\". Labeling an element MustSupport means that implementations that produce or consume resources SHALL provide \"support\" for the element in some meaningful way. For VRDR meaningful support of the US Core BirthSex element would be the inclusion of birth sex as recorded in the decedents birth record, if known. Birthsex is an optional element and need not be completed if it is unknown."
* gender ^binding.description = "PHVS_Sex_MFU"
* birthDate 1..1
* birthDate.extension contains ExtensionDatePartAbsentReason named datePartAbsentReason 0..* MS
* birthDate.extension[datePartAbsentReason] obeys ele-1 and ext-1
* birthDate.extension[datePartAbsentReason] ^short = "Indicates reason for missing one or more parts of the decedent's birthdate."
* birthDate.extension[datePartAbsentReason] ^definition = "Indicates reason for missing one or more parts of the decedent's birthdate."
* birthDate.extension[datePartAbsentReason] ^base.path = "Element.extension"
* birthDate.extension[datePartAbsentReason] ^base.min = 0
* birthDate.extension[datePartAbsentReason] ^base.max = "*"
* birthDate.extension[datePartAbsentReason] ^condition = "ele-1"
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* birthDate.extension[datePartAbsentReason] ^constraint[0].source = "http://hl7.org/fhir/StructureDefinition/Element"
// WARNING: The constraint index in the following rule (e.g., constraint[1]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* birthDate.extension[datePartAbsentReason] ^constraint[+].source = "http://hl7.org/fhir/StructureDefinition/Extension"
* birthDate.extension[datePartAbsentReason] ^isModifier = false
* birthDate.value 0..1
* birthDate.value only date
* birthDate.value ^representation = #xmlAttr
* birthDate.value ^short = "Primitive value for date"
* birthDate.value ^definition = "The actual value"
* birthDate.value ^base.path = "date.value"
* birthDate.value ^base.min = 0
* birthDate.value ^base.max = "1"
* birthDate.value ^type.extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type"
* birthDate.value ^type.extension[=].valueUrl = "date"
* birthDate.value ^type.extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* birthDate.value ^type.extension[=].valueString = "([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?"
* birthDate.value ^isModifier = false
* birthDate.value ^isSummary = false
* address 0..*
* address.extension 0..1
* address.extension only Within_City_Limits_Indicator
* address.city ^comment = "The city portion of the decedent's resident address shall be expressed as a five-digit numeric value greater than zero and less than 100,000."
* address.city ^constraint = undefined
* maritalStatus 0..1
* maritalStatus only CodeableConcept
* maritalStatus from $ViewValueSet.action_10 (required)
* maritalStatus ^binding.description = "PHVS_MaritalStatus_NCHS"
* contact.relationship 0..1
* contact.relationship only CodeableConcept
* contact.relationship from $ViewValueSet.action_11 (required)
* contact.relationship ^binding.description = "PHVS_RelatedPersonRelationshipType_NCHS"

Instance: 51b806c8-566f-463e-8783-9fbf6be8161d
InstanceOf: Decedent
Title: "Decedent Instance Example"
Description: "An instance example of the VRDR Decedent resource profile. Mr. Example Last, a White, Native Hawaiian, Hispanic male born 1940-02-19 and residing in Middlesex, MA."
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-07-22T19:41:31.297+00:00"
* meta.source = "#EoJNRyx11BYIT5J6"
* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1586-7 "Shoshone"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Mixed"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Hispanic or Latino"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "123456789"
* name[0].use = #official
* name[=].family = "Last"
* name[=].given[0] = "Example"
* name[=].given[+] = "Something"
* name[=].given[+] = "Middle"
* name[=].suffix = "Jr."
* name[+].use = #nickname
* name[=].family = "LastNameAlias"
* name[=].given[0] = "FirstNameAlias"
* name[=].given[+] = "MiddleAlias"
* name[=].suffix = "Jr."
* gender = #male
* birthDate = "1940-02-19"
* address.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Within-City-Limits-Indicator"
* address.extension.valueCoding = $v2-0136#N "No"
* address.line[0] = "101 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* maritalStatus = $v3-MaritalStatus#S "Never Married"

Invariant: ele-1
Description: "All FHIR elements must have a @value or children"
Severity: #error
Expression: "hasValue() or (children().count() > id.count())"
XPath: "@value|f:*|h:div"

Invariant: ext-1
Description: "Must have either extensions or value[x], not both"
Severity: #error
Expression: "extension.exists() != value.exists()"
XPath: "exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])"