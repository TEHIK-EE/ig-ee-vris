Extension: ExtensionEEVRISBirthSex
Id: ee-vris-birth-sex
Title: "Birth Sex"
Description: "Extension for birth sex. (ee Sünnisugu)"
Context: Patient
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-birth-sex"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Birth sex. (ee Sünnisugu)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept