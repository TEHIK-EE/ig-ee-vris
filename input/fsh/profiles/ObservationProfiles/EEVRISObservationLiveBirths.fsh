Profile: EEVRISObservationLiveBirths
Parent: Observation
Id: ee-vris-observation-live-births
Title: "Observation: EE VRIS Live Births"
Description: "Live births and stillbirths BEFORE current treatment. (ee Elusalt sündinud laste arv ENNE käesolevat viljatusravi tsüklit.)"
* meta.source ^short = "(ee Siia tuleb viide, kui andmed on pärit Rahvastikuregistrist)"
* basedOn 0..0
* partOf 0..0
* status 1..1
* status ^short = "Observation status"
* category ^short = "Observation category"
* code 1..1
* code ^short = "(ee Sündinud laste arv.)"
* code = $vris-observation-code#248991006 //|Number of live deliveries (observable entity)| //"Obstetric history"
* subject 1..1
* subject only Reference(EEVRISRecipient or $mpi-patient)
* subject ^short = "(ee Patient retsipient või partner (kelle laste arv))"
* focus 0..0
* encounter 0..0
* effective[x] 0..1
* effective[x] ^short = "(ee Andmete kogumise kuupäev. Viljatusravi alguses tavaliselt.)"
* issued 0..1
* issued ^short = "(ee Süsteemi sisestamise kuupäev/kellaaeg)"
* performer 0..*
* performer ^short = "(ee Kes salvestas. NB! Viide SPD-le!)"
* value[x] 1..1
* value[x] only integer
* value[x] ^short = "Elusalt sündinud laste arv (eeltäidetud RR päringust)"
//* valueQuantity.value 1..1
* interpretation 0..0
* note 0..*
* note ^short = "(ee Lisainfo / märkused)"
* bodySite 0..0
* bodyStructure 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..*
* derivedFrom ^short = "Viide allikale (nt RR päring)"

