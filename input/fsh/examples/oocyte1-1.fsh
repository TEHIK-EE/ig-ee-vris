Instance: oocyte1-1
InstanceOf: EEVRISOocyte
Usage: #example
Description: "Package 1 of 3 - used fresh"
* identifier.value = "OOC123-1"
* productCode = $biological-material-type#oocyte "Munarakk"
* productStatus = #unavailable
* biologicalSourceEvent.value = "OOC123"
* parent = Reference(BiologicallyDerivedProduct/oocyte1)
* division = "1"
* collection.source = Reference(Patient/patientFemale)
* expirationDate = "2025-02-20T18:00:00+02:00"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#fresh "Värske"
* property[metaPhase2Count].valueInteger = 3