/*Extension: ExtensionEEVRISOocyteOrigin
Id: ee-vris-oocyte-origin
Title: "Oocyte origin"
Description: "Extension for oocyte origin. (ee Munaraku päritolu.)|Viljatusravi patsiendi munarakk|Partnerannetaja munarakk|Mittepartnerist doonori munarakk|Anonüümse doonori munarakk|Oma munasarja kude|"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte-origin"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Oocyte origin. (ee Munaraku päritolu.)"
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
*/