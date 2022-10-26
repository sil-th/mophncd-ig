Profile: MophNcdAllergyIntoleranceBase
Parent: AllergyIntolerance
Id: mophncd-allergyintolerance-base
Title: "MoPH-NCD AllergyIntolerance"
Description: "การแพ้ยาและสารอื่น ๆ"
* ^url = $SD_AllergyIntolerance_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_AllergyIntoleranceCertainy named certainy 0..1 MS
* extension[certainy] ^short = "ประเภทการวินิจฉัยการแพ้ยา 5 ประเภท"
* clinicalStatus MS
* verificationStatus MS
* code MS
* code ^short = "ระบุชนิดยาที่แพ้ หรือสิ่งที่แพ้"
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    tmt 0..1 MS and
    24drug 0..1 MS and
    noAllergies 0..1 MS
* code.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* code.coding[tmt] from $VS_TMT (extensible)
* code.coding[tmt].system 1..
* code.coding[tmt].system = $CS_TMT (exactly)
* code.coding[tmt].code 1..
* code.coding[24drug] ^short = "รหัสยามาตรฐาน 24 หลัก"
* code.coding[24drug] from $VS_24Drug (extensible)
* code.coding[24drug].system 1..
* code.coding[24drug].system = $CS_24Drug (exactly)
* code.coding[24drug].code 1..
* code.coding[noAllergies] ^short = "ใช้ในกรณีไม่มีสิ่งที่แพ้ หรือไม่ทราบประวัติแพ้"
* code.coding[noAllergies] from $VS_IPS_AbsentUnknownAllergies (extensible)
* code.coding[noAllergies].system 1..
* code.coding[noAllergies].system = $CS_IPS_AbsentUnknownAllergies (exactly)
* code.coding[noAllergies].code 1..
* patient only Reference($SD_Patient_Base)
* patient MS
* onset[x] ^short = "วันเวลาหรืออายุที่เกิดการแพ้"
* recordedDate MS
* recordedDate ^short = "วันเวลาที่บันทึก"
* recorder only Reference($SD_Practitioner_Base)
* recorder ^short = "ผู้บันทึกการแพ้"
* asserter ^short = "ผู้แจ้งการแพ้"
* lastOccurrence ^short = "การมีอาการครั้งล่าสุด"
* reaction
  * manifestation ^short = "ลักษณะอาการแพ้"
  * severity ^short = "ความรุนแรง"