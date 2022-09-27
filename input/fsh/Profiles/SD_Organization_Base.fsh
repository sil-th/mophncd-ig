Profile: MophPcOrganizationBase
Parent: Organization
Id: mophncd-organization-base
Title: "MoPH-NCD Organization"
Description: "ข้อมูลหน่วยงานต่าง ๆ"
* ^url = $SD_Organization_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains hcode 0..1
* identifier[hcode] ^short = "รหัสสถานพยาบาล 5 หลัก หรือ 9 หลัก"
* identifier[hcode].type = $CS_TH_IdentifierType#hcode
* identifier[hcode].system 1..
* identifier[hcode].system = $ID_Hcode (exactly)
* identifier[hcode].value 1..
* identifier[hcode].value obeys hcode-length
* type MS
* name MS
* name ^short = "ชื่อหน่วยงาน"
* telecom MS
* address MS