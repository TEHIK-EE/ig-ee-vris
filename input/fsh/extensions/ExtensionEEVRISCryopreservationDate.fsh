Extension: ExtensionEEVRISCryopreservationDate
Id: ee-vris-cryopreservation-date
Title: "Cryopreservation date"
Description: "Extension for recording cryopreservation date. (ee Bioloogilise materjali külmutamise (krüopreservatsiooni) kuupäev.)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Date of cryopreservation. (ee Külmutamise kuupäev.)"
* . ^definition = "Bioloogilise materjali külmutamise kuupäev"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only date