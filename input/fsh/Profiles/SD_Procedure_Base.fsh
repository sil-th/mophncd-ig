Profile: MophPcProcedureBase
Parent: Procedure
Id: mophncd-procedure-base
Title: "MoPH-NCD Procedure"
Description: "การทำหัตถการหรือการรักษา"
* ^url = $SD_Procedure_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code ^short = "รหัสการให้บริการ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1 and
    icd9cm 0..1
* code.coding[snomed] ^short = "รหัสหัตถการมาตรฐานจาก SNOMED CT"
* code.coding[snomed].system = $SCT (exactly)
* code.coding[icd9cm] ^short = "รหัสหัตถการมาตรฐานจาก ICD-9CM"
* code.coding[icd9cm].system = $ICD9CM (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* performed[x] MS
* performed[x] only dateTime or Period or string
* performer MS
  * actor only Reference($SD_Practitioner_Base)
  * onBehalfOf MS
* bodySite ^short = "ส่วนของร่างกายที่ทำหัตถการ"
* complication ^short = "ภาวะแทรกซ้อน"