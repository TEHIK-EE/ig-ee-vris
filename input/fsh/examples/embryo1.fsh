Instance: embryo1
InstanceOf: EEVRISEmbryo
Usage: #example
Description: "Package 1 of 2. Cryopreserved, contains two embryos"
* identifier.value = "EMB789-1"
* productCode = $biological-material-type#embryo "Embrüo"
* productStatus = #available
* biologicalSourceEvent.value = "EMB789"
* collection.source = Reference(Patient/patientFemale)
* collection.collectedDateTime = "2025-03-19"
* division = "1"
* storageTempRequirements.low = -196 '°C' "°C"
* storageTempRequirements.high = -196 '°C' "°C"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#cryopreserved "Külmutatud"
* property[preservationReason].valueCodeableConcept = $vris-fertility-preservation-reason#nononco "Mitte-onkoloogiline terviseprobleem"

Instance: embryo1-1
InstanceOf: EEVRISEmbryo
Usage: #example
Description: "Individual embryo 1 in package EMB789-1"
* identifier.value = "EMB789-1-A"
* extension[package].valueReference = Reference(BiologicallyDerivedProduct/embryo1)
* productCode = $biological-material-type#embryo "Embrüo"
* productStatus = #available
* biologicalSourceEvent.value = "EMB789"
* collection.source = Reference(Patient/patientFemale)
* collection.collectedDateTime = "2025-03-14"
* parent[0] = Reference(BiologicallyDerivedProduct/oocyte1-1)
* parent[+] = Reference(BiologicallyDerivedProduct/sperm1-1)
* property[developmentDay].valueInteger = 5

Instance: embryo1-2
InstanceOf: EEVRISEmbryo
Usage: #example
Description: "Individual embryo 2 in package EMB789-1"
* identifier.value = "EMB789-1-B"
* extension[package].valueReference = Reference(BiologicallyDerivedProduct/embryo1)
* productCode = $biological-material-type#embryo "Embrüo"
* productStatus = #available
* biologicalSourceEvent.value = "EMB789"
* collection.source = Reference(Patient/patientFemale)
* collection.collectedDateTime = "2025-03-14"
* parent[0] = Reference(BiologicallyDerivedProduct/oocyte1-1)
* parent[+] = Reference(BiologicallyDerivedProduct/sperm1-1)
* property[developmentDay].valueInteger = 5