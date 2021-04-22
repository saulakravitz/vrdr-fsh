Profile: DeathCertificateDocument
Parent: Bundle
Id: VRDR-Death-Certificate-Document
Title: "VRDR Death Certificate Document"
Description: "The Death Certificate Document profile is a bundle of resources comprising the death certificate composition. The Death Certificate Document builds upon the FHIR Document resource."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2020-08-18T06:29:51.027+00:00"
* ^meta.source = "#TRof2eLh1VCPPrNl"
* ^version = "1.0.0"
* ^status = #draft
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
* identifier 1..1
* identifier ^short = "identifier"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier ^comment = "NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). These concepts can be pulled directly from existing elements of the VRDR IG: the year of death comes from the observation value in the DeathDate resource, the jurisdiction of death come from the location alias in the NationalReportingJurisdiction resource, and the death certificate number assigned by the jurisdiction comes from the identifier specified in the DeathCertification resource."
* type 1..1
* type only code
* type = #document (exactly)
* type ^short = "type"
* entry 1..*
* entry only BackboneElement
* entry ^short = "entry"
* entry.resource 1..1
* entry.resource ^short = "resource"
* entry.resource ^definition = "This entry SHALL contain exactly one [1..1] resource=\"VRDR Death Certificate\" (CONF:4393-360)."

Instance: 7a4613cc-b306-49b2-a428-9f8e67e67a85
InstanceOf: DeathCertificateDocument
Title: "Death Certificate Document Example"
Description: "An instance example of the VRDR-Death-Certificate-Document resource profile."
Usage: #example
* meta.versionId = "39"
* meta.lastUpdated = "2020-08-12T18:59:34.898+00:00"
* meta.source = "#OlEHlfWnqGy5aapi"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "7a4613cc-b306-49b2-a428-9f8e67e67a85"
* type = #document
* timestamp = "2017-12-11T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:54fd9b4c-7633-4e34-bf6b-6fbe9d48fd30"
* entry[0].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-1
* entry[1].fullUrl = "urn:uuid:Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* entry[1].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-2
* entry[2].fullUrl = "Practitioner/urn:cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* entry[2].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-3
* entry[3].fullUrl = "urn:uuid:Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* entry[3].resource = Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-4

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-1
InstanceOf: Composition
Usage: #inline
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* date = "2017-12-11T14:30:00+01:00"
* author[0].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* title = "Death Certificate"
* attester[0].mode = #legal
* attester[0].time = "2017-12-11T14:30:00+01:00"
* attester[0].party.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* event[0].code[0] = $sct#103693007 "Diagnostic procedure (procedure)"
* event[0].detail[0].reference = "Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73"

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-2
InstanceOf: Patient
Usage: #inline
* id = "51b806c8-566f-463e-8783-9fbf6be8161d"
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
* birthDate = "1941-02-19"
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

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-3
InstanceOf: Practitioner
Usage: #inline
* id = "cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
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

Instance: Inline-Instance-for-7a4613cc-b306-49b2-a428-9f8e67e67a85-4
InstanceOf: Procedure
Usage: #inline
* id = "219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* identifier[0].value = "aabcde9876543210"
* status = #completed
* category = $sct#103693007 "Diagnostic procedure (procedure)"
* code = $sct#308646001 "Death certification"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performedDateTime = "2019-01-29T16:48:06-05:00"
* performer[0].function = $sct#309343006 "Physician"
* performer[0].actor.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"