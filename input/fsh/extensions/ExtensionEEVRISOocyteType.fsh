Extension: ExtensionEEVRISOocyteType
Id: ee-vris-oocyte-type
Title: "Oocyte origin"
Description: "Extension for oocyte type. (ee Munaraku tüüp.|Viljastamise päeval hangitud|Külmutatud-sulatatud|Viljastamise päeval hangitud ja külmutatud-sulatatud|)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte-type"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Oocyte type. (ee Munaraku tüüp.)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept