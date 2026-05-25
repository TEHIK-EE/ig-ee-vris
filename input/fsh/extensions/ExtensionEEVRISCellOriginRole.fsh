Extension: ExtensionEEVRISCellOriginRole
Id: ee-vris-cell-origin-role
Title: "Cell origin role"
Description: "Extension for recording the role of donor/recipient of biological material. (ee Sperma/munaraku doonori/retsiipiendi roll (mittepartnerannetaja, partner, anonüümne, säilituseesmärk jne).)"
* ^context[0].type = #element
* ^context[=].expression = "BiologicallyDerivedProduct"
* ^context[+].type = #element
* ^context[=].expression = "EEVRISDonor"
* . ^short = ""
* . ^definition = "(ee Doonori/retsiipiendi roll)."
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-origin-role"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Role of donor/recipient. (ee Doonori/retsiipiendi roll LOENDIST)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept