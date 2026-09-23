Instance: sperm1-3
InstanceOf: EEVRISSperm
Usage: #example
Description: "Package 3 of 3 - cryopreserved, available"
//* identifier.system = $vris-bdp-id
* identifier.value = "ABC123-3"
* productCode = $biological-material-type#sperm "Seemnerakud"
* productStatus = #available
* biologicalSourceEvent.value = "ABC123"
* parent = Reference(BiologicallyDerivedProduct/sperm1)
* division = "3"
* processingFacility = Reference(Organization/organization-novavita1)
* storageTempRequirements.low = 196 '°C' "-196 °C"
* storageTempRequirements.high = 196 '°C' "-196 °C"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#cryopreserved "Külmutatud"
* extension[cryopreservationDate].valueDateTime = "2025-02-20"