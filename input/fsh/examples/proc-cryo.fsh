Instance: procedure-cryoSperm1
InstanceOf: EEVRISProcedureCryopreservation
Usage: #example
Description: "Cryopreservation of two sperm packages"
* status = #completed
* subject = Reference(Patient/patientDonorMale)
* code = $sct#870572003 "Cryopreservation of spermatozoa"
* encounter = Reference(Encounter/eoc-donationSperm2025)
* occurrenceDateTime = "2025-02-20T11:00:00+02:00"
* performer.actor = Reference(PractitionerRole/practitionerrole-doctor)
* used[0].reference = Reference(BiologicallyDerivedProduct/sperm1-2)
* used[+].reference = Reference(BiologicallyDerivedProduct/sperm1-3)