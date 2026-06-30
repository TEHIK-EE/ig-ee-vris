Profile: EEVRISProcedureCryopreservation
Parent: EEVRISProcedure
Id: ee-vris-procedure-cryopreservation
Title: "Procedure: EE VRIS Cryopreservation"
Description: "Profile for cryopreservation of biological material (sperm, oocyte, embryo). (ee Bioloogilise materjali külmutamise protseduur.)"
* status ^short = "(ee Protseduuri staatus)"
* category 1..1
* category = $vris-procedure-category#cryopreservation
* category ^short = "(ee Fix kood: krüosäilitamine. NB! LOEND puudu!)"
* code 1..1
* code from $vris-cryopreservation-code-VS (preferred)
* code ^short = "(ee Krüosäilitamise täpsem kood. NB! LOEND puudu!)"
* subject 1..1
* subject only Reference(EEVRISDonor or EEVRISRecipient or EEVRISDonorAnonymous)
* subject ^short = "(ee Kelle materjali külmutati.)"
* focus 0..1
* focus ^short = "(ee Kui materjal kuulub teisele isikule, siia tema viide)"
* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Külmutamise kuupäev ja kellaaeg, kohustuslik)"
* performer 1..*
* performer ^short = "(ee Embrüoloog või kliiniku spetsialist)"
* performer.actor 1..1
* reason 0..*
* reason from $vris-cryopreservation-reason-VS (preferred)
* reason ^short = "(ee Külmutamise põhjus, doonatsioon, iseendale säilitamine, mittesiirdamiseks vms (NB! LOEND puudu!))"
* outcome 0..1
* outcome from $vris-cryopreservation-outcome-VS (preferred)
* outcome ^short = "(ee Külmutamise tulemus, edukas / ebaõnnestunud / osaliselt edukas (NB! LOEND puudu!))"
* used 1..*
* used ^short = "(ee Viide külmutatud bioloogilisele materjalile: sperma / munarakk / embrüo)"
* used only CodeableReference(EEVRISSperm or EEVRISEmbryo or EEVRISOocyte)
* note 0..*
* note ^short = "(ee Lisainfo külmutamise kohta)"