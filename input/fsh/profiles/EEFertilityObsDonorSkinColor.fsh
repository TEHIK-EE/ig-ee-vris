Profile: EEFertilityObsDonorSkinColor
Parent: Observation
Id: EEFertilityObs-DonorSkinColor
Title: "Doonori nahavärvus"
Description: "Anonüümse doonori või mittepartnerannetaja nahavärvus koos etnilise taustaga (4.1)"
//* ^url = "https://fhir.ee/StructureDefinition/EEFertilityObs-DonorSkinColor"
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
* code.coding.code = #skin-color-ethnicity (exactly)

* subject 1..1
//* subject only Reference(EEFertilityPatient)
* subject ^short = "Doonori viide"

* effective[x] only dateTime
* effective[x] 0..1

* value[x] only CodeableConcept
* value[x] 1..1
* valueCodeableConcept from https://fhir.ee/ValueSet/fertility-skin-color-ethnicity (required)
* valueCodeableConcept ^short = "Nahavärvus (4.1)"