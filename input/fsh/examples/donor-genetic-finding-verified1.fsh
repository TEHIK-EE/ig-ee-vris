Instance: donor-genetic-finding-verified1
InstanceOf: Condition
Usage: #example
Description: "Example of confirmed condition of donor's genetic disorder"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-donor-genetic-finding"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
//* category[0] = $condition-category#encounter-diagnosis
* category = $vris-donor-genetic-finding-type#autosomal-recessive-carrier "Autosoom-retsessiivse geenivariandi kandlus"
* code.text = "CFTR geeni c.1521_1523delCTT (p.Phe508del) variant — tsüstilise fibroosi kandlus"
* subject = Reference(Patient/patientFemale) 
//* recordedDate = "2025-06-01"
* note.text = "Doonori lapsel diagnoositi tsüstiline fibroos. Doonori DNA-test kinnitas CFTR geeni heterosügootset kandlust."