_DBObjectName_
-----------
**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public DBObjectName As String
```

#### Description

This property contains the table or view name of this generic object. The name should **NOT** include the "table_". For example, for table_case, the DBObjectName should be set to "case".

This property can be set directly on the object, or you can use the provided SimpleQuery method.

When you have a generic object that is a child object (that is, is traversed from a parent BO), you **MUST NOT** set this property. Rather, this property will be set for you when you call on the TraverseFromParent method, or you set the ParentRelation and ParentBO properties. However, once one of those properties/methods is called, you may still use this property to read the value of the table/view name.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12035 | The specified table or view name is not defined |

#### Examples

The following example queries the contact table using the DBObjectName property.

**JavaScript:**
```
  // Set up a query of all contacts
  var boContact = FCSession.CreateGeneric();
  boContact.DBObjectName = "contact";
  boContact.Query();
```

**Visual Basic:**
```
  Dim boContact As FCGeneric
  Set boContact = fc_session.CreateGeneric
  boContact.DbObjectName = "contact"
  boContact.Query
```