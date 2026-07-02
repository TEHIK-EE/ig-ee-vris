Extension: ExtensionEEVRISOocyteIntendedUse
Id: ee-vris-oocyte-intended-use
Title: "Oocyte Intended Use"
Description: "Indicates whether the oocyte is intended for donation or for self-use. (ee Munaraku kasutusotstarve, doonorluseks või enda tarbeks.)"
* ^context.expression = "BiologicallyDerivedProduct"
* ^context.type = #element
* ^status = #draft

* value[x] only CodeableConcept
* valueCodeableConcept from $vris-oocyte-intended-use (required)
* valueCodeableConcept ^short = "(ee Doonorluseks või enda tarbeks)"