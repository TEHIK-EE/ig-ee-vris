Profile: EEVRISProcedure
Parent: Procedure
Id: ee-vris-procedure
Title: "Procedure: EE VRIS Procedure"
Description: "Procedure that is related to different actions related to biologic material. E.g freezing, destroying, donating, dispensing... (ee Profiil erinevate protseduuride kirjeldamiseks. Nt. Külmutamine, annetamine...) "
* identifier 0..*
* instantiatesCanonical 0..*
* instantiatesUri 0..*
* basedOn 0..*
* partOf 0..*
* status 1..1   // required: preparation|in-progress|not-done|on-hold|stopped|completed|entered-in-error|unknown
* status ^short = "(ee kui embryot ei siirdata, siis panna |not-done| ja statusReasoni alla põhjus)"
* statusReason 0..1
* statusReason ^short = "(ee STAATUSE Põhjuste LOEND?)"
* category 0..*
* category ^short = "(ee Kategooria määrab ära kas tegu on külmutamise, hävitamise, annetamise või väljastamisega. LOEND VAJA!)"
* code 0..1
* subject 1..1
* subject ^short = "(ee Siia tuleb viide KELLELE protseduur tehti.)"
* focus 0..1
* encounter 0..1
* occurrence[x] 0..1  
* occurrence[x] ^short = "Kuupäev"
* recorded 0..1
* recorder 0..1
* reported[x] 0..1   // reportedBoolean | reportedReference
* performer 0..*
* performer.function 0..1
* performer.actor 1..1   
* performer.onBehalfOf 0..1
* performer.period 0..1

* location 0..0
* reason 0..*
* reason ^short = "(ee Näiteks: Hävitamise põhjus, mitte-siirdamise põhjus jne. LOEND(id?))"
* bodySite 0..0
* outcome 0..1
* outcome ^short = "(ee Inseminatsiooni/jne jne... tulemus. Nb! LOEND)"
* report 0..0
* complication 0..*
* complication ^short = "(ee Tüsistused. NB! LOEND)"   // CodeableReference(Condition); R5 uus tüüp
* followUp 0..*
* note 0..*
* note ^short = "(ee lisainfo)"
* focalDevice 0..0
* used 0..*
* used ^short = "(ee Siia referents biolooogilisele materjalile sperma/embrüo/munarakk, mille ümber protseduur toimub)"
* supportingInfo 0..*
* supportingInfo ^short = "(ee siia saab panna ükskõik mis referentsi kui vaja! Nt SupplyDelivery?)"