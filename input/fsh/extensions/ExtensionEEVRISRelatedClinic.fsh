Extension: ExtensionEEVRISRelatedClinic
Id: ee-vris-related-clinic
Title: "Related clinic"
Description: "Extension for related (fertility) clinic who has more rights to see their patient data. (ee Patsiendiga seotud (viljatusravikliinik)/TTO)"
Context: Patient
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-related-clinic"
//* ^version = "1.0.0"
* . 0..*
* . ^short = "Additional identifier. (ee Seotud TTO)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only Identifier