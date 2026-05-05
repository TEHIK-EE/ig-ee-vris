//Alias: $product-category = http://hl7.org/fhir/product-category
//Alias: $fertility-biological-material-type = https://fhir.ee/CodeSystem/fertility-biological-material-type
//Alias: $fertility-bdp-property-type = https://fhir.ee/CodeSystem/fertility-bdp-property-type
//Alias: $fertility-cryopreservation-date = https://fhir.ee/StructureDefinition/fertility-cryopreservation-date
//Alias: $EEFertilityPatient = https://fhir.ee/StructureDefinition/EEFertilityPatient

Profile: EEVRISDonorEmbryo
Parent: BiologicallyDerivedProduct
Id: ee-vris-donor-embryo
Title: "Doonori embrüo(d)"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud embrüo(d)"
//* ^url = "https://fhir.ee/StructureDefinition/EEFertilityBDP-DonorSperm"
//* ^version = "1.0.0"
* ^status = #active
* . ^short = "Doonori annetatud embrüo(d)"
* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1
* extension[cryopreservationDate] ^short = "Annetatud embrüo külmutamise kuupäev"
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
* property ^slicing.description = "embrüo(d) omadused"
* property contains
    donatedCount 1..1 and
    developmentDay 1..1
* property[donatedCount] ^short = "Annetatud embrüote arv"
* property[donatedCount].type ^binding.description = "LOENDist fix kood!" //$fertility-bdp-property-type#donated-dose-count
* property[donatedCount].value[x] only integer
* property[developmentDay] ^short = "Embrüo arengupäev"
* property[developmentDay] ^definition = "Embrüo arengupäev — päevade arv pärast viljastamist (nt 3, 5, 6)"
* property[developmentDay].type ^binding.description = "LOENDist fix kood!" //  $fertility-bdp-property-type#frozen-dose-count
* property[developmentDay].value[x] only integer
* identifier ^short = "Tõenäoliselt väga oluline identifikaator?"
* parent 0..0
* request 0..0
* biologicalSourceEvent ^short = "Kas seda on vaja?"
* processingFacility ^short = "Kas seda on vaja?"
* division 0..0
* expirationDate 0..0
* storageTempRequirements 0..0