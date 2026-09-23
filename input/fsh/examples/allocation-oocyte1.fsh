Instance: allocation-oocyte1-1
InstanceOf: EEVRISProcedureAllocation
Usage: #example
Description: "Allocation of oocyte to IVF cycle"
* status = #completed
* category = $vris-procedure-category#allocation
* basedOn = Reference(CarePlan/carePlanIvfCycle2025)
* subject = Reference(Patient/patientFemale)
* occurrenceDateTime = "2025-03-25T14:00:00+02:00"
* performer[0].actor = Reference(PractitionerRole/practitionerrole-doctor)
* used = Reference(BiologicallyDerivedProduct/oocyte1-1)