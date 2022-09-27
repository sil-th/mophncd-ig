Profile: MophPcEncounterBase
Parent: Encounter
Id: mophncd-encounter-base
Title: "MoPH-NCD Encounter"
Description: "การรับบริการโดยทั่วไป"
* ^url = $SD_Encounter_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    vn 0..1 and
    an 0..1 
* identifier[vn] ^short = "เลขที่การรับบริการผู้ป่วยนอก (VN)"
* identifier[vn]
  * type = $CS_TH_IdentifierType#localVn
  * system 1..
  * system obeys VN-uri
  * system ^example.label = "VN namespace"
  * system ^example.valueUri = $ID_LO_VN
  * value 1..
* identifier[an] ^short = "เลขที่ผู้่ปวยใน (AN)"
* identifier[an]
  * type = $CS_TH_IdentifierType#localAn
  * system 1..
  * system obeys AN-uri
  * system ^example.label = "AN namespace"
  * system ^example.valueUri = $ID_LO_AN
  * value 1..
* status MS
* class MS
* subject MS
* subject only Reference($SD_Patient_Base or Group)
* participant.individual MS
* participant.individual only Reference($SD_Practitioner_Base)
* period MS
  * start 1.. MS
  * end MS
* length MS
* reasonCode MS
* diagnosis
  * use.coding ^slicing.discriminator.type = #value
  * use.coding ^slicing.discriminator.path = "system"
  * use.coding ^slicing.rules = #open
  * use.coding contains
      hl7 0..1
  * use.coding[hl7] from $VS_HL7_DiagRole (extensible)
  * use.coding[hl7].system = $CS_HL7_DiagRole
* location 1.. MS
  * location.identifier ^short = "คลินิก / วอร์ด ที่รับการรักษา"
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Base)