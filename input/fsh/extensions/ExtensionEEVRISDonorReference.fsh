Extension: ExtensionEEVRISDonorReference
Id: ee-vris-donor-reference
Title: "Seotud isik"
Description: "Viide seotud isikule/doonorile"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-reference"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Reference to donor (Doonori või seotud isiku viide)"
* . ^definition = "Doonori või seotud isiku viide"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 0..1
* value[x] only Reference($vris-donor)
