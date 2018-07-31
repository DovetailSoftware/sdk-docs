_RankIsInGbstList_
------------------

**Object and Type**

Object : FCApplication

Type : Method

**Prototype**

Public Function RankIsInGbstLst(ByVal ListName As String, ByVal Rank As Long) As Boolean

**Description**

This method returns a boolean indicating if an element having a given rank exists in a given Application Popup list. The gbst_elm table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters
**Parameter Name**                **Required?**             **Description**

ListName                               Yes                         Application List Name

Rank                                       Yes                         Rank of Element

**Returns**

A boolean indicating if an element having a given rank exists in a given Application Popup list.

**Error Codes**

**Value**                **Meaning**

10008                                      ListName must not be empty.

10009                                      Invalid ListName.

**Example**

**Visual Basic:**

The code in this example is written in Visual Basic.

The following example verifies that the given activity code is valid.

act_code = 4700

If Not FCApp.RankIsInGbstLst("Activity Name", act_code) Then

  'Cleanup, Error, & Exit

   CloseGenerics 10, obj_rec, old_stat_rec, user_rec, emp_rec, _

 parent_rec, stat_lst_rec, cond_rec, tb_rec, _

act_rec, stat_rec

   Err.Raise -5, ObjectName, _

         "Cannot find the activity string with rank = " & act_code

    Exit Function

  End If