Profile: VRDR_AutopsyPerformedIndicator
Parent: Observation
Id: VRDR-Autopsy-Performed-Indicator
Title: "VRDR Autopsy Performed Indicator"
* ^meta.versionId = "28"
* ^meta.lastUpdated = "2020-06-10T22:41:15.876+00:00"
* ^meta.source = "#jU7oMgwSEIRspNcr"
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
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"\"final\"\" (CONF:4393-412)."
* code 1..1
* code only CodeableConcept
* code = $loinc#85699-7 "Autopsy was performed" (exactly)
* code ^short = "code"
* code ^definition = "SHALL contain exactly one [1..1] code=\"85699-7\" Autopsy was performed (CONF:4393-411)."
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* subject ^definition = "SHALL contain exactly one [1..1] subject=\"VRDR Decedent\" (CONF:4393-413)."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_1 (required)
* value[x] ^slicing.discriminator[0].type = #type
* value[x] ^slicing.discriminator[0].path = "$this"
* value[x] ^slicing.rules = #open
* value[x] ^short = "value[x]"
* value[x] ^definition = "SHALL contain exactly one [1..1] value[x], where value[x] is (CONF:4393-409)"
* value[x] ^binding.description = "PHVS_YesNoNotApplicable_NCHS"
* component 0..1
* component ^short = "component"
* component ^definition = "SHALL contain exactly one [1..1] component (CONF:4393-414)."
* component ^comment = "Autopsy Results Available"
* component.code 1..1
* component.code only CodeableConcept
* component.code = $loinc#69436-4 "Autopsy results available" (exactly)
* component.code ^short = "code"
* component.code ^definition = "This component SHALL contain exactly one [1..1] code=\"69436-4\" Autopsy results available  (CONF:4393-416)."
* component.value[x] 1..1
* component.value[x] only CodeableConcept
* component.value[x] from $ViewValueSet.action_1 (required)
* component.value[x] ^slicing.discriminator[0].type = #type
* component.value[x] ^slicing.discriminator[0].path = "$this"
* component.value[x] ^slicing.rules = #open
* component.value[x] ^short = "value[x]"
* component.value[x] ^definition = "This component SHALL contain exactly one [1..1] value[x], where value[x] is (CONF:4393-415)"
* component.value[x] ^binding.description = "PHVS_YesNoNotApplicable_NCHS"

Instance: 0db13e0d-fea6-4ef1-8285-62d761f61d88
InstanceOf: VRDR_AutopsyPerformedIndicator
Title: "Autopsy Performed Indicator Instance Example"
Description: "Instance example of the Autopsy Performed Indicator resource profile. This example indicates that an autopsy was performed and that the results of the autopsy are available."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T00:53:25.201+00:00"
* meta.source = "#brM1jqtwMAqwn7Dl"
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $v2-0136#Y "Yes"
* component[0].code = $loinc#69436-4 "Autopsy results available"
* component[0].valueCodeableConcept = $v2-0136#Y "Yes"