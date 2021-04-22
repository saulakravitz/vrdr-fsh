Profile: Decedent
Parent: USCorePatientProfile
Id: VRDR-Decedent
Title: "VRDR Decedent"
* ^meta.versionId = "84"
* ^meta.lastUpdated = "2020-08-17T01:34:52.818+00:00"
* ^meta.source = "#znJwDaDCFknl4UOR"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2020-05-09"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* extension contains $patient-birthPlace named patient-birthPlace 0..1
* extension[patient-birthPlace] ^short = "Extension"
* identifier 1..* MS
* name 1..* MS
* gender 1..1
* gender from $ViewValueSet.action_9 (required)
* gender ^definition = "The observed sex (male, female, or unknown) of the decedent at the time of death as determined by the death certifier or authoritative informant."
* gender ^comment = "This item aids in the identification of the decedent. It is also used in research and statistical analysis to determine sex-specific death rates. \n\nThis element differs from the US Core BirthSex element. Birthsex is not a concept required for completion of a death record for submission to NCHS. It is included in the VRDR FHIR IG by virtue of using the US Core Patient as the base profile for Decedent. The US Core IG defined BirthSex as a code classifying the person's sex assigned at birth and declares the element as \"must support\". Labeling an element MustSupport means that implementations that produce or consume resources SHALL provide \"support\" for the element in some meaningful way. For VRDR meaningful support of the US Core BirthSex element would be the inclusion of birth sex as recorded in the decedents birth record, if known. Birthsex is an optional element and need not be completed if it is unknown."
* gender ^binding.description = "PHVS_Sex_MFU"
* birthDate 1..1
* address 0..*
* address.extension 0..1
* address.extension only Within_City_Limits_Indicator
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
* extension[0].extension[0].url = "ombCategory"
* extension[0].extension[0].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[0].extension[1].url = "ombCategory"
* extension[0].extension[1].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[0].extension[2].url = "ombCategory"
* extension[0].extension[2].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[0].extension[3].url = "detailed"
* extension[0].extension[3].valueCoding = urn:oid:2.16.840.1.113883.6.238#1586-7 "Shoshone"
* extension[0].extension[4].url = "detailed"
* extension[0].extension[4].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
* extension[0].extension[5].url = "text"
* extension[0].extension[5].valueString = "Mixed"
* extension[1].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[1].extension[0].url = "ombCategory"
* extension[1].extension[0].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[1].extension[1].url = "detailed"
* extension[1].extension[1].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
* extension[1].extension[2].url = "detailed"
* extension[1].extension[2].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
* extension[1].extension[3].url = "text"
* extension[1].extension[3].valueString = "Hispanic or Latino"
* extension[2].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[2].valueCode = #F
* identifier[0].type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier[0].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[0].value = "123456789"
* name[0].use = #official
* name[0].family = "Last"
* name[0].given[0] = "Example"
* name[0].given[1] = "Something"
* name[0].given[2] = "Middle"
* name[0].suffix[0] = "Jr."
* name[1].use = #nickname
* name[1].family = "LastNameAlias"
* name[1].given[0] = "FirstNameAlias"
* name[1].given[1] = "MiddleAlias"
* name[1].suffix[0] = "Jr."
* gender = #male
* birthDate = "1940-02-19"
* address[0].extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Within-City-Limits-Indicator"
* address[0].extension[0].valueCoding = $v2-0136#N "No"
* address[0].line[0] = "101 Example Street"
* address[0].line[1] = "Line 2"
* address[0].city = "Bedford"
* address[0].district = "Middlesex"
* address[0].state = "MA"
* address[0].postalCode = "01730"
* address[0].country = "United States"
* maritalStatus = $v3-MaritalStatus#S "Never Married"