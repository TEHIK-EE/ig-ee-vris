Profile: EEVRISSupplyDelivery
Parent: SupplyDelivery
Id: ee-vris-supply-delivery
Title: "SupplyDelivery: EE VRIS Biological material movement"
Description: "Use this profile for describing when the biological material (sperm, oocyte, embryo) is transferred from one place to another. (ee Eestis annetatud bioloogiline materjali (sperma, munarakud, embrüo) liikumine TTO-sse/sealt välja"
* extension contains 
   ExtensionEEVRISDestinationCountry named destinationCountry 0..1
* extension[destinationCountry] ^short = "(ee KUI bioloogiline materjal saadetakse VÄLISRIIKI siis selle laienduse kaudu tuleb riigi kood.)"
* identifier 0..*
* identifier ^short = "(ee Liikumise identifikaator. Selle järgi saab jälgida materjali. Varasemad materjali liikumised tulevad selle kaudu.)"
* basedOn 0..0
* partOf 0..0
* status 1..1
* status ^short = "(ee Ühes üleandmises võib olla vastuvõetud ja enne vastuvõtmisotsust tagasi võetud pakendeid st ei ole AINULT ühe pakendi kohta. |in-progress| = väljasaatmine on registreeritud, otsust pole tehtud; end puudub!; |completed| = vastuvõttev TTO on teinud otsuse, sõltumata sellest, mitu pakendit vastu võeti; end on otsuse aeg.; |abandoned| = saatev TTO võttis saadetise tagasi enne vastuvõtva TTO otsust; end on tagasivõtmise otsuse aeg."
* patient 0..0
* patient ^short = "(ee Liigub ainult materjal ja materjali küljes on viide KELLELE)"
* type 1..1
* type = #biologicallyderivedproduct
* type ^short = "Always biologicallyderivedproduct"
* suppliedItem 1..*
* suppliedItem ^short = "(ee MIDA liigutatakse. Bioloogiline materjal. Iga pakend on omaette item)"
* suppliedItem.quantity 0..0
//* suppliedItem.quantity ^short = "(ee Kogus, pakendite arv, mida liigutatakse.)"
* suppliedItem.item[x] 1..1
* suppliedItem.itemReference only Reference(EEVRISEmbryo or EEVRISSperm or EEVRISOocyte or EEVRISReproductiveTissue)
* occurrencePeriod.start 1..1
* occurrencePeriod.start ^short = "(ee Väljasaatmise aeg on kohustuslik üleandmise algatamisel.)"
* occurrencePeriod.end ^short = "(ee Üleandmise lõpetamise aeg, mis täidetakse vastuvõtva TTO otsuse või saatva TTO tagasivõtmise registreerimisel.)"
//* occurrence ^short = "(ee Üle andmise/vastu võtmise kuupäev. AEG, millal sündmus aset leiab. Seotud Staatusega)"
* supplier 1..1
* supplier only Reference(Organization)
* supplier ^short = "(ee TTO, kes üleandmise teostab. Viide SPD Organizationile äriregistri koodi kaudu.)"
* supplier.identifier 1..1
* supplier.identifier.system 1..1
* supplier.identifier.system = "https://fhir.ee/sid/org/est/br" (exactly)
* supplier.identifier.value 1..1
* supplier.identifier.value ^short = "(ee Äriregistri kood.)"
* supplier.display 0..1
//* supplier.display ^short = "(ee TEKSTIna riigikood VÕI referents SDP Organizationile????)"
//* supplier.reference ^short = "(ee VÕI referents SPD Organizationile????)"
* destination 0..1
* destination ^short = "(ee Supplier-receiver katab saatja-vastuvõtja ära, seda elementi ei kasuta. KUI on vaja konkreetset asukohta Location kasutada, siis võib selle siia panna.)"
//* destination ^short = "(ee SIHTKOHT. MIS asukoht vastu võtab)"
* receiver 1..1
* receiver ^short = "(ee KES või MIS organisatsioon vastu võtab. Kas kohustuslik on Organization või Location, mis vastu võtab?)"
* receiver only Reference(Organization)
* receiver.identifier 0..1
* receiver.identifier.system 1..1
* receiver.identifier.value 1..1
* receiver.display 0..1
* receiver.display ^short = "(ee KUI viide puudub, tekstina. Näiteks välismaise vastuvõtja riik tekstina.)"