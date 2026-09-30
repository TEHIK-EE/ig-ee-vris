Instance: procedure-donationSperm1
InstanceOf: EEVRISProcedureDonation
Usage: #example
Description: "Sperm donation procedure"
* status = #completed
* subject = Reference(Patient/patientDonorMale)
* code = $sct#puudu "annetamine"
* encounter = Reference(Encounter/encounter-donationSperm2025)
* occurrenceDateTime = "2025-02-20T09:30:00+02:00"
* performer.actor = Reference(PractitionerRole/practitionerrole-doctor)
* used.reference = Reference(BiologicallyDerivedProduct/sperm1)