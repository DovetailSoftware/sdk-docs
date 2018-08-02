_MoveFirstAbsolute_
-------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub MoveFirstAbsolute()
```

#### Description

This method sets the current record for the generic object to the first object in the recordset. However, unlike the MoveFirst method, this method places the current record pointer to the first record with **NO** regard to the parent recordset's current record pointer. In other words, this method places you at the first record in the recordset for ALL records in the generic object. This method is similar to the base ClearBasic method GetRecordList, which gets all records for a specific query.

If this object is not a child generic, this method is equivalent to the MoveFirst method.

If there are no records in the generic object, the BOF flag will be set to True.

**Note:** This method still performs a MoveFirst on any generic objects that are children of this object.

**Example**

The following example queries for all of the sites in the database. It then traverses to the contact roles for those sites, and on to the contacts for the contact roles. It uses MoveFirstAbsolute and MoveNextAbsolute to traverse through all of the contact roles (and contacts) with no regard to the site generic object.

**Visual Basic:**
```
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

boCRole.MoveFirstAbsolute
While boCRole.EOF = False
  Debug.Print "Role: " & boCRole("role_name")
  Debug.Print "  Count of contacts: " & Trim$(str$(boContact.Count))
  boCRole.MoveNextAbsolute
Wend
```