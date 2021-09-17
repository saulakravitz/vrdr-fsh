Profile: LocationJurisdictionId
Parent: Extension
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
* url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_1 (required)
* value[x] ^binding.description = "PHVS_USVitalRecordsJurisdictions_NCHS"