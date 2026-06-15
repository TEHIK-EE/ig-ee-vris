Extension: ExtensionEEVRISCellOriginRole
Id: ee-vris-cell-origin-role
Title: "Cell origin role"
Description: "Extension for the role of donor/recipient of biological material. (ee Sperma/munaraku doonori/retsipiendi roll (mittepartnerannetaja, partner, anonüümne, säilituseesmärk jne).)"
* ^context[0].type = #element
* ^context[=].expression = "BiologicallyDerivedProduct"
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* . ^short = ""
* . ^definition = "(ee Doonori/retsipiendi roll)."
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-origin-role"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Role of donor/recipient. (ee Doonori/retsipiendi roll LOENDIST.)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept