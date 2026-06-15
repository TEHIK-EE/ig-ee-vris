Profile: EEVRISRelatedPerson
Parent: $mpi-related-person
Id: ee-vris-related-person
Title: "RelatedPerson: EE VRIS RelatedPerson"
Description: "Related person profile for VRIS, including contact type, personal relationship and donor type. (ee Seotud isiku profiil näitab seost patsiendi või retsipiendiga. Doonori ja retsipiendi vahelise SUHTE kirjeldus.)"
* ^status = #draft
* active 1..1 
* relationship 1..*
* relationship ^short = "Relationship types, including contact type, personal relationship and donor type."
* name 0..1 MS
* name ^short = "Contact person name."
* address ..0
* photo ..0
* identifier ^short = "Contact person identifiers."
* communication ..0
* patient only Reference(EEVRISDonor or EEVRISRecipient)
* patient ^short = "(ee Olenevalt doonori tüübist saab seose luua eri aegadel.)"
* period 1..1
* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding.system"
* relationship ^slicing.rules = #open
* relationship contains
    donorClass 0..1 and
    donortype 0..1 

//* relationship[person] ^short = "Contact person type"
//* relationship[person] from $relationship-type-VS (required)

* relationship[donorClass] ^short = "Specifies the VRIS-specific donor or related person type, such as sperm donor, oocyte dono, embryo donor or partner. (ee Näiteks spermadoonor)."
//* relationship[class] from $relationship-relation-VS (required)

* relationship[donortype] ^short = "Donor type. (ee |Partnerannetaja|Anonüümne doonor||Mitteparnerist doonor| NB! LOENDIT vaja!)"
* relationship[donortype] ^definition = "Specifies the relationship between recipient and donor. (mitt-partnerannetaja, partnerannetaja jne)"
* relationship[donortype] from $vris-donor-type-VS (required)