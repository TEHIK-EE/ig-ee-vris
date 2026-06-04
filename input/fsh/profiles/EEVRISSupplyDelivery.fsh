Profile: EEVRISSupplyDelivery
Parent: SupplyDelivery
Id: ee-vris-supply-delivery
Title: "SupplyDelivery: EE VRIS Biological material movement"
Description: "Use this profile for describing when the biological material (sperm, oocyte, embryo) is transferred from one place to another. (ee Eestis annetatud bioloogiline materjali (sperma, munarakud, embrüo) liikumine TTO-sse/sealt välja"
* identifier 0..*
* identifier ^short = "(ee Liikumise identifikaator. Selle järgi saab jälgida materjali. Varasemad materjali liikumised tulevad selle kaudu.)"
* basedOn 0..0
* partOf 0..0
* status 0..1
* status ^short = "(ee Võtan vastu checkbox? |in-progress| = pole veel vastu võetud; |completed| = vastu võetud.)"
* patient 0..1
* patient ^short = "(ee KAS seda on vaja? Liigub ainult materjal ja materjali küljes on viide KELLELE)"
* type 0..1
* type = #biologicallyderivedproduct
* type ^short = "Always biologicallyderivedproduct"
* suppliedItem 0..*
* suppliedItem ^short = "(ee MIDA liigutatakse)"
* suppliedItem.quantity 0..1
* suppliedItem.quantity ^short = "Kogus, dooside arv, mida liigutatakse"
* suppliedItem.item[x] 1..1
* suppliedItem.itemReference only Reference(EEVRISEmbryo or EEVRISSperm or EEVRISOocyte)
* occurrence[x] 1..1
* occurrence[x] ^short = "(ee Üle andmise/vastu võtmise kuupäev. Aeg, millal sündmus aset leiab)"
* supplier 0..1
* supplier ^short = "(ee PÄRITOLU. KES saadab)"
* destination 1..1
* destination ^short = "(ee SIHTKOHT. MIS asukoht vastu võtab)"
* receiver 0..*
* receiver ^short = "(ee KES või MIS organisatsioon vastu võtab. Kas kohustuslik on Organization või Location, mis vastu võtab?)"