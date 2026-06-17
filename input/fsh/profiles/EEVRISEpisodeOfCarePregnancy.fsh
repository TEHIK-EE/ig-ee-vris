Profile: EEVRISEpisodeOfCarePregnancy
Parent: EEBaseEpisodeOfCare
Id: ee-vris-episode-of-care-pregnancy
Title: "EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy"
Description: "EpisodeOfCare profile for the WHOLE pregnancy, starting before conception and ending with childbirth. (ee Raseduse kogu elukaar)."
* ^status = #draft
* identifier 1..*
* identifier.id 0..0
* identifier.extension 0..0
* identifier.use 0..0
* identifier.type 0..0
* identifier.period 0..0
* identifier.assigner 0..0
* status 1..1
* statusHistory 0..*
* statusHistory.id 0..0
* statusHistory.extension 0..0
* statusHistory.modifierExtension 0..0
* statusHistory.status 1..1
* statusHistory.period 1..1
* type 1..*
* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* type.coding.version 0..0
* type.coding.userSelected 0..0
* type.text 0..0
* reason 0..*
* reason.id 0..0
* reason.extension 0..0
* reason.use 0..1
* reason.value 0..*
* diagnosis 0..*
* diagnosis.id 0..0
* diagnosis.extension 0..0
* diagnosis.modifierExtension 0..0
* diagnosis.condition 1..*
* diagnosis.use 0..1
* patient 1..1
* managingOrganization 1..1
* period 1..1
* period.id 0..0
* period.extension 0..0
* period.start 1..1
* referralRequest 0..0
* careManager 0..1
* careTeam 0..*
* account 0..0