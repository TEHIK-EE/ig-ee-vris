Instance: oocyte1-1
InstanceOf: EEVRISOocyte
Usage: #example
Description: "Package 1 of 3 - used fresh"
* identifier.value = "OOC123-1"
* productCode = $sct#86082002 "Munarakk"
* productStatus = #unavailable
* biologicalSourceEvent.value = "OOC123"
* parent = Reference(BiologicallyDerivedProduct/oocyte1)
* division = "1"
* collection.source = Reference(Patient/patientFemale)
* expirationDate = "2025-02-20T18:00:00+02:00"
* property[preservationState].valueCodeableConcept = $sct#261013005 "Fresh"
* property[Role].valueCodeableConcept = $sct#237391000181109 "Mittepartnerannetaja" // |Non-partner donor (person)|
* property[metaPhase2Count].valueInteger = 3
* property[originCountry].valueCodeableConcept = $rtk#EE