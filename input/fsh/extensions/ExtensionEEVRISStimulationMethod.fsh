Extension: ExtensionEEVRISStimulationMethod
Id: ee-vris-stimulation-method
Title: "Stimulatsiooni meetod"
Description: "Bioloogilise materjali stimulatsiooni meetod"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-stimulation-method"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Method of stimulation. (ee Stimulatsiooni meetod.)"
* . ^definition = "Bioloogilise materjali stimulatsiooni meetod"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept