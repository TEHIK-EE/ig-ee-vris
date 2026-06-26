Profile: EEVRISConditionPregnancy
Parent: Condition
Id: ee-vris-condition-pregnancy
Title: "Condition: EE VRIS Condition Pregnancy"
Description: "Condition profile for pregnancy in Estonian VRIS fertility system. (ee Rasedus kui näidustus, diagnoos. NB! Tulevikus viidata Diagnoosi-teenusele!)"
* ^status = #draft
* identifier 0..*
* clinicalStatus 1..1
* verificationStatus 0..1
* category 0..*
* severity 0..0
* code 1..1
* code from $RHK-10 (preferred)
* bodySite 0..0
* subject 1..1
* subject only Reference(EEVRISRecipient or $mpi-patient)
* encounter 0..1
* encounter ^short = "(ee SIIA tuleks viide Encounter-EoC-teenusele!?)"
* onset[x] only dateTime
* abatement[x] 0..0
* recordedDate 0..1
* participant 0..*
* stage 0..0
* evidence 0..*
* evidence 0..0
* note 0..*