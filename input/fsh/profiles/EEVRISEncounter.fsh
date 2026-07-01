Profile: EEVRISEncounter
Parent: Encounter
Id: ee-vris-encounter
Title: "Encounter: EE VRIS Encounter"
Description: "Simple encounter profile for VRIS fertility treatment visits. (ee Visiidi ehk KONTAKTI profiil viljatusravi kontekstis. NB! Tulevikus tuleb viidata Encounter-EoC teenusele!)"
* ^status = #draft

* identifier 0..*
* identifier ^short = "(ee Visiidi identifikaator)"

* status 1..1
* status ^short = "(ee planned / in-progress / on-hold / completed / cancelled / entered-in-error)"

* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous or EEVRISPatientChild)
* subject ^short = "(ee Patsient)"

* actualPeriod 0..1
* actualPeriod ^short = "(ee Visiidi tegelik periood)"

* participant 0..*
* participant ^short = "(ee Osalejad, nt arst SPD-st)"
* participant.actor 0..1

* serviceProvider 0..1
* serviceProvider only Reference(Organization)
* serviceProvider ^short = "(ee Teenusepakkuja, viide organisatsioonile)"

* location 0..*
* location ^short = "(ee Visiidi asukoht)"
* location.location 1..1
* episodeOfCare only Reference(EEVRISEpisodeOfCare)
* episodeOfCare ^short = "(ee EoC seob kogu ravi, kõik tsüklid jm kokku üheks juhtumiks.)"