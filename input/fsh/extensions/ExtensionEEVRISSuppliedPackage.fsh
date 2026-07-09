Extension: ExtensionEEVRISSuppliedPackage
Id: ee-vris-supplied-package
Title: "Supplied package reference"
Description: "Extension for referencing supplied package. (ee Viide väljastatud/vastuvõetud pakendile.)"
Context: SupplyDelivery
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-supplied-package"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Reference package (Pakendi viide)"
* . ^definition = "Pakendi viide"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 0..1
* value[x] only Reference(EEVRISPackagedProductDefinition)
