/*
//Alias: $product-category = http://hl7.org/fhir/product-category
//Alias: $fertility-biological-material-type = https://fhir.ee/CodeSystem/fertility-biological-material-type
//Alias: $fertility-bdp-property-type = https://fhir.ee/CodeSystem/fertility-bdp-property-type
//Alias: $fertility-cryopreservation-date = https://fhir.ee/StructureDefinition/fertility-cryopreservation-date
//lias: $EEFertilityPatient = https://fhir.ee/StructureDefinition/EEFertilityPatient

Profile: EEVRISDonorSperm
Parent: BiologicallyDerivedProduct
Id: ee-vris-donor-sperm
Title: "Doonori sperma"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud sperma"
//* ^url = "https://fhir.ee/StructureDefinition/EEFertilityBDP-DonorSperm"
//* ^version = "1.0.0"
* ^status = #active
* . ^short = "Doonori annetatud sperma"
* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1
* extension[cryopreservationDate] ^short = "Annetatud spermadooside külmutamise kuupäev"
* productCategory 1..
* productCategory ^binding.description = "LOEND!" //$product-category#cells (exactly)
* productCode 1..
* productCode from $biological-material-type-VS // ^binding.description = "LOEND!" //$fertility-biological-material-type#sperm
* productStatus 1..
* productStatus ^binding.description = "LOEND!" //from BiologicallyDerivedProductStatus (required)
* collection 1..
* collection.source 1..
* collection.source only Reference($vris-patient)
* collection.source ^short = "Doonori viide"
* property.type from $vris-property-type-VS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.coding.code"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "embrüo(d) omadused"
* property contains
    donatedDoseCount 0..1 and
    frozenDoseCount 0..1
* property[donatedDoseCount] ^short = "Annetatud spermadooside arv (5.1)"
* property[donatedDoseCount].type.coding.code = #donated-dose-count
* property[donatedDoseCount].value[x] only integer
* property[frozenDoseCount] ^short = "Külmutatud spermadooside arv (5.2)"
* property[frozenDoseCount].type.coding.code = #frozen-dose-count
* property[frozenDoseCount].value[x] only integer
* identifier ^short = "Tõenäoliselt väga oluline identifikaator?"
* parent 0..0
* request 0..0
* biologicalSourceEvent ^short = "Kas seda on vaja?"
* processingFacility ^short = "Kas seda on vaja?"
* division 0..0
* expirationDate 0..0
* storageTempRequirements 0..0
*/