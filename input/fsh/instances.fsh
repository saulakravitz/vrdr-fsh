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

Instance: 54fd9b4c-7633-4e34-bf6b-6fbe9d48fd30
InstanceOf: DeathCertificate
Title: "Death Certificate Example"
Description: "An instance example of the VRDR-Death-Certificate resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T20:25:55.816+00:00"
* meta.source = "#9AKuC1eEH9yOkDrI"
* identifier.value = "1"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* date = "2019-02-01T16:47:04-05:00"
* author[0].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* title = "VRDR Death Certificate"
* attester[0].mode = #legal
* attester[0].time = "2019-01-29T16:48:06-05:00"
* attester[0].party.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* event[0].code[0] = $sct#103693007 "Diagnostic procedure (procedure)"
* event[0].detail[0].reference = "Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* section[0].entry[0].reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* section[0].entry[1].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* section[0].entry[2].reference = "Practitioner/80db6f45-8a6d-4583-8a03-55a6663523c2"
* section[0].entry[3].reference = "Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* section[0].entry[4].reference = "Organization/1a110397-936f-4be4-ab10-2caed226569d"
* section[0].entry[5].reference = "Organization/6f47da13-0c25-483b-8729-7b96716b17fc"
* section[0].entry[6].reference = "PractitionerRole/4b96759f-8395-4093-8417-e1ca3cd26f0a"
* section[0].entry[7].reference = "List/60401545-f1e1-4a80-867f-02384ffed857"
* section[0].entry[8].reference = "Location/bbe38248-9a8d-414f-996e-58d5fc9eb800"
* section[0].entry[9].reference = "Observation/d7c2e459-c7ca-415c-a38c-f78a0f0c5813"
* section[0].entry[10].reference = "Condition/56b8ce2e-64f8-450b-8885-0699a53fc781"
* section[0].entry[11].reference = "Condition/f0cbc63d-ac4e-469b-8761-70b6ea8bf666"
* section[0].entry[12].reference = "RelatedPerson/976c548f-9460-42f2-b41e-390b3bee91c8"
* section[0].entry[13].reference = "RelatedPerson/89ababc6-8c2a-4e76-9f53-8677822f54a9"
* section[0].entry[14].reference = "RelatedPerson/962fded4-b90a-44f7-950e-3832011ad65f"
* section[0].entry[15].reference = "Observation/9676ae27-2a89-4295-913c-0d6847300a3a"
* section[0].entry[16].reference = "Observation/6606dd3a-49ba-47a9-a6e7-e7e4ebeddac7"
* section[0].entry[17].reference = "Observation/d80681ff-9f1d-4915-87b5-eda54534096a"
* section[0].entry[18].reference = "Observation/0db13e0d-fea6-4ef1-8285-62d761f61d88"
* section[0].entry[19].reference = "Observation/df5a2807-e0b2-4971-9820-efdbbbfcef7b"
* section[0].entry[20].reference = "Observation/092e7b13-224d-46a6-ac31-0d98d4c84126"
* section[0].entry[21].reference = "Observation/4424113f-69c4-40fe-b88f-d7b03304dfe4"
* section[0].entry[22].reference = "Observation/4aed1450-ab2d-4cb9-858f-227b127323a6"
* section[0].entry[23].reference = "Observation/4d0ce010-16f1-44f4-bbf8-3a2030e9de99"
* section[0].entry[24].reference = "Location/4b863da8-1bb5-4b17-9be2-4ea39b5d3a2a"
* section[0].entry[25].reference = "Observation/37c086a1-05bd-479c-92b4-1234d38bfe5a"
* section[0].entry[26].reference = "Location/b7de6056-817f-4d73-9830-ce566accd044"
* section[0].entry[27].reference = "Observation/b531cbf7-6290-424c-8155-0549c3fb3243"

Instance: 56b8ce2e-64f8-450b-8885-0699a53fc781
InstanceOf: ConditionContributingToDeath
Title: "Condition Contributing To Death Example"
Description: "An instance example of the VRDR-Condition-Contributing-To-Death resource profile. In this example, the condition is noted as text only. This is typical of a death record outbound from a jurisdictional EDRS to the NCHS."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T04:48:02.057+00:00"
* meta.source = "#lMNehUUKrIGcu4us"
* category[0] = $sct#16100001 "Death diagnosis"
* code.text = "Example Contributing Conditions"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* asserter.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"

Instance: f0cbc63d-ac4e-469b-8761-70b6ea8bf666
InstanceOf: CauseOfDeathCondition
Title: "Cause Of Death Condition Example"
Description: "An instance example of the VRDR-Cause-Of-Death-Condition resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-23T00:39:07.292+00:00"
* meta.source = "#gvQxSpDrQsJLuHBR"
* category[0] = $sct#16100001 "Death diagnosis"
* code.text = "Acute transmural myocardial infarction of anterior wall"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* onsetString = "minutes"
* asserter.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"

Instance: bafe16b9-8b50-47e1-829a-a7dbafb45e05
InstanceOf: DeathCertificateReference
Title: "Death Certificate Reference Example"
Description: "An instance example of the VRDR-Death-Certificate-Reference resource profile."
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-08-18T14:05:00.835+00:00"
* meta.source = "#8iRGOaZ9QyOQtkXP"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:bafe16b9-8b50-47e1-829a-a7dbafb45e05"
* status = #current
* type = $loinc#64297-5 "Death certificate"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* date = "2005-12-24T09:43:41+11:00"
* author[0].reference = "Organization/1a110397-936f-4be4-ab10-2caed226569d"
* content[0].attachment.url = "urn:uuid:7a4613cc-b306-49b2-a428-9f8e67e67a85"

Instance: 60401545-f1e1-4a80-867f-02384ffed857
InstanceOf: VRDR_CauseOfDeathPathway
Title: "Cause of Death Pathway Example"
Description: "An instance example of the VRDR-Cause-of-Death-Pathway resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T13:59:02.713+00:00"
* meta.source = "#EWNOB45m46lXQqTB"
* status = #current
* mode = #snapshot
* source.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* orderedBy = $list-order#priority "Sorted by Priority"
* entry[0].item.reference = "Condition/f0cbc63d-ac4e-469b-8761-70b6ea8bf666"

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

Instance: b7de6056-817f-4d73-9830-ce566accd044
InstanceOf: DeathLocation
Title: "Death Location Example"
Description: "An instance example of the VRDR-Death-Location resource profile."
Usage: #example
* meta.versionId = "21"
* meta.lastUpdated = "2020-08-19T08:29:15.044+00:00"
* meta.source = "#wKKh1WwcfoE82FMR"
* name = "Example Death Location Name"
* description = "Example Death Location Description"
* type[0] = $sct#16983000 "Death in hospital"
* address.line[0] = "671 Example Street"
* address.line[1] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"

Instance: bbe38248-9a8d-414f-996e-58d5fc9eb800
InstanceOf: DispositionLocation
Title: "Disposition Location Example"
Description: "Instance example of the VRDR-Disposition-Location resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T20:39:55.120+00:00"
* meta.source = "#yZiQmsI8g0FQZ7SK"
* name = "Bedford Hospital"
* type[0] = $v3-RoleCode#HOSP "Hospital"
* address.line[0] = "603 Example Street"
* address.line[1] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* physicalType = $location-physical-type#bu "Building"

Instance: 092e7b13-224d-46a6-ac31-0d98d4c84126
InstanceOf: DecedentPregnancy
Title: "Decedent Pregnancy Example"
Description: "An instance example of the VRDR-Decedent-Pregnancy resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T23:35:04.301+00:00"
* meta.source = "#WrDQeRxZcljjquQJ"
* status = #final
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $v3-NullFlavor#NA "not applicable"

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

Instance: 4424113f-69c4-40fe-b88f-d7b03304dfe4
InstanceOf: DecedentTransportationRole
Title: "Decedent Transportation Role Example"
Description: "An instance example of the VRDR-Decedent-Transportation-Role resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T23:18:00.040+00:00"
* meta.source = "#bhLB1j17Wy19Bz9I"
* status = #final
* code = $loinc#69451-3 "Transportation role of decedent"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $sct#257500003 "Passenger"

Instance: 48b230c3-c5b5-4844-83bf-ede59170676e
InstanceOf: VRDR_DecedentUsualWork
Title: "Decedent Usual Work Example"
Description: "An instance example of the VRDR-Decedent-Usual-Work resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-23T14:19:04.167+00:00"
* meta.source = "#pXRxySPzm18x6rcs"
* status = #final
* code = $loinc#21843-8 "History of Usual occupation"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectivePeriod.start = "1920-01-07"
* effectivePeriod.end = "2018-02-19"
* component[0].code = $loinc#21844-6 "History of Usual industry"

Instance: 4aed1450-ab2d-4cb9-858f-227b127323a6
InstanceOf: ExaminerContacted
Title: "Examiner Contacted Example"
Description: "An instance example of the VRDR-Examiner-Contacted resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T23:10:29.517+00:00"
* meta.source = "#0UwaugWPuvybDV66"
* status = #final
* code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $v2-0136#Y "Yes"

Instance: 4d0ce010-16f1-44f4-bbf8-3a2030e9de99
InstanceOf: TobaccoUseContributedToDeath
Title: "Tobacco Use Contributed To Death"
Description: "An instance example of the VRDR-Tobacco-Use-Contributed-To-Death resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T22:40:43.185+00:00"
* meta.source = "#cIJIQkq7Q2smLbo1"
* status = #final
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $sct#373066001 "Yes"

Instance: 636dafac-0d92-4649-b838-004bcf714f5aj
InstanceOf: VRDR_DecedentMilitaryService
Title: "Decedent Military Service Example"
Description: "An instance example of the VRDR-Decedent-Military-Service"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-07-23T13:59:17.607+00:00"
* meta.source = "#hxQhOSxURa7t82BU"
* status = #final
* code = $loinc#55280-2 "Military service Narrative"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $v2-0136#Y "Yes"

Instance: 6606dd3a-49ba-47a9-a6e7-e7e4ebeddac7
InstanceOf: VRDR_BirthRecordIdentifier
Title: "Birth Record Identifier Example"
Description: "An instance example of the Birth Record Identifier resource profile.  In this example Birth Record identifier 4242123 denotes Massachusetts and 1940 as the birthplace and birth year of the decedent."
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-07-21T01:00:48.877+00:00"
* meta.source = "#4GORZxL8MlgNS06O"
* status = #final
* code = $v2-0203#BR "Birth registry number"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueString = "4242123"

Instance: 9676ae27-2a89-4295-913c-0d6847300a3a
InstanceOf: DecedentEducationLevel
Title: "Decedent Education Level Example"
Description: "An instance example of the VRDR-Decedent-Education-Level resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:25:50.595+00:00"
* meta.source = "#j3yydvKd5etH1fHS"
* status = #final
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $ViewValueSet.action#PHC1453 "Bachelor's Degree"

Instance: b531cbf7-6290-424c-8155-0549c3fb3243
InstanceOf: VRDR_DeathDate
Title: "Death Date Example"
Description: "An instance example of the VRDR-Death-Date resource profile. In this example, the date and time of death is 2018-02-20T16:48:06-05:00. The Date and time pronounced dead is also  2018-02-20T16:48:06-05:00."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T05:13:38.793+00:00"
* meta.source = "#JE1pSryeOBG0VdGY"
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectiveDateTime = "2018-02-19T16:48:06-05:00"
* performer[0].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* valueDateTime = "2018-02-20T16:48:06-05:00"
* component[0].code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component[0].valueDateTime = "2018-02-20T16:48:06-05:00"

Instance: d7c2e459-c7ca-415c-a38c-f78a0f0c5813
InstanceOf: MannerOfDeath
Title: "Manner of Death Example"
Description: "An instance example of the VRDR-Manner-of-Death resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T18:51:08.127+00:00"
* meta.source = "#hVmaJTwX1XDu5R6Q"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performer[0].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* valueCodeableConcept = $sct#7878000 "Accidental death"

Instance: d80681ff-9f1d-4915-87b5-eda54534096a
InstanceOf: VRDR_DecedentDispositionMethod
Title: "Decedent Disposition Method Example"
Description: "An instance example of the VRDR-Decedent-Disposition-Method resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T04:42:54.238+00:00"
* meta.source = "#EWSBpip72gzd2ZO5"
* status = #final
* code = $loinc#80905-3 "Body disposition method"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performer[0].reference = "Practitioner/80db6f45-8a6d-4583-8a03-55a6663523c2"
* valueCodeableConcept = $sct#52373005 "Burial"

Instance: df5a2807-e0b2-4971-9820-efdbbbfcef7b
InstanceOf: DecedentAge
Title: "Decedent Age Example"
Description: "An instance example of the VRDR-Decedent-Age resource profile. In this example, the decedent is identified as 79 years in age."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-08-13T15:20:48.039+00:00"
* meta.source = "#vIFk7iaTriXremhe"
* status = #final
* code = $loinc#30525-0 "Age"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectiveDateTime = "2020-01-02"
* valueQuantity.value = 79
* valueQuantity.unit = "a"

Instance: 1a110397-936f-4be4-ab10-2caed226569d
InstanceOf: InterestedParty
Title: "Interested Party Instance Example"
Description: "An instance example of the Interested Party resource profile. In the example, Example Hospital from MA is an active Healthcare Provider interested party."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T20:13:30.256+00:00"
* meta.source = "#WNc8XRJBmrGtNJO7"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1010101"
* active = true
* type[0] = $organization-type#prov "Healthcare Provider"
* name = "Example Hospital"
* address[0].line[0] = "10 Example Street"
* address[0].line[1] = "Line 2"
* address[0].city = "Bedford"
* address[0].district = "Middlesex"
* address[0].state = "MA"
* address[0].postalCode = "01730"
* address[0].country = "United States"

Instance: 6f47da13-0c25-483b-8729-7b96716b17fc
InstanceOf: FuneralHome
Title: "Funeral Home Example"
Description: "An instance example of the VRDR-Funeral-Home resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T13:44:54.456+00:00"
* meta.source = "#rcCxHuRNpH2lnKn5"
* active = true
* type[0] = $organization-type#bus "Non-Healthcare Business or Corporation"
* name = "Smith Funeral Home"
* address[0].line[0] = "1011010 Example Street"
* address[0].line[1] = "Line 2"
* address[0].city = "Bedford"
* address[0].district = "Middlesex"
* address[0].state = "MA"
* address[0].postalCode = "01730"
* address[0].country = "United States"

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

Instance: 80db6f45-8a6d-4583-8a03-55a6663523c2
InstanceOf: Mortician
Title: "Mortician Example"
Description: "An instance example of the VRDR-Mortician resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T04:35:39.126+00:00"
* meta.source = "#Mze6QKeTUorpQzO2"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1122334455"
* name[0].use = #official
* name[0].family = "Last"
* name[0].given[0] = "FD"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Jr."
* qualification[0].identifier[0].value = "9876543210"
* qualification[0].code = $sct#309343006 "Physician"
* qualification[0].code.text = "Physician"

Instance: 9102c234-53ca-4066-8452-42f3ba751c7d
InstanceOf: DeathPronouncementPerformer
Title: "Death Pronouncement Performer Example"
Description: "An instance example of the VRDR-Death-Pronouncement-Performer resource profile"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-25T23:44:52.912+00:00"
* meta.source = "#lSYCtKrCXgjr2pRs"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1122334455"
* name[0].use = #official
* name[0].family = "Last"
* name[0].given[0] = "Doctor"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Jr."

Instance: cb1219bc-785f-431c-9f56-b8fbbe78bc4d
InstanceOf: VRDR_Certifier
Title: "Certifier Instance Example"
Description: "An instance example of a Certifier resource profile. This example is a certifying physician."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T01:29:51.589+00:00"
* meta.source = "#oHTVk2uNpGANjZpI"
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

Instance: 4b96759f-8395-4093-8417-e1ca3cd26f0a
InstanceOf: FuneralServiceLicensee
Title: "Funeral Service Licensee Example"
Description: "An instance example of the VRDR-Funeral-Service-Licensee resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T13:45:13.457+00:00"
* meta.source = "#6trg7JpciR7u5T8N"
* practitioner.reference = "Practitioner/80db6f45-8a6d-4583-8a03-55a6663523c2"
* organization.reference = "Organization/6f47da13-0c25-483b-8729-7b96716b17fc"
* telecom[0].system = #phone
* telecom[0].value = "716-873-1557"

Instance: 219ef5e3-ed0c-4dab-88eb-b114daaebd73
InstanceOf: DeathCertification
Title: "Death Certification Instance Example"
Description: "An instance example of a Death Certification resource profile. This example Death Certification procedure performed by a physician on 2019-01-29."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T01:43:10.674+00:00"
* meta.source = "#8k18Qj8mbpzIKsUn"
* identifier[0].value = "aabcde9876543210"
* status = #completed
* category = $sct#103693007 "Diagnostic procedure"
* code = $sct#308646001 "Death certification"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performedDateTime = "2019-01-29T16:48:06-05:00"
* performer[0].function = $sct#309343006 "Physician"
* performer[0].actor.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"

Instance: 89ababc6-8c2a-4e76-9f53-8677822f54a9
InstanceOf: VRDR_DecedentMother
Title: "Decedent Mother Example"
Description: "An instance example of the VRDR-Decedent-Mother resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:49:29.537+00:00"
* meta.source = "#Ig5XrcHuNGzpbSuz"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship[0] = $v3-RoleCode#MTH "mother"
* name[0].family = "Maiden"
* name[0].given[0] = "Mother"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Dr."

Instance: 962fded4-b90a-44f7-950e-3832011ad65f
InstanceOf: DecedentSpouse
Title: "Decedent Spouse Example"
Description: "An instance example of the VRDR-Decedent-Spouse example."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:39:30.286+00:00"
* meta.source = "#PGjsDV0MqNsjbXzo"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship[0] = $v3-RoleCode#SPS "spouse"
* name[0].family = "Last"
* name[0].given[0] = "Spouse"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Ph.D."

Instance: 976c548f-9460-42f2-b41e-390b3bee91c8
InstanceOf: DecedentFather
Title: "Decedent Father Example"
Description: "An instance example of the VRDR-Decedent-Father resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T13:15:15.056+00:00"
* meta.source = "#fZ6Xx77uM1YRkplb"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship[0] = $v3-RoleCode#FTH "father"
* name[0].family = "Last"
* name[0].given[0] = "Father"
* name[0].given[1] = "Middle"
* name[0].suffix[0] = "Sr."

Instance: 79ee2174-1469-4301-a667-6332d4d26198
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2021-04-07T19:28:04.873+00:00"
* type = #collection

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