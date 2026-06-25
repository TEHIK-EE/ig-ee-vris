Profile: EEVRISConditionBirthDefect
Parent: Condition
Id: ee-vris-condition-birth-defect
Title: "Condition: EE VRIS Birth Defect"
Description: "Congenital birth defect of newborn child. (ee Lapse väärarend.)"
* ^status = #draft

* clinicalStatus 1..1
* clinicalStatus = $condition-clinical#active
* code 1..1
* code from $RHK-10 (preferred)
* code ^short = "(ee Väärarendi kood RHK-10 või vabatekst)"
* code.text 0..1
* code.text ^short = "(ee Väärarendi vabatekstiline kirjeldus, kui RHK ei sobi)"
* subject 1..1
* subject only Reference(EEVRISPatientChild)
* onset[x] only dateTime

* bodySite 0..0
* encounter 0..0
* abatement[x] 0..0
* stage 0..0
* evidence 0..0