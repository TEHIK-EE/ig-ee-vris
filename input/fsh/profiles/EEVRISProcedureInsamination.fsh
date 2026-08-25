Profile: EEVRISProcedureInsemination
Parent: EEVRISProcedure
Id: ee-vris-procedure-insemination
Title: "Procedure: EE VRIS Intrauterine Insemination (IUI)"
Description: "Profile for intrauterine insemination procedure sperm directly introduced into the uterine cavity. (ee Emakasisene inseminatsioon (IUI).)"
* ^status = #draft

* category 1..1
* category ^short = "(ee Kategooria nt 58533008 |Artificial insemination (procedure)|)"

* code 1..1
//* code.text = "TODO: SNOMED CT – otsi 'intrauterine insemination' / 'IUI'"
* code ^short = "(ee IUI nt: 265064001 |Intrauterine artificial insemination (procedure)| Vajab üle kontrollimist ja kinnitust!
)"

* subject 1..1
* subject only Reference(EEVRISRecipient)
* subject ^short = "(ee Retsipient, kellele inseminatsioon tehti)"

* status 1..1
* status ^short = "(ee Inseminatsiooni staatus)"

* statusReason 0..1
* statusReason ^short = "(ee Kui status = not-done, siia põhjus)"

* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Inseminatsiooni kuupäev ja kellaaeg)"

* performer 1..*
* performer ^short = "(ee Arst, kes inseminatsiooni teostas)"
* performer.actor 1..1

* reason 0..*
* reason ^short = "(ee Inseminatsiooni põhjus, nt viljatuse näidustus)"

* outcome 0..1
* outcome ^short = "(ee Inseminatsiooni tulemus üldine)"

* complication 0..*

* used 1..*
* used only CodeableReference(EEVRISSperm)
* used ^short = "(ee Viide kasutatud spermale, NB! ainult sperma, mitte munarakk/embrüo)"

* note 0..*