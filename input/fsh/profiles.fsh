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

Profile: VRDR_BirthRecordIdentifier
Parent: Observation
Id: VRDR-BirthRecordIdentifier
Title: "VRDR Birth Record Identifier"
* ^meta.versionId = "22"
* ^meta.lastUpdated = "2020-07-21T00:29:30.908+00:00"
* ^meta.source = "#4JaWwyKmZx3ygQud"
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
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $v2-0203#BR "Birth registry number" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only string
* component ..*
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains
    birthState 0..1 and
    birthYear 0..1
* component[birthState].code 1..1
* component[birthState].code = $loinc#21842-0 "Birthplace" (exactly)
* component[birthState].value[x] 1..1
* component[birthState].value[x] only CodeableConcept
* component[birthState].value[x] ^patternCodeableConcept.coding[0].system = "urn:iso:std:iso:3166:-2"
* component[birthYear].code = $loinc#80904-6 "Birth year" (exactly)
* component[birthYear].value[x] 1..1
* component[birthYear].value[x] only dateTime
* component[birthYear].value[x] ^comment = "The birth year is expressed using the YYYY portion of datetime and is expected to correspond to the YYYY component of the birthdate included in the Decedent resource."

Profile: CauseOfDeathCondition
Parent: USCoreCondition
Id: VRDR-Cause-Of-Death-Condition
Title: "VRDR Cause Of Death Condition"
Description: "The Cause of Death Condition profile reflects one of the eventually ordered causes of death asserted by the death certifier. The cause of death is initially specified with text. It is sent to NCHS for encoding and returned as a coded cause of death prior to submission of the completed death report. The Cause Of Death Condition profile builds upon the FHIR Condition resource."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2020-07-02T04:43:46.543+00:00"
* ^meta.source = "#NwabvMXcrlCFwY9G"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-08"
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
* category 1..1
* category only CodeableConcept
* category = $sct#16100001 "Death diagnosis" (exactly)
* code 1..1
* code only CodeableConcept
* code ^label = "CauseOfDeathCondition.code"
* code ^short = "code"
* code ^comment = "The CauseOfDeathCondition.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* code.coding 0..*
* code.coding.code 1..1
* code.coding.code from $ViewValueSet.action_2 (required)
* code.coding.code ^binding.description = "PHVS_CauseOfDeath_ICD-10_CDC"
* code.text 0..1
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* onset[x] 1..1
* onset[x] only Age or string
* onset[x] ^slicing.discriminator[0].type = #type
* onset[x] ^slicing.discriminator[0].path = "$this"
* onset[x] ^slicing.rules = #open
* onset[x] ^short = "onset[x]"
* asserter 1..1
* asserter only Reference(VRDR_Certifier)
* asserter ^short = "asserter"

Profile: VRDR_CauseOfDeathPathway
Parent: List
Id: VRDR-Cause-of-Death-Pathway
Title: "VRDR Cause of Death Pathway"
Description: """VRDR Cause of Death Pathway is an ordered list of cause of death conditions. It builds upon the FHIR LIST resource. The source of VRDR Cause of Death Pathway (LIST.source) is a cause of death certifier. 
"""
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T04:25:59.999+00:00"
* ^meta.source = "#6uKjje9IIwW1M35K"
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
* id 0..1
* id ^short = "id"
* id ^definition = "MAY contain zero or one [0..1] id (CONF:4393-317)."
* status 1..1
* status only code
* status = #current (exactly)
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"\"current\"\" (CONF:4393-324)."
* mode 1..1
* mode only code
* mode = #snapshot (exactly)
* mode ^short = "mode"
* mode ^definition = "SHALL contain exactly one [1..1] mode=\"\"snapshot\"\" (CONF:4393-321)."
* source 1..1
* source only Reference(VRDR_Certifier)
* source ^short = "source"
* source ^definition = "SHALL contain exactly one [1..1] source=\"VRDR Certifier\" (CONF:4393-323)."
* orderedBy 1..1
* orderedBy only CodeableConcept
* orderedBy = $list-order#priority "Sorted by Priority" (exactly)
* orderedBy ^short = "orderedBy"
* orderedBy ^definition = "SHALL contain exactly one [1..1] orderedBy=\"\"priority\"\" (CONF:4393-322)."
* entry 0..*
* entry ^short = "entry"
* entry ^definition = "MAY contain zero or more [0..*] entry (CONF:4393-319)."
* entry.item 1..1
* entry.item only Reference(CauseOfDeathCondition)
* entry.item ^short = "item"
* entry.item ^definition = "The entry, if present, SHALL contain exactly one [1..1] item=\"VRDR Cause Of Death Condition\" (CONF:4393-320)."

Profile: VRDR_Certifier
Parent: USCorePractitionerProfile
Id: VRDR-Certifier
Title: "VRDR Certifier"
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-07-12T20:51:27.558+00:00"
* ^meta.source = "#k50jR3VnygtJK6fU"
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
* ^context[0].type = #element
* ^context[0].expression = "Practitioner"
* id 0..1
* id ^short = "id"
* id ^definition = "MAY contain zero or one [0..1] id (CONF:4393-300)."
* name 1..1
* name ^short = "name"
* name ^definition = "SHALL contain exactly one [1..1] name (CONF:4393-303)."
* address 1..1
* address ^short = "address"
* address ^definition = "SHALL contain exactly one [1..1] address (CONF:4393-302)."
* qualification 1..1
* qualification only BackboneElement
* qualification ^short = "qualification"
* qualification ^definition = "SHALL contain exactly one [1..1] qualification, which SHALL be selected from ValueSet v2table0360,Version2.7 http://hl7.org/fhir/ValueSet/v2table0360,Version2.7 DYNAMIC (CONF:4393-304)."
* qualification.identifier 1..1
* qualification.identifier ^short = "identifier"
* qualification.identifier ^definition = "This qualification SHALL contain exactly one [1..1] identifier (CONF:4393-305)."
* qualification.code 1..1
* qualification.code from $ViewValueSet.action_3 (required)
* qualification.code ^binding.description = "Identifier Type Codes"

Profile: ConditionContributingToDeath
Parent: USCoreCondition
Id: VRDR-Condition-Contributing-To-Death
Title: "VRDR Condition Contributing To Death"
Description: "The Condition Contributing to Death profile is used to identify factors contributing to the cause of death as asserted by the death certifier. The Condition Contributing To Death profile builds upon the FHIR condition resource."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2020-07-11T03:07:27.108+00:00"
* ^meta.source = "#XvtBGofn6sv4I5A4"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-08"
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
* category 1..1
* category only CodeableConcept
* category = $sct#16100001 "Death diagnosis" (exactly)
* code 1..1
* code only CodeableConcept
* code ^short = "code"
* code ^comment = "The ConditionContributintgToDeath.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* code.coding 0..*
* code.coding.code 1..1
* code.coding.code only code
* code.coding.code from $ViewValueSet.action_2 (required)
* code.coding.code ^binding.description = "PHVS_CauseOfDeath_ICD-10_CDC"
* subject only Reference(Decedent)
* asserter 1..1
* asserter only Reference(VRDR_Certifier)

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

Profile: DeathCertificateReference
Parent: DocumentReference
Id: VRDR-Death-Certificate-Reference
Title: "VRDR Death Certificate Reference"
Description: "The Death Certificate Reference profile is used to enable interested parties to assign local identifiers to the death certificate document. The Death Certificate Reference profile builds upon the FHIR Document Reference resource."
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2020-08-16T20:39:12.490+00:00"
* ^meta.source = "#drWDxwGIRH58zfD6"
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
* identifier ^definition = "SHALL contain exactly one [1..1] identifier (CONF:4393-392)."
* status 1..1
* status only code
* status from DocumentReferenceStatus (required)
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status, which SHALL be selected from ValueSet DocumentReferenceStatus http://hl7.org/fhir/ValueSet/DocumentReferenceStatus DYNAMIC (CONF:4393-394)."
* status ^binding.description = "Document Type Value Set"
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* type ^short = "type"
* type ^definition = "SHALL contain exactly one [1..1] type=\"\"64297-5\"\"(CONF:4393-396)."
* date 1..1
* author 1..1
* author only Reference(InterestedParty)
* author ^short = "author"
* author ^definition = "SHALL contain exactly one [1..1] author=\"VRDR Interested Party\"(CONF:4393-390)."
* content 1..1
* content.attachment 1..1
* content.attachment.url 1..1
* content.attachment.url only url

Profile: DeathCertificate
Parent: Composition
Id: VRDR-Death-Certificate
Title: "VRDR Death Certificate"
Description: "The Death Certificate profile is the body of the death certificate document. It builds upon the FHIR Composition resource."
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-08-07T15:46:37.056+00:00"
* ^meta.source = "#xWgWALJHC1oSZGq3"
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
* status 1..1
* status only code
* status from CompositionStatus (required)
* status ^short = "status"
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* type ^short = "type"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* date 1..1
* date ^short = "date"
* attester 1..1
* attester only BackboneElement
* attester ^short = "attester"
* attester.mode 1..1
* attester.mode only code
* attester.mode = #legal (exactly)
* attester.mode ^short = "mode"
* attester.mode ^definition = "This attester SHALL contain exactly one [1..1] mode=\"\"legal\"\"(CONF:4393-367)."
* attester.time 1..1
* attester.time ^short = "time"
* attester.time ^definition = "This attester SHALL contain exactly one [1..1] time (CONF:4393-369)."
* attester.party 1..1
* attester.party only Reference(VRDR_Certifier)
* attester.party ^short = "party"
* attester.party ^definition = "This attester SHALL contain exactly one [1..1] party=\"VRDR Certifier\"(CONF:4393-368)."
* event 1..1
* event only BackboneElement
* event ^short = "event"
* event.code 1..1
* event.code only CodeableConcept
* event.code = $sct#103693007 "Diagnostic procedure (procedure)" (exactly)
* event.code ^short = "code"
* event.code ^definition = "This event SHALL contain exactly one [1..1] code=\"\"103693007\"\"(CONF:4393-372)."
* event.detail 1..1
* event.detail only Reference(DeathCertification)
* event.detail ^short = "detail"
* event.detail ^definition = "This event SHALL contain exactly one [1..1] detail=\"VRDR Death Certification\" (CONF:4393-373)."

Profile: DeathCertification
Parent: USCoreProcedureProfile
Id: VRDR-Death-Certification
Title: "VRDR Death Certification"
* ^meta.versionId = "17"
* ^meta.lastUpdated = "2020-07-12T20:36:37.886+00:00"
* ^meta.source = "#xWRkuQqK3Rm1PUtv"
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
* identifier 1..*
* status 1..1
* status only code
* status = #completed (exactly)
* status ^short = "status"
* category 1..1
* category only CodeableConcept
* category = $sct#103693007 "Diagnostic procedure" (exactly)
* category ^short = "category"
* code 1..1
* code only CodeableConcept
* code = $sct#308646001 "Death certification" (exactly)
* code ^short = "code"
* performed[x] 1..1
* performed[x] only dateTime
* performed[x] ^short = "certificationDatetime"
* performer 1..1
* performer.function 1..1
* performer.function from $ViewValueSet.action_3 (required)
* performer.function ^binding.description = "PHVS_CertifierTypes_NCHS"
* performer.actor 1..1
* performer.actor only Reference(VRDR_Certifier)

Profile: VRDR_DeathDate
Parent: Observation
Id: VRDR-Death-Date
Title: "VRDR_DeathDate"
* ^meta.versionId = "19"
* ^meta.lastUpdated = "2020-08-17T16:46:05.221+00:00"
* ^meta.source = "#cWH5FpaiGE9NuPNq"
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
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "Observation.extension.url"
* extension ^slicing.rules = #open
* extension contains deathLocation 0..1
* extension[deathLocation].url 1..1
* extension[deathLocation].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Observation-Location" (exactly)
* extension[deathLocation].value[x] 1..1
* extension[deathLocation].value[x] only Reference(DeathLocation)
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#81956-5 "Date+time of death" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 1..1
* effective[x] only dateTime
* performer 0..1
* performer only Reference(DeathPronouncementPerformer)
* value[x] 1..1
* value[x] only dateTime
* note 0..1
* method 0..1
* method = $sct#414135002 "Estimated" (exactly)
* component 0..1
* component.code 1..1
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]" (exactly)
* component.value[x] 1..1
* component.value[x] only dateTime

Profile: DeathLocation
Parent: USCoreLocation
Id: VRDR-Death-Location
Title: "VRDR Death Location"
* ^meta.versionId = "21"
* ^meta.lastUpdated = "2020-08-19T07:31:51.017+00:00"
* ^meta.source = "#V341v7feurVTzlTe"
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
* extension ..*
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open
* extension contains LocationJurisdictionId named nationalReportingJurisdictionId 0..1
* name 1..1
* name ^short = "name"
* description 1..1
* description ^short = "description"
* type 1..1
* type from $ViewValueSet.action_4 (required)
* type ^short = "type"
* type ^binding.description = "PHVS_PlaceOfDeath_NCHS"
* address 1..1
* address ^short = "address"

Profile: DeathPronouncementPerformer
Parent: USCorePractitionerProfile
Id: VRDR-Death-Pronouncement-Performer
Title: "VRDR Death Pronouncement Performer"
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T20:52:38.577+00:00"
* ^meta.source = "#PYa7KArWUL0ZifDQ"
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
* name 1..1
* name ^short = "name"

Profile: DecedentAge
Parent: Observation
Id: VRDR-Decedent-Age
Title: "VRDR Decedent Age"
Description: "The decedent's chronological age at the time of death. When present, the effective date of this observation shall be equal to the decedent's date of death. Age is derived as the difference in time between the decedent's death date and birth date. When age is less than one day then unit shall be minutes, when age is less than one year then unit shall be days, else unit shall be years."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2020-08-13T15:16:47.947+00:00"
* ^meta.source = "#NKNNLXhFI9eyzWz7"
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
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#30525-0 "Age" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity

Profile: VRDR_DecedentDispositionMethod
Parent: Observation
Id: VRDR-Decedent-Disposition-Method
Title: "Decedent Disposition Method"
* ^meta.versionId = "32"
* ^meta.lastUpdated = "2020-08-17T14:36:23.009+00:00"
* ^meta.source = "#bReEsnSuWhXVxAUW"
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
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "Observation.extension"
* extension ^slicing.rules = #open
* extension contains dispositionLocation 0..1
* extension[dispositionLocation].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Observation-Location" (exactly)
* extension[dispositionLocation].value[x] 1..1
* extension[dispositionLocation].value[x] only Reference(DispositionLocation)
* status 1..1
* status only code
* status = #final
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"final\" Final (CONF:4393-162)."
* code 1..1
* code only CodeableConcept
* code = $loinc#80905-3 "Body disposition method" (exactly)
* code ^short = "code"
* code ^definition = "SHALL contain exactly one [1..1] code=\"80905-3\"  Body disposition method (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:4393-163)."
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* subject ^definition = "SHALL contain exactly one [1..1] subject (CONF:4393-154)."
* performer 1..1
* performer only Reference(Mortician)
* performer ^short = "performer"
* performer ^definition = "SHALL contain exactly one [1..1] performer (CONF:4393-155)."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_5 (required)
* value[x] ^short = "valueCodeableConcept"
* value[x] ^binding.description = "PHVS_MethodsOfDisposition_NCHS"

Profile: DecedentEducationLevel
Parent: Observation
Id: VRDR-Decedent-Education-Level
Title: "VRDR Decedent Education Level"
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2020-07-12T05:13:10.239+00:00"
* ^meta.source = "#kwSRexAJ0iXFfL5f"
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
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action (required)
* value[x] ^short = "value[x]"
* value[x] ^binding.description = "PHVS_DecedentEducationLevel_NCHS"

Profile: DecedentFather
Parent: RelatedPerson
Id: VRDR-Decedent-Father
Title: "Decedent Father"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-12T17:08:13.410+00:00"
* ^meta.source = "#UgDGRjf1iqeh6k0e"
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
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "patient"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#FTH "father" (exactly)
* relationship ^short = "relationship"
* name 1..1
* name ^short = "name"
* address 0..1

Profile: VRDR_DecedentMilitaryService
Parent: Observation
Id: VRDR-Decedent-Military-Service
Title: "Decedent Military Service"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-23T13:20:16.090+00:00"
* ^meta.source = "#bRGT00bfET49wt1d"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
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
* code 1..1
* code only CodeableConcept
* code = $loinc#55280-2 "Military service Narrative" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_6 (required)
* value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"
* note 0..1

Profile: VRDR_DecedentMother
Parent: RelatedPerson
Id: VRDR-Decedent-Mother
Title: "Decedent Mother"
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2020-08-16T23:25:47.997+00:00"
* ^meta.source = "#K3ByEHNHauqovaBo"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-04-07T19:28:04+00:00"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* patient 1..1
* patient only Reference(Decedent)
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#MTH "mother" (exactly)
* name 1..1
* address 0..1

Profile: DecedentPregnancy
Parent: Observation
Id: VRDR-Decedent-Pregnancy
Title: "VRDR Decedent Pregnancy"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-11T22:49:04.426+00:00"
* ^meta.source = "#Xu6BTOfmEZYcJVsr"
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
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_7 (required)
* value[x] ^short = "value[x]"
* value[x] ^binding.description = "PHVS_PregnancyStatus_NCHS"

Profile: DecedentSpouse
Parent: RelatedPerson
Id: VRDR-Decedent-Spouse
Title: "VRDR Decedent Spouse"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-11T22:49:29.228+00:00"
* ^meta.source = "#WNGgSjS3ZSZMbp8W"
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
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "patient"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#SPS "spouse" (exactly)
* relationship ^short = "relationship"
* name 1..1

Profile: DecedentTransportationRole
Parent: Observation
Id: VRDR-Decedent-Transportation-Role
Title: "VRDR Decedent Transportation Role"
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2020-07-11T22:49:56.139+00:00"
* ^meta.source = "#44li4MkRDim3cNXI"
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
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69451-3 "Transportation role of decedent" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_8 (required)
* value[x] ^short = "value[x]"
* value[x] ^binding.description = "PHVS_TransportationRelationships_NCHS"

Profile: VRDR_DecedentUsualWork
Parent: UsualWork
Id: VRDR-Decedent-Usual-Work
Title: "VRDR_DecedentUsualWork"
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-07-02T04:35:06.257+00:00"
* ^meta.source = "#DQWSm7Ojy2Djzdkh"
* ^date = "2021-04-07T19:28:04+00:00"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pher"
* ^contact[1].name = "Hetty Khan, Health Scientist (Informatics), CDC/National Center for Health Statistics - hdk1@cdc.gov"
* ^contact[2].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions - abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction[0].text = "US Realm"
* subject 1..1
* subject only Reference(Decedent)

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

Profile: ExaminerContacted
Parent: Observation
Id: VRDR-Examiner-Contacted
Title: "VRDR Examiner Contacted"
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-07-12T05:20:58.180+00:00"
* ^meta.source = "#zYvtsisGRgdoIq1u"
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
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_6 (required)
* value[x] ^binding.description = "PHVS_YesNoUnknown_CDC"

Profile: FuneralHome
Parent: USCoreOrganizationProfile
Id: VRDR-Funeral-Home
Title: "VRDR Funeral Home"
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2020-07-12T20:48:16.230+00:00"
* ^meta.source = "#f0OiHR37z6PHVn6U"
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
* id 0..1
* id ^short = "id"
* identifier 0..*
* type 1..1
* type = $organization-type#bus "Non-Healthcare Business or Corporation" (exactly)
* type ^short = "type"
* name 1..1
* name ^short = "name"
* address 1..1
* address ^short = "address"

Profile: FuneralServiceLicensee
Parent: USCorePractitionerRoleProfile
Id: VRDR-Funeral-Service-Licensee
Title: "VRDR Funeral Service Licensee"
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2020-07-12T20:24:29.100+00:00"
* ^meta.source = "#rniAzblHy27od5Yy"
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
* extension contains injuryLocation 0..1
* extension[injuryLocation].url 1..1
* extension[injuryLocation].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Observation-Location" (exactly)
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

Profile: InterestedParty
Parent: USCoreOrganizationProfile
Id: VRDR-Interested-Party
Title: "VRDR Interested Party"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-12T20:50:19.198+00:00"
* ^meta.source = "#eGOxlRQeMmKTfK2R"
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
* id 0..1
* id ^short = "id"
* identifier 1..1
* identifier ^short = "identifier"
* active 1..1
* active ^short = "active"
* type 1..1
* type only CodeableConcept
* type from OrganizationType (required)
* type ^short = "type"
* name 1..1
* name ^short = "name"
* address 1..1
* address ^short = "address"
* partOf 0..1
* partOf only Reference(InterestedParty)
* partOf ^short = "partOf"

Profile: MannerOfDeath
Parent: Observation
Id: VRDR-Manner-of-Death
Title: "VRDR Manner of Death"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-22T17:56:17.870+00:00"
* ^meta.source = "#LnHtbLbU4GqNgDNw"
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
* id 0..1
* id ^short = "id"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69449-7 "Manner of death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "subject"
* performer 1..1
* performer only Reference(Practitioner)
* performer ^short = "performer"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_13 (required)
* value[x] ^binding.description = "PHVS_MannerOfDeath_NCHS"

Profile: Mortician
Parent: USCorePractitionerProfile
Id: VRDR-Mortician
Title: "VRDR Mortician"
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T20:53:15.849+00:00"
* ^meta.source = "#k32Cm7rzsaO3hzre"
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

Profile: TobaccoUseContributedToDeath
Parent: Observation
Id: VRDR-Tobacco-Use-Contributed-To-Death
Title: "VRDR Tobacco Use Contributed To Death"
* ^meta.versionId = "15"
* ^meta.lastUpdated = "2020-07-21T22:41:29.615+00:00"
* ^meta.source = "#epAu4Mw1B00QLLbS"
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
* id 0..1
* id ^short = "id"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69443-0 "Did tobacco use contribute to death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_14 (required)
* value[x] ^label = "valueCodeableConcept"
* value[x] ^short = "valueCodeableConcept"
* value[x] ^alias[0] = "valueCodeableConcept"
* value[x] ^binding.description = "PHVS_ContributoryTobaccoUse_NCHS"