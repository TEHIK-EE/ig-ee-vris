Instance: allocation-sperm1-3
InstanceOf: EEVRISProcedureAllocation
Usage: #example
Description: "Cancelled allocation - material released back to available"
* status = #stopped
* statusReason.text = "Tsükkel katkestatud, materjal vabastatud"
* code = $sct#237011000181100 "Bioloogilise materjali broneerimine"
* basedOn = Reference(CarePlan/carePlanIvfCycle2025)
* subject = Reference(Patient/patientFemale)
* occurrenceDateTime = "2025-03-25T14:00:00+02:00"
* performer[0].actor = Reference(PractitionerRole/practitionerrole-doctor)
* used = Reference(BiologicallyDerivedProduct/sperm1-3)
* note.text = "Broneeritud retsipiendile, ravitsüklit veel ei ole"