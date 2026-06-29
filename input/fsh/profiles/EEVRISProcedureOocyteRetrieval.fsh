Profile: EEVRISProcedureOocyteRetrieval
Parent: EEVRISProcedure
Id: ee-vris-procedure-oocyte-retrieval
Title: "Procedure: EE VRIS Oocyte Retrieval"
Description: "Profile for oocyte retrieval (ovarian puncture) procedure. (ee Munasarjade punktsioon munarakkude saamise protseduur.)"
* ^status = #draft

* category 1..1
* category ^short = "(ee Fix kood: munarakkude eemaldamine. NB! LOEND puudub veel)"

* code 1..1
* code = $sct#177037000 //|Oocyte recovery (procedure)|

* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Patsient, kelle munasarju punktsioneeriti)"

* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Punktsiooni kuupäev ja kellaaeg)"

* performer 1..*
* performer ^short = "(ee Arst, kes punktsiooni teostas)"
* performer.actor 1..1

* reason 0..*
* reason ^short = "(ee Punktsiooni põhjus, nt IVF tsükkel, fertility preservation)"

* outcome 0..1
* outcome ^short = "(ee Punktsiooni tulemus üldine, nt edukas/osaliselt edukas/ebaõnnestunud)"

* complication 0..*
* complication ^short = "(ee Tüsistused, nt OHSS, verejooks)"

* used 0..*
* used ^short = "(ee Viide saadud munarakkudele EEVRISOocyte)"
* used only CodeableReference(EEVRISOocyte)

* note 0..*
* note ^short = "(ee Lisainfo punktsiooni kohta)"