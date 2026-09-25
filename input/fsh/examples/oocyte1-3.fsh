Instance: oocyte1-3
InstanceOf: EEVRISOocyte
Usage: #example
Description: "Package 3 of 3 - cryopreserved, thawed and used"
* identifier.value = "OOC123-3"
//* extension[cryopreservationDate].valueDateTime = "2025-02-20"
* extension[thawing].extension[thawingDate].valueDateTime = "2025-06-15"
* extension[thawing].extension[thawingCount].valueInteger = 1
* productCode = $biological-material-type#oocyte "Munarakk"
* productStatus = #unavailable
* biologicalSourceEvent.value = "OOC123"
* parent = Reference(BiologicallyDerivedProduct/oocyte1)
* division = "3"
* collection.source = Reference(Patient/patientFemale)
* storageTempRequirements.low = -196 '°C' "°C"
* storageTempRequirements.high = -196 '°C' "°C"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#thawed "Sulatatud"
* property[frozenCount].valueInteger = 2