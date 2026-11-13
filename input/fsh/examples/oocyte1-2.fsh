Instance: oocyte1-2
InstanceOf: EEVRISOocyte
Usage: #example
Description: "Package 2 of 3 - cryopreserved, in storage"
* identifier.value = "OOC123-2"
//* extension[cryopreservationDate].valueDateTime = "2025-02-20"
* productCode = $sct#86082002 "Munarakk"
* productStatus = #available
* biologicalSourceEvent.value = "OOC123"
* parent = Reference(BiologicallyDerivedProduct/oocyte1)
* division = "2"
* collection.source = Reference(Patient/patientFemale)
* storageTempRequirements.low = -196 '°C' "°C"
* storageTempRequirements.high = -196 '°C' "°C"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#cryopreserved "Külmutatud"
* property[frozenCount].valueInteger = 3
* property[Role].valueCodeableConcept = $sct#237391000181109 "Mittepartnerannetaj" // |Non-partner donor (person)|
* property[originCountry].valueCodeableConcept = $rtk#EE