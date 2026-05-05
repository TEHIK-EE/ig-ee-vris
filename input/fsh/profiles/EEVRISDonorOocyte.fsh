//Alias: $product-category = http://hl7.org/fhir/product-category
//Alias: $fertility-biological-material-type = https://fhir.ee/CodeSystem/fertility-biological-material-type
//Alias: $fertility-bdp-property-type = https://fhir.ee/CodeSystem/fertility-bdp-property-type
//Alias: $fertility-cryopreservation-date = https://fhir.ee/StructureDefinition/fertility-cryopreservation-date
//Alias: $EEFertilityPatient = https://fhir.ee/StructureDefinition/EEFertilityPatient

Profile: EEVRISDonorOocyte
Parent: BiologicallyDerivedProduct
Id: ee-vris-donor-oocyte
Title: "Doonori munarakud"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud munarakud"
//* ^url = "https://fhir.ee/StructureDefinition/EEFertilityBDP-DonorSperm"
//* ^version = "1.0.0"
* ^status = #active
* . ^short = "Doonori annetatud munarakud"
* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1
* extension[cryopreservationDate] ^short = "Annetatud munarakkude külmutamise kuupäev"
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
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "Munarakkude omadused"
* property contains
    obtainedCount 1..1 and
    frozenCount  1..1
* property[obtainedCount] ^short = "Annetatud munarakkude arv"
* property[obtainedCount].type ^binding.description = "LOENDist fix kood!" //$fertility-bdp-property-type#donated-dose-count
* property[obtainedCount].value[x] only integer
* property[frozenCount] ^short = "Külmutatud munarakkude arv"
* property[frozenCount].type ^binding.description = "LOENDist fix kood!" //  $fertility-bdp-property-type#frozen-dose-count
* property[frozenCount].value[x] only integer
* identifier ^short = "Tõenäoliselt väga oluline identifikaator?"
* parent 0..0
* request 0..0
* biologicalSourceEvent ^short = "Kas seda on vaja?"
* processingFacility ^short = "Kas seda on vaja?"
* division 0..0
* expirationDate 0..0
* storageTempRequirements 0..0
