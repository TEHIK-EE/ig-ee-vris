Instance: sperm1-1
InstanceOf: EEVRISSperm
Usage: #example
Description: "Package 1 of 3 - used fresh"
//* identifier.system = $vris-bdp-id
* identifier.value = "ABC123-2"
* productCode = $biological-material-type#sperm "Seemnerakud"
* productStatus = #unavailable
* biologicalSourceEvent.value = "ABC123"
* parent = Reference(BiologicallyDerivedProduct/sperm1)
* division = "1"
* expirationDate = "2025-02-20T18:00:00+02:00"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#fresh "Värske"