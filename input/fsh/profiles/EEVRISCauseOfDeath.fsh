Profile: EEVRISConditionCauseOfDeath
Parent: Condition
Id: ee-vris-cause-of-death
Title: "Condition: EE VRIS Cause of Death"
Description: "Profile for capturing cause and time of death. (ee Surma põhjus)"
* code from $RHK-10 (preferred)
* code ^short = "Surma põhjus RHK-10 järgi"
* subject only Reference(EEVRISDonor or EEVRISRecipient or $mpi-patient or EEVRISDonorAnonymous)
* clinicalStatus 1..1
* clinicalStatus = $condition-clinical#resolved (exactly)
* onset[x] only dateTime
* onset[x] ^short = "Surma kuupäev"
* participant ^short = "(ee Kes pani surma kirja? Kas on vaja?)"
* verificationStatus ^short = "(ee KAS seda on VAJA?)"
* identifier ^short = "(ee KAS seda on VAJA?)"
* stage 0..0
* evidence 0..0
* note 0..0
* abatement[x] 0..0
* encounter 0..0
* bodySite 0..0
* severity 0..0
* category 0..0