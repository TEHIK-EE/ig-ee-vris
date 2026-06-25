Extension: ExtensionEEVRISCellUsageState
Id: ee-vris-usage-state
Title: "Cell Usage state"
Description: "Extension for cell usage state. (ee Suguraku (sperma) SAAMISE meetod.|Munarakkude viljastamise päeval annetatud|Külmutatud-sulatatud|Inseminatsiooni päeval annetatud ja varasemalt külmutatud-sulatatud seemnerakkude koos kasutamine|)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-usage-state"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "How the cells were collected. (ee Suguraku SAAMISE meetod.)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept