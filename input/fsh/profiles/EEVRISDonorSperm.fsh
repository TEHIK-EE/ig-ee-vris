Alias: $product-category = http://hl7.org/fhir/product-category
Alias: $fertility-biological-material-type = https://fhir.ee/CodeSystem/fertility-biological-material-type
Alias: $fertility-bdp-property-type = https://fhir.ee/CodeSystem/fertility-bdp-property-type
Alias: $fertility-cryopreservation-date = https://fhir.ee/StructureDefinition/fertility-cryopreservation-date
Alias: $EEFertilityPatient = https://fhir.ee/StructureDefinition/EEFertilityPatient

Profile: EEVRISDonorSperm
Parent: BiologicallyDerivedProduct
Id: ee-vris-donor-sperm
Title: "Doonori sperma"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud sperma"
//* ^url = "https://fhir.ee/StructureDefinition/EEFertilityBDP-DonorSperm"
//* ^version = "1.0.0"
* ^status = #active
* . ^short = "Doonori annetatud sperma"
* extension contains ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1
* extension[cryopreservationDate] ^short = "Annetatud spermadooside külmutamise kuupäev"
* productCategory 1..
* productCategory ^binding.description = "LOEND!" //$product-category#cells (exactly)
* productCode 1..
* productCode ^binding.description = "LOEND!" //$fertility-biological-material-type#sperm
* productStatus 1..
* productStatus ^binding.description = "LOEND!" //from BiologicallyDerivedProductStatus (required)
* collection 1..
* collection.source 1..
* collection.source only Reference($mpi-patient)
* collection.source ^short = "Doonori viide"
* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "Sperma omadused"
* property contains
    donatedDoseCount 1..1 and
    frozenDoseCount 1..1
* property[donatedDoseCount] ^short = "Annetatud spermadooside arv (5.1)"
* property[donatedDoseCount].type ^binding.description = "LOEND!" //$fertility-bdp-property-type#donated-dose-count
* property[donatedDoseCount].value[x] only integer
* property[frozenDoseCount] ^short = "Külmutatud spermadooside arv (5.2)"
* property[frozenDoseCount].type ^binding.description = "LOEND!" //  $fertility-bdp-property-type#frozen-dose-count
* property[frozenDoseCount].value[x] only integer