Profile: EEVRISRelatedPerson
Parent: EEBaseRelatedPerson
Id: ee-vris-related-person
Title: "EE VRIS Related Person"
Description: "Related person profile for VRIS, including contact type, personal relationship and donor type."
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
* period 1..1
* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding.system"
* relationship ^slicing.rules = #open
* relationship contains
    donortype 0..1 

//* relationship[person] ^short = "Contact person type"
//* relationship[person] from $relationship-type-VS (required)

//* relationship[class] ^short = "Contact person's relationship to the patient"
//* relationship[class] from $relationship-relation-VS (required)

* relationship[donortype] ^short = "Donor type"
* relationship[donortype] ^definition = "Specifies the VRIS-specific donor or related person type, such as sperm donor, oocyte dono, embryo donor or partner."
* relationship[donortype] from $vris-donor-type-VS (required)