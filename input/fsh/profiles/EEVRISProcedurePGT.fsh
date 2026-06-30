Profile: EEVRISProcedurePGT
Parent: EEVRISProcedure
Id: ee-vris-procedure-pgt
Title: "Procedure: EE VRIS Preimplantation Genetic Testing"
Description: "Procedure for preimplantation genetic testing (PGT) of embryos. (ee Embrüodiagnostika protseduur enne siirdamist.)"
* ^status = #draft

* category 1..1
* category ^short = "(ee Kategooria: embrüodiagnostika)"

* code 1..1
//* code from $vris-pgt-type (required)
* code ^short = "(ee Embrüodiagnostika tüüp PGT-A, PGT-M, PGT-SR vms. LOEND vajalik!)"

* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)

* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Embrüodiagnostika kuupäev)"

* performer 1..*
* performer.actor 1..1

* outcome 0..1
* outcome ^short = "(ee Embrüodiagnostika tulemus üldine)"

* used 1..*
* used only CodeableReference(EEVRISEmbryo)
* used ^short = "(ee Viide testitud embrüo(de)le)"

* note 0..*