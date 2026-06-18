Profile: EEVRISConditionCauseOfDeath
Parent: Condition
Id: ee-vris-cause-of-death
Title: "Condition: EE VRIS Cause of Death"
Description: "Profile for capturing cause and time of death. (ee Surma põhjus)"
* code from $RHK-10 (preferred)
* code ^short = "Surma põhjus RHK-10 järgi"
* subject only Reference(EEVRISDonor or EEVRISRecipient or EEVRISDonorAnonymous)
* clinicalStatus 1..1
* clinicalStatus = $condition-clinical#resolved (exactly)
* onset[x] only dateTime
* onset[x] ^short = "Surma kuupäev"