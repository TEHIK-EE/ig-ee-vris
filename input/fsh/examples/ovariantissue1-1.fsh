Instance: ovariantissue1-1
InstanceOf: EEVRISReproductiveTissue
Usage: #example
Description: "Package 1 of 2 - cryopreserved, in storage"
* identifier.value = "OVT123-1"
* extension[cryopreservationDate].valueDateTime = "2025-01-15"
* productCode = $biological-material-type#ovarian-tissue "Munasarja kude"
* productStatus = #available
* biologicalSourceEvent.value = "OVT123"
* parent = Reference(BiologicallyDerivedProduct/ovariantissue1)
* division = "1"
* collection.source = Reference(Patient/patientFemale)
* property[frozenFragmentCount].valueInteger = 4
* property[preservationState].valueCodeableConcept = $vris-preservation-state#cryopreserved "Külmutatud"