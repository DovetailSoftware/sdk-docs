_Update(FCBulk)_
-------------

**Object and Type**

Object  : FCBulk

Type     : Method

**Prototype**

```
Public Sub Update()
```

#### Description

This crucial method will update the **CURRENT** record in each generic object  in the bulk.. The method will add it, update it, or delete each of the records as appropriate. It will also make whatever relations are needed so that the objects will be correct.

If no changes have been made to the current record in each generic object, this method will do nothing for that record.

If you wish to update all of the (modified) records in the generic object, you should call on the UpdateAll method.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 13001 | You may not update a view |
| 13002 | This operation is not valid for a generic that is marked distinct. At least one generic in this bulk is marked as distinct. |

#### Examples

The following example updates one case, one site, and one contact record.

**JavaScript:**
```
  // Update first case, contact, and site record from a query
  var boCase = FCSession.CreateGeneric();
  boCase.SimpleQuery("case");

  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");

  var boContact = FCSession.CreateGeneric();
  boContact.SimpleQuery("contact");
  boCase.Bulk.Query();

  boCase("dev") = 1
  boContact("dev") = 2
  boSite("dev") = 3

  boCase.Bulk.Update();
```

**Visual Basic:**
```
  Dim boCase As FCGeneric
  Dim boContact As FCGeneric
  Dim boSite As FCGeneric

  Set boCase = fc_session.CreateGeneric
  boCase.SimpleQuery "case"

  Set boContact = fc_session.CreateGeneric
  boContact.SimpleQuery "contact"

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"

  boCase.Bulk.Query

  boCase("dev") = 4
  boContact("dev") = 5
  boSite("dev") = 6

  boCase.Bulk.Update
```