Extension: ExtensionEEVRISFertilityPreservationMethod
Id: ee-vris-fertility-preservation-method
Title: "Fertility Preservation Method"
Description: "Method for fertility preservation why biological material is being preserved. (ee Viljakuse säilitamise meetod. (Nt  Puberteedieelne munasarja koe säilitamine))"
* ^context.expression = "BiologicallyDerivedProduct"
* ^context.type = #element
* ^status = #draft

* value[x] only CodeableConcept
* valueCodeableConcept from $vris-fertility-preservation-reason (required)
* valueCodeableConcept ^short = "(ee Viljakuse säilitamise meetod. LOEND PUUDU!)"
