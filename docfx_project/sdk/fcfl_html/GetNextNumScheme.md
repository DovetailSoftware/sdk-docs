_GetNextNumScheme_
------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function GetNextNumScheme(ByVal NumSchemeName As String) As String

**Description**

This method is returns the next ID in the specified numbering scheme.

#### Parameters
**Parameter Name**                **Required?**             **Description**

NumSchemeName             Yes                         The name of the numbering scheme

**Returns**

A string that is the the next ID in the specified numbering scheme.

**Error Codes**

**Value**                **Meaning**

11016                                      Numbering Scheme Name must not be empty

11015                                      Invalid Numbering Scheme

**Example**

The following example sets the next ID number for a new case.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var boCase = FCSession.CreateGeneric();

boCase.DBObjectName = "case";

boCase.AddNew();

boCase("id_number") = FCSession.GetNextNumScheme("Case ID");