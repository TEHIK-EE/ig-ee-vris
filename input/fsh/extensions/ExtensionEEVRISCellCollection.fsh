Extension: ExtensionEEVRISCellCollection
Id: ee-vris-cell-collection
Title: "Cell collection method"
Description: "Extension for cell collection method. (ee Suguraku (sperma) kogumise meetod.|Munarakkude viljastamise päeval annetatud|Külmutatud-sulatatud|Inseminatsiooni päeval annetatud ja varasemalt külmutatud-sulatatud seemnerakkude koos kasutamine|)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-collection"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "How the cells were collected. (ee Suguraku kogumise meetod.)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept