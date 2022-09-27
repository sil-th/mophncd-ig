Profile: MophPcDiagnosticReportBase
Parent: DiagnosticReport
Id: mophncd-diagnosticreport-base
Title: "MoPH-NCD DiagnosticReport"
Description: "การรายงานผลการตรวจ"
* ^url = $SD_DiagnosticReport_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code.text 1..
* code ^short = "รหัสชนิดการตรวจ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    tmlt 0..1 MS and
    loinc 0..1 MS and
    snomed 0..1 and
    icd10tm 0..1 
* code.coding[tmlt] ^short = "รหัสมาตรฐาน TMLT"
* code.coding[tmlt] from $VS_TMLT (extensible)
* code.coding[tmlt].system 1..
* code.coding[tmlt].system = $CS_TMLT (exactly)
* code.coding[tmlt].code 1..
* code.coding[loinc] ^short = "รหัสมาตรฐาน LOINC"
* code.coding[loinc] from $VS_LNC (extensible)
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[snomed] ^short = "รหัสมาตรฐาน SNOMED CT"
* code.coding[snomed] from $VS_SNOMED_INT (extensible)
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* code.coding[icd10tm] ^short = "รหัสมาตรฐาน ICD10-TM (การตรวจทางห้องปฏิบัติการ)"
* code.coding[icd10tm] from $VS_TH_ICD10TM_Lab (extensible)
* code.coding[icd10tm].system 1..
* code.coding[icd10tm].system = $CS_TH_ICD10TM_Lab (exactly)
* code.coding[icd10tm].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* performer ^short = "เจ้าหน้าที่หรือหน่วยงานที่ทำการตรวจ"
* result MS