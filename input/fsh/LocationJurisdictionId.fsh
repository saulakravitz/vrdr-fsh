Extension: LocationJurisdictionId
Id: Location-Jurisdiction-Id
Title: "Location Jurisdiction Id"
* ^context.expression = "Location"
* url 1..1
* url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_1 (required)
* value[x] ^binding.description = "PHVS_USVitalRecordsJurisdictions_NCHS"