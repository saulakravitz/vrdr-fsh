Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $admingender = http://hl7.org/fhir/administrative-gender
Alias: $statesVS = http://hl7.org/fhir/ValueSet/usps-state
Alias: $statesCS = https://www.usps.com/
Alias: $provinces = http://canadapost.ca/CodeSystem/ProvinceCodes

ValueSet: USStatesAndTerritoriesVS
Id: USStates-Territories-VS
Title: "US States, Territories Value Set"
Description: "2 Letter States and Territories Value Set"
* ^status = #active
* ^version = "1.0.0"
* include codes from valueset $statesCS
* exclude $statesCS#FM
* exclude $statesCS#MH
* exclude $statesCS#PW
* exclude $statesCS#AP
* exclude $statesCS#AE
* exclude $statesCS#AA

ValueSet: StatesTerritoriesAndProvincesVS
Id: States-TerritoriesProvinces-VS
Title: "States, Territories and Provinces Value Set"
Description: "2 Letter States and Provinces Value Set"
* ^status = #active
* ^version = "1.0.0"
* include codes from valueset USStatesAndTerritoriesVS
* include codes from valueset CanadaProvincesVS

ValueSet: CanadaProvincesVS
Id: Canada-Provinces-VS
Title: "Canadian Provinces Value Set"
Description: "2 Letter Candadian Provinces Value Set"
* $provinces#AB	"Alberta"
* $provinces#BC	"British Columbia"
* $provinces#MB	"Manitoba"
* $provinces#NB	"New Brunswick"
* $provinces#NL	"Newfoundland and Labrador"
* $provinces#NS	"Nova Scotia"
* $provinces#NT	"Northwest Territories"
* $provinces#NU	"Nunavut"
* $provinces#ON	"Ontario"
* $provinces#PE	"Prince Edward Island"
* $provinces#QC	"Quebec"
* $provinces#SK	"Saskatchewan"
* $provinces#YT	"Yukon"


CodeSystem: VRDRJurisdictionsCS
Id: VRDR-Jurisdictions
Title: "VRDR Jurisdictions"
Description: "VRDR Jurisdictions that are not US States or Territories"
* #YC "New York City" "New York City"

ValueSet: VRDRJurisdictionVS
Id: Jurisdictions-VS
Title: "VRDR Jurisdictions Value Set"
Description: "2 Letter States and Provinces Value Set"
* include codes from valueset USStatesAndTerritoriesVS
* VRDRJurisdictionsCS#YC "New York City"