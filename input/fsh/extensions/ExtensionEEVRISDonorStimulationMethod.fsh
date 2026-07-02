Extension: ExtensionEEVRISSpermDonorStimulationMethod
Id: ee-vris-sperm-donor-stimulation-method
Title: "Sperm Donor Stimulation Method"
Description: "Hormonal stimulation method used for sperm donor prior to sperm collection. (ee Seemnerakkude annetaja stimulatsiooni meetod.)"
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm-donor-stimulation-method"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "BiologicallyDerivedProduct"

* . 0..1
* . ^short = "Sperm donor stimulation method. (ee Mehe stimulatsiooni meetod LOENDist.)"

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $vris-sperm-donor-stimulation-method (required)
* valueCodeableConcept ^short = "(ee Stimulatsiooni meetod, Follitropiin / Kooriongonadotropiin / Follitropiin+Kooriongonadotropiin / Muu)"