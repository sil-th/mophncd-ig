Profile: MophPcPatientBase
Parent: Patient
Id: mophncd-patient-base
Title: "MoPH-NCD Patient"
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* ^url = $SD_Patient_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $SD_Patient_EX_Nationality named nationality 0..* MS and
  $EX_TH_PatientRace named race 0..* and
  $SD_Patient_EX_Religion named religion 0..1
* extension[nationality] ^short = "สัญชาติของผู้ป่วย"
* extension[race] ^short = "เชื้อชาติของผู้ป่วย"
* extension[religion] ^short = "ความเชื่อทางศาสนาของผู้ป่วย"
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    cid 0..1 MS and
    hn 0..1 MS and
    passportNo 0..* MS
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
* identifier[cid]
  * type = $CS_TH_IdentifierType#cid
  * system 1..
  * system = $ID_ThaiCid (exactly)
  * value 1..
  * value obeys CID-length
  * value ^example.label = "เลขประจำตัวประชาชน"
  * value ^example.valueString = "1234567890123"
* identifier[hn] ^short = "เลขประจำตัวผู้ป่วย (HN)"
* identifier[hn]
  * type = $CS_TH_IdentifierType#localHn
  * system 1..
  * system obeys HN-uri
  * system ^example.label = "HN namespace"
  * system ^example.valueUri = $ID_LO_HN
  * value 1..
  * value ^example.label = "เลขประจำตัวผู้ป่วย (HN)"
  * value ^example.valueString = "123456"
* identifier[passportNo] ^short = "เลขที่ passport กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
* identifier[passportNo]
  * type = $CS_HL7_IdentifierType#PPN
  * system 1..
  * system obeys Passport-uri
  * system ^comment = "กำหนดระบบข้อมูลตามรูปแบบ http://hl7.org/fhir/sid/passport-[XXX] โดย [XXX] คือ รหัสประเทศสามตัวอักษร (alpha-3) ตามมาตรฐาน ISO 3166"
  * system ^example.label = "Thai passport namespace"
  * system ^example.valueUri = $ID_ThaiPassport
  * value 1..
  * value ^example.label = "Thai passport number"
  * value ^example.valueString = "AA123456"
* name 1..* MS
* name ^short = "ชื่อ-นามกสุล"
* name ^slicing.discriminator[0].type = #value
* name ^slicing.discriminator[=].path = "extension('http://hl7.org/fhir/StructureDefinition/language').value"
* name ^slicing.rules = #open
* name contains
    thai 0..* MS and
    english 0..* MS
* name[thai] ^short = "ชื่อ-นามสกุล ภาษาไทย"
  * extension contains $EX_HL7_Language named language 1..1 MS
  * extension[language].valueCode = #th (exactly)
  * family MS
  * family ^short = "นามสกุล ภาษาไทย"
  * given MS
  * given ^short = "ชื่อ ภาษาไทย"
  * prefix MS
  * prefix ^short = "คำนำหน้า ภาษาไทย"
* name[english] ^short = "ชื่อ-นามสกุล ภาษาอังกฤษ (ถ้ามี)"
  * extension contains $EX_HL7_Language named language 1..1
  * extension[language].valueCode = #en (exactly)
  * family MS
  * family ^short = "นามสกุล ภาษาอังกฤษ"
  * given MS
  * given ^short = "ชื่อ ภาษาอังกฤษ"
  * prefix MS
  * prefix ^short = "คำนำหน้า ภาษาอังกฤษ"
* telecom MS
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[=].path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 0..3 MS and
    email 0..* MS
* telecom[phone] ^short = "เบอร์โทรศัพท์ ไม่ต้องใส่เครื่องหมายขีด (-)"
  * system = #phone (exactly)
* telecom[email] ^short = "E-mail สำหรับติดต่อ"
  * system = #email (exactly)
* gender 1.. MS
* gender ^short = "เพศ"
* birthDate 1.. MS
* birthDate ^short = "วันเกิด"
* birthDate ^comment = "วันเดือนปีเกิด (ระบุในรูปแบบ YYYY-MM-DD) หากไม่ทราบวัน เดือนที่เกิด แต่ทราบ ค.ศ เกิด ให้ใส่แต่ค.ศ."
* address MS
  * text MS
  * line MS
  * city MS
  * district MS
  * state MS
  * postalCode MS
  * country MS 
* maritalStatus ^short = "สถานภาพสมรส"
* maritalStatus.coding ^slicing.discriminator[0].type = #value
* maritalStatus.coding ^slicing.discriminator[=].path = "system"
* maritalStatus.coding ^slicing.rules = #open
* maritalStatus.coding contains
    thcc 0..1 and
    hl7 0..1
* maritalStatus.coding[thcc] from $VS_THCC_Marital (extensible)
* maritalStatus.coding[thcc].system = $CS_THCC_Marital (exactly)
* maritalStatus.coding[hl7] from $VS_HL7_MaritalStatus (extensible)
* maritalStatus.coding[hl7].system = $CS_HL7_MaritalStatus (exactly)
* photo ^short = "รูปประจำตัว"
* contact ^short = "ข้อมูลติดต่อญาติ"
* communication ^short = "ภาษาที่สื่อสารได้"