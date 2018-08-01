_MovePreviousAbsolute_
----------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub MovePreviousAbsolute()
```

#### Description

This method sets the current record for the generic object to the previous object in the recordset. However, unlike the MovePrevious method, this method places the current record pointer to the previous record with **NO** regard to the parent recordset's current record pointer. In other words, this method places you at the previous record in the recordset for ALL records in the generic object. This method is similar to the base ClearBasic method GetRecordList, which gets all records for a specific query.

If this object is not a child generic, this method is equivalent to the MovePrevious method.

**Note:** This method still performs a MoveFirst on any generic objects that are children of this object.

**Example**

The following example queries for all of the sites in the database. It then traverses to the contact roles for those sites, and on to the contacts for the contact roles. It uses MoveLastAbsolute and MovePreviousAbsolute to traverse through all of the contact roles (and contacts) with no regard to the site generic object.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim boSite As FCGeneric

Dim boCRole As FCGeneric

Dim boContact As FCGeneric

Set boSite = fc_session.CreateGeneric("site")

Set boCRole = fc_session.CreateGeneric

boCRole.TraverseFromParent boSite, "site2contact_role"

boCRole.AppendSort "contact_role2contact", "asc"

Set boContact = fc_session.CreateGeneric

boContact.TraverseFromParent boCRole, "contact_role2contact"

boSite.Query

boCRole.MoveLastAbsolute

While boCRole.BOF = False

  Debug.Print "Role: " & boCRole("role_name")

  Debug.Print "  Count of contacts: " & Trim$(str$(boContact.Count)) 

  boCRole.MovePreviousAbsolute

Wend