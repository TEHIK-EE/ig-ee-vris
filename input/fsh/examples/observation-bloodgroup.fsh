Instance: observation-bloodgroup
InstanceOf: EEVRISObservationBloodGroup
Description: "Example of bloodgroup"
Usage: #example
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-blood-group"
* status = #final
* category = $obsCategory#laboratory
* code = $loinc#34530-6 "ABO-veregrupp ja RhD antigeen (kinnitav uuring)"
* subject = Reference(Patient/patientDonorMale) "D-2024-001"
* effectiveDateTime = "2024-06-10"
* note.text = "Veregrupp määratud enne."
* component[abo].code = $loinc#57743-7 "ABO-veregrupp (kinnitav uuring)"
* component[abo].valueCodeableConcept = $sct#112149005 "B veregrupp"
* component[rh].code = $loinc#978-7 "RhD antigeen"
* component[rh].valueCodeableConcept = $sct#10828004 "Positive"