Instance: ovariantissue1
InstanceOf: EEVRISReproductiveTissue
Usage: #example
Description: "Ovarian tissue collected before oncological treatment"
* identifier.value = "OVT123"
* productCode = $sct#127482009 "Tissue specimen from ovary"
* productStatus = #available
* biologicalSourceEvent.value = "OVT123"
* collection.source = Reference(Patient/patientFemale)
* collection.collector = Reference(PractitionerRole/practitionerrole-doctor)
* collection.collectedDateTime = "2025-01-15"
* property[fragmentCount].valueInteger = 8
//* property[frozenFragmentCount].valueInteger = 8

* property[Role].valueCodeableConcept = $sct#237491000181102 "Bioloogilise materjali säilitaja"
* property[collectionMethod].valueCodeableConcept = $vris-collection-method#biopsy "Biopsia"
* property[preservationReason].valueCodeableConcept = $reasons#reason-oncological "Onkoloogiline põhjus"
* property[pubertalStatus].valueCodeableConcept = $sct#419138002 "Pre-pubertal"
* property[originCountry].valueCodeableConcept = $rtk#EE