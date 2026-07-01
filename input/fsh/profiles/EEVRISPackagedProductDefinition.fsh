Profile: EEVRISPackagedProductDefinition
Parent: PackagedProductDefinition
Id: ee-vris-packaged-product-definition
Title: "PackagedProductDefinition: EE VRIS Package"
Description: "Profile for packaged doses of reproductive cells. (ee Suguraku pakendite profiil)"
* identifier 0..*
* name 0..1
* type 0..1
* packageFor 0..0
* status 0..1
* statusDate 0..1
* containedItemQuantity 0..0
* description 0..1
* legalStatusOfSupply 0..0
* marketingStatus 0..0
* copackagedIndicator 0..0
* manufacturer 0..*
* attachedDocument 0..*
* packaging 0..1
* packaging.id 0..1
* packaging.extension 0..*
* packaging.modifierExtension 0..0
* packaging.identifier 0..*
* packaging.type 0..1
* packaging.componentPart 0..0
* packaging.quantity 0..0
* packaging.material 0..0
* packaging.alternateMaterial 0..0
* packaging.shelfLifeStorage 0..0
* packaging.manufacturer 0..0
* packaging.property 0..0
* packaging.containedItem 0..*
* packaging.containedItem.id 0..1
* packaging.containedItem.extension 0..0
* packaging.containedItem.modifierExtension 0..0
* packaging.containedItem.item 1..1
* packaging.containedItem.item only CodeableReference(EEVRISSperm or EEVRISEmbryo or EEVRISOocyte)
* packaging.containedItem ^short = "(ee Kogus pakendis ja referents bioloogilisele materjalile)"
* packaging.containedItem.amount 1..1
* packaging.containedItem.amount ^short = "(ee See on pakend, milles on teatud arv doose. Väljendatud täisarvuna ilma ühikuteta. Siit saab edasi arvutada, mis võeti ja mis jäi?)"
* packaging.packaging 0..0
* characteristic 0..0