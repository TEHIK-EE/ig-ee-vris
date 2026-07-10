Extension: ExtensionEEVRISAdditionalIdentifier
Id: ee-vris-additional-identifier
Title: "Additional identifier"
Description: "Extension for additional identifier. (ee Lisa-identifikaator)"
Context: Patient
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-additional-identifier"
//* ^version = "1.0.0"
* . 0..*
* . ^short = "Additional identifier. (ee Lisa-identifikaator)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only Identifier