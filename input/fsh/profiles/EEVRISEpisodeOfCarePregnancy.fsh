Profile: EEVRISEpisodeOfCarePregnancy
Parent: EEVRISEpisodeOfCare
Id: ee-vris-episode-of-care-pregnancy
Title: "EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy"
Description: "EpisodeOfCare profile for the WHOLE pregnancy, starting before conception and ending with childbirth. (ee Raseduse kogu elukaar. NB! Profiil peab järgima Encounter-EoC tuleviku struktuuri!)."
* ^status = #draft
* identifier 1..*
* identifier.id 0..0
* identifier.extension 0..0
* identifier.use 0..0
* identifier.type 0..0
* identifier.period 0..0
* identifier.assigner 0..0
* status 1..1
* statusHistory 0..0
* type 0..0
* reason 0..*
* reason ^short = "(ee KAS siia viide observationile?)"
* reason.id 0..0
* reason.extension 0..0
* reason.use 0..1
* reason.value 0..*
* diagnosis 0..*
* diagnosis.id 0..0
* diagnosis.extension 0..0
* diagnosis.modifierExtension 0..0
* diagnosis.condition 1..*
* diagnosis.condition only CodeableReference(EEVRISConditionPregnancy)
* diagnosis.use 0..1
* patient 1..1
* patient only Reference(EEVRISRecipient or $mpi-patient)
* managingOrganization 1..1
* period 1..1
* period.id 0..0
* period.extension 0..0
* period.start 1..1
* referralRequest 0..0
* careManager 0..0
* careTeam 0..0
* account 0..0