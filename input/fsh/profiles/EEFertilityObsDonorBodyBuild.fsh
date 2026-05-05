Profile: EEFertilityObsDonorBodyBuild
Parent: Observation
Id: EEFertilityObs-DonorBodyBuild
Title: "Doonori kehaehitus"
Description: "Anonüümse doonori või mittepartnerannetaja kehaehituse tüüp (4.2)"
//* ^url = "https://fhir.ee/StructureDefinition/EEFertilityObs-DonorBodyBuild"
* ^version = "1.0.0"
* ^status = #active

//* status = #final
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains socialHistory 1..1
* category[socialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history

* code 1..1
* code.coding 1..*
* code.coding.system = "https://fhir.ee/CodeSystem/fertility-donor-characteristic-code" (exactly)
* code.coding.code = #body-build (exactly)

* subject 1..1
//* subject only Reference(EEFertilityPatient)
* subject ^short = "Doonori viide"

* effective[x] only dateTime
* effective[x] 0..1

* value[x] only CodeableConcept
* value[x] 1..1
* valueCodeableConcept from https://fhir.ee/ValueSet/fertility-body-build (required)
* valueCodeableConcept ^short = "Kehaehitus (4.2)"