Profile: MophPcConditionBase
Parent: Condition
Id: mophncd-condition-base
Title: "MoPH-NCD Condition"
Description: "ข้อมูลวินิจฉัย/ภาวะโรค"
* ^url = $SD_Condition_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* clinicalStatus ^short = "สถานะของโรคหรือสภาวะ"
* code ^short = "รหัสวินิจฉัยของโรคหรือสภาวะ"
* code.text 1.. MS
* subject ^short = "การอ้างอิงไปยังผู้ป่วย"
* subject only Reference($SD_Patient_Base)
* encounter ^short = "การอ้างอิงไปยังการรับบริการ"
* encounter only Reference($SD_Encounter_Base)
* onset[x] ^short = "วันเวลาหรืออายุที่เกิดโรค"
* recordedDate ^short = "วันที่บันทึก"