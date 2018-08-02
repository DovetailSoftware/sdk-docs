_GetNextSubcaseID_
------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function GetNextNumSubcaseID(ByVal CaseID As String, ByVal 
                                    CaseCondID As Long) As String
``` 

#### Description

This method is returns the next available ID number for a subcase for the given case.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| CaseID | Yes | The ID Number of the case |
| CaseCondID | Yes | The objid of the condition record for the case |

**Returns**

A string that is the the next available ID number for a subcase of the case.

**Example**

The following example gets the next ID number for a subcase of a previously-found case.

**VisualBasic:**
```  
Dim boCase As FCGeneric
Dim sub_id As String

Set boCase = fc_session.CreateGeneric
boCase.SimpleQuery "case"
boCase.AppendFilter "id_number", "=", "44"
boCase.Query

sub_id = fc_session.GetNextSubcaseID(boCase("id_number"),
boCase("case_state2condition"))
```