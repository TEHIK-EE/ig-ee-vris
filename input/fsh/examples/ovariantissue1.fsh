Instance: ovariantissue1
InstanceOf: EEVRISReproductiveTissue
Usage: #example
Description: "Ovarian tissue collected before oncological treatment"
* identifier.value = "OVT123"
* productCode = $biological-material-type#ovarian-tissue "Munasarja kude"
* productStatus = #available
* biologicalSourceEvent.value = "OVT123"
* collection.source = Reference(Patient/patientFemale)
* collection.collector = Reference(PractitionerRole/practitionerrole-doctor)
* collection.collectedDateTime = "2025-01-15"
* property[fragmentCount].valueInteger = 8
* property[frozenFragmentCount].valueInteger = 8
* property[Role].valueCodeableConcept = $vris-cell-origin-role#own-use "Enda tarbeks"
* property[collectionMethod].valueCodeableConcept = $vris-collection-method#biopsy "Biopsia"
* property[preservationReason].valueCodeableConcept = $vris-fertility-preservation-reason#oncological "Onkoloogiline ravi"
* property[pubertalStatus].valueCodeableConcept = $vris-pubertal-status#post-pubertal "Puberteedijärgne"