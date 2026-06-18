Profile: EEVRISConditionCauseOfDeath
Parent: Condition
* code from $RHK-10 (preferred)
* code ^short = "Surma põhjus RHK-10 järgi"
* subject only Reference(EEVRISDonor or EEVRISRecipient or EEVRISDonorAnonymous)
* clinicalStatus 1..1
* clinicalStatus = $condition-clinical#resolved (exactly)
* onset[x] only dateTime
* onset[x] ^short = "Surma kuupäev"