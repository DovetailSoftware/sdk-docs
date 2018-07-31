_ChangeResGroup_
----------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub ChangeResGroup(new_group As String, _

                          Optional SaveToDB As Boolean)

**Description**

This method changes the restriction group for the session user. The first argument must be a valid restriction group that the user belongs to. You may choose to have the restrictions only apply to the local session, or to change the active restriction group for the user in the database (which will apply to future sessions) with the 2nd argument.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| new_group | Yes | The name of the new restriction group |
| SaveToDB | No | Should the change be saved to the database? If left out, the value used is "False" |

**Error Codes**

**Value**                **Meaning**

11009                                      This database is not Data Restriction enabled

11010                                      The supplied restriction group does not exist, or is not valid for the current user

11014                                      You may not set restrictions for contacts

**Example**

The following example changes the user's restriction group, and writes the change to the database.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

FCSession.ChangeResGroup("AOL", true);