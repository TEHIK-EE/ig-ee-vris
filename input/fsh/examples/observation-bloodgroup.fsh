Instance: observation-bloodgroup
InstanceOf: EEVRISObservationBloodGroup
Description: "Example of bloodgroup"
Usage: #example
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-blood-group"
* status = #final
* category = $obsCategory#laboratory
* code = $loinc#34532-2 "Blood type panel"
* subject = Reference(Patient/patientDonorMale) "D-2024-001"
* effectiveDateTime = "2024-06-10"
* note.text = "Veregrupp määratud enne."
* component[abo].code = $loinc#883-9 "ABO group [Type] in Blood"
* component[abo].valueCodeableConcept = $sct#112149005 "B veregrupp"
* component[rh].code = $loinc#10331-7 "Rh [Type] in Blood"
* component[rh].valueCodeableConcept = $sct#10828004 "Positive"