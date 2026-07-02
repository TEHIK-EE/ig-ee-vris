/*Extension: ExtensionEEVRISFertilityPreservationReason
Id: ee-vris-fertility-preservation-reason
Title: "Fertility Preservation Reason"
Description: "Reason for fertility preservation why biological material is being preserved (e.g., before oncological treatment, elective preservation, medical indication). (ee Viljakuse säilitamise põhjus, miks bioloogilist materjali säilitatakse. (Nt onkoloogiline, soo vahetus, kirurgiline jne))"
* ^context.expression = "BiologicallyDerivedProduct"
* ^context.type = #element
* ^status = #draft

* value[x] only CodeableConcept
* valueCodeableConcept from $vris-fertility-preservation-reason (required)
* valueCodeableConcept ^short = "(ee Viljakuse säilitamise põhjus)"
*/