Extension: ExtensionEEVRISReCryopreservation
Id: ee-vris-recryo
Title: "Re-cryopreservation date and count"
Description: "Extension for re-cryopreservation information. (ee Bioloogilise materjali taaskülmutamine ja arv.)"
Context: BiologicallyDerivedProduct
* ^url = "https://fhir.ee/vris/StructureDefinition/ee-vris-recryo"
//* ^version = "1.0.0"
* . 0..1
* . ^short = "Count of re-cryopreservation. (ee Bioloogilise materjali taaskülmutamise arv.)"
* . ^definition = "ee Bioloogilise materjali taaskülmutamise arv."
//* url = "https://fhir.ee/StructureDefinition/fertility-cryopreservation-date" (exactly)
* extension contains
    reCryo 0..1 and
    reCryoCount 0..1 and
    reCryoDate 0..1
* extension[reCryo] ^short = "Re-cryopreservation is done= true, not done=false"
* extension[reCryo].value[x] only boolean
* extension[reCryoCount] ^short = "Count"
* extension[reCryoCount].value[x] only integer
* extension[reCryoDate] ^short = "Date"
* extension[reCryoDate].value[x] only dateTime