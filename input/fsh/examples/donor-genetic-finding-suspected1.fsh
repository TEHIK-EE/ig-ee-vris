Instance: donor-genetic-finding-suspected1
InstanceOf: Condition
Usage: #example
* meta.profile = "https://fhir.ee/StructureDefinition/ee-vris-donor-genetic-finding"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional "Provisional"
* category[0] = $condition-category#encounter-diagnosis
* category[+] = $vris-donor-genetic-finding-type#hereditary-disease-suspicion "Päriliku haiguse kahtlus"
* code.text = "Kahtlustatav spinaalne lihasatroofia (SMA) — doonori lapsel ilmnenud sümptomid"
* subject = Reference(Patient/patientExampleMPI)
* recordedDate = "2025-07-15"
* note.text = "Doonori lapsel tekkinud lihasnõrkus, SMA kahtlus. DNA-test veel pooleli."