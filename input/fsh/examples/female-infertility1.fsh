Instance: female-fertility-indication-example1
InstanceOf: EEVRISConditionFertilityIndicationFemale
Usage: #example
Description: "Example of a female fertility treatment indication: anovulation disorder (ICD-10: N97.0)."
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-female"
//* identifier[0].system = "https://fhir.ee/sid/vris/fertility-indication"
//* identifier[0].value = "FI-F-2024-00123"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = $RHK-10-CS#N97.0 "Anovulatsiooniga seotud naisinfertiiilsus"
* subject = Reference(patientDonorFemale)
* onsetDateTime = "2023-06-15"
* recordedDate = "2023-06-20"
//* participant[0].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT
* participant[0].actor = Reference(PractitionerRole/practitionerrole-doctor)
* note[0].text = "Patsiendil diagnoositud ovulatsioonihäire. Hormoonravi alustatud juunis 2023."