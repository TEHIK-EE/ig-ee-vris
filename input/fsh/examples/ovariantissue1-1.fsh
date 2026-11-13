Instance: ovariantissue1-1
InstanceOf: EEVRISReproductiveTissue
Usage: #example
Description: "Package 1 of 2 - cryopreserved, in storage"
* identifier.value = "OVT123-1"
* extension[cryopreservationDate].valueDateTime = "2025-01-15"
* productCode = $sct#127482009 "Tissue specimen from ovary"
* productStatus = #available
* biologicalSourceEvent.value = "OVT123"
* parent = Reference(BiologicallyDerivedProduct/ovariantissue1)
* division = "1"
* collection.source = Reference(Patient/patientFemale)
* property[fragmentCount].valueInteger = 4
* property[Role].valueCodeableConcept = $sct#237491000181102 "Bioloogilise materjali säilitaja"
* property[preservationState].valueCodeableConcept = $sct#261013005 "Fresh"
* property[originCountry].valueCodeableConcept = $rtk#EE