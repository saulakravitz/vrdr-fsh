Profile: InjuryIncident
Parent: Observation
Id: VRDR-InjuryIncident
Title: "VRDR Injury Incident"
* ^meta.versionId = "23"
* ^meta.lastUpdated = "2020-08-17T16:17:34.702+00:00"
* ^meta.source = "#MuquB0uvBh8BkWDP"
* ^version = "1.0.0"
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
* extension ..*
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "Observation.extension.url"
* extension ^slicing.rules = #open
* extension contains ObservationLocation named injuryLocation 0..1
* extension[injuryLocation].url 1..1
* extension[injuryLocation].value[x] only Reference(InjuryLocation)
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#11374-6 "Injury incident description Narrative" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 0..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only dateTime or string
* component ..3
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains
    placeOfInjury 1..1 and
    workInjuryIndicator 1..1 and
    transportationEventIndicator 1..1
* component[placeOfInjury].code 1..1
* component[placeOfInjury].code = $loinc#69450-5 "Place of injury Facility" (exactly)
* component[placeOfInjury].value[x] 1..1
* component[placeOfInjury].value[x] only CodeableConcept
* component[placeOfInjury].value[x] from $ViewValueSet.action_12 (required)
* component[placeOfInjury].value[x] ^binding.description = "PHVS_PlaceOfInjury_NCHS"
* component[workInjuryIndicator].code 1..1
* component[workInjuryIndicator].code = $loinc#69444-8 "Did death result from injury at work" (exactly)
* component[workInjuryIndicator].value[x] 1..1
* component[workInjuryIndicator].value[x] only CodeableConcept
* component[workInjuryIndicator].value[x] from $ViewValueSet.action_1 (required)
* component[workInjuryIndicator].value[x] ^short = "valueCodeableConcept"
* component[workInjuryIndicator].value[x] ^binding.description = "PHVS_YesNoNotApplicable_NCHS"
* component[transportationEventIndicator].code 1..1
* component[transportationEventIndicator].code = $loinc#69448-9 "Injury leading to death associated with transportation event" (exactly)
* component[transportationEventIndicator].value[x] 1..1
* component[transportationEventIndicator].value[x] only CodeableConcept
* component[transportationEventIndicator].value[x] from $ViewValueSet.action_6 (required)
* component[transportationEventIndicator].value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"

Instance: 37c086a1-05bd-479c-92b4-1234d38bfe5a
InstanceOf: InjuryIncident
Title: "Injury Incident Example"
Description: "An instance example of the VRDR-InjuryIncident resource profile."
Usage: #example
* meta.versionId = "6"
* meta.lastUpdated = "2020-07-24T15:33:53.596+00:00"
* meta.source = "#iofJcQBVEUkPrUdY"
* status = #final
* code = $loinc#11374-6 "Injury incident description Narrative"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectiveDateTime = "2018-02-19T16:48:06-05:00"
* valueDateTime = "2018-02-19T16:48:06-05:00"
* component[0].code = $loinc#69444-8 "Did death result from injury at work"
* component[0].valueCodeableConcept = $v2-0136#N "No"
* component[1].code = $loinc#69448-9 "Injury leading to death associated with transportation event"
* component[1].valueCodeableConcept = $v2-0136#N "No"
* component[2].code = $loinc#69450-5 "Place of injury Facility"
* component[2].valueCodeableConcept.text = "Home"