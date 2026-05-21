Extension: ExtensionEEVRISCellDonorType
Id: ee-vris-cell-donor-type
Title: "Doonori tüüp"
Description: "Sperma/munaraku doonori tüüp."
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-donor-type"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Type of donor of sperm or oocyte. (ee Sperma/munaraku doonori tüüp)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept