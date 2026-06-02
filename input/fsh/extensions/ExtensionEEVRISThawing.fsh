Extension: ExtensionEEVRISThawing
Id: ee-vris-thawing
Title: "Thawing date and count"
Description: "Extension for thawing information. (ee Bioloogilise materjali sulatamise kuupäev ja arv.)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-thawing"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Date and count of thawing. (ee Bioloogilise materjali sulatamise kuupäev ja arv.)"
* . ^definition = "ee Bioloogilise materjali sulatamise kuupäev ja arv."
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* extension contains
    thawingDate 0..1 and
    thawingCount 0..1
* extension[thawingDate] ^short = "When thawning or warming is happening"
* extension[thawingDate].value[x] only date
* extension[thawingCount] ^short = "Count"
* extension[thawingCount].value[x] only integer