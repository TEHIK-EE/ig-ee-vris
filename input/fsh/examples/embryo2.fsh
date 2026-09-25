Instance: embryo2
InstanceOf: EEVRISEmbryo
Usage: #example
Description: "Fresh package. Transferred in the same cycle (Värske)"
* identifier.value = "EMB790-1"
* productCode = $biological-material-type#embryo "Embrüo"
* productStatus = #unavailable
* biologicalSourceEvent.value = "EMB790"
* collection.source = Reference(Patient/patientFemale)
* collection.collectedDateTime = "2025-03-19"
* division = "1"
* expirationDate = "2025-03-19T18:00:00+02:00"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#fresh "Värske"

Instance: embryo2-1
InstanceOf: EEVRISEmbryo
Usage: #example
Description: "Individual embryo in fresh package EMB790-1"
* identifier.value = "EMB790-1-A"
* extension[package].valueReference = Reference(BiologicallyDerivedProduct/embryo2)
* productCode = $biological-material-type#embryo "Embrüo"
* productStatus = #unavailable
* biologicalSourceEvent.value = "EMB790"
* collection.source = Reference(Patient/patientFemale)
* collection.collectedDateTime = "2025-03-14"
* parent[0] = Reference(BiologicallyDerivedProduct/oocyte1-1)
* parent[+] = Reference(BiologicallyDerivedProduct/sperm1-1)
* property[developmentDay].valueInteger = 5