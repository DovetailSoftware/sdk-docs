_GetGbstElmRankObjid_
---------------------

**Object and Type**

Object : FCApplication

Type : Method

**Prototype**

Public Function GetGbstElmRankObjid(ByVal ListName As String, _

                                    ByVal Rank As Long) As Long

**Description**

This method returns an objid for an element having a given rank in a given Application Popup list.

If the element is not found in the list, this method returns a value of zero.

The gbst_elm table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters
**Parameter Name**                **Required?**             **Description**

ListName                               Yes                         Application List Name

Rank                                       Yes                         Rank of Element

**Returns**

The objid of the element with the given Rank in the ListName list. Zero, if the Rank is not found in the ListName list.

**Error Codes**

**Value**                **Meaning**

10008                                      ListName must not be empty.

10009                                      Invalid ListName.

**Example**

**Visual Basic:**

The code in this example is written in Visual Basic.

The following example relates an activity entry record to the proper gbst_elm record using the activity code (rank) of the activity.

act_code = 4700

act_rec.RelateByID FCApp.GetGbstElmRankObjid("Activity Name", act_code), "entry_name2gbst_elm"