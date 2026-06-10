Extension: ExtensionEEVRISCellPreservationReason
Id: ee-vris-cell-preservation-reason
Title: "Cell preservation reason"
Description: "Extension for the reason of cell preservation. (ee Sperma/munaraku säilitamise põhjus.)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Reason for preservimg oocyte or sperm. (ee Sperma/munaraku säilitamise põhjus.)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept