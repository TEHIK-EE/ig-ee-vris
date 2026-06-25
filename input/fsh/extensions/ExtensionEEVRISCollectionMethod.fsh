Extension: ExtensionEEVRISCollectionMethod
Id: ee-vris-collection-method
Title: "Cell collection method"
Description: "Extension for reproductive material collection method. (ee Suguraku kogumise meetod.NB! VAJA ühtset loendit erinevate sugurakkude/kudede jaoks?!?|biopsia|,|Seemnepurse|Vibroejakulaatori vm tehnilise abivahendi/meetodi abil saadud seemnepurse|)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-collection-method"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "How the reproductive material were collected. (ee Seemnerakkude kogumise meetod.)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept