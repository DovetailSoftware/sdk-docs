_RelateRecords_
------------
**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub RelateRecords(o_obj As FCGeneric, the_rel As String)
```

#### Description

This method is used to relate two records together via a specified realation. The relation specified must be valid for the generic object that the method is called on (not the generic object that is the first argument). You may relate the objects from either side.for example, suppose you wish to relate a case generic object and a site generic object. You could make either (or both, but that doesn't help you!) calls below:

boCase.RelateRecords(boSite, "case_reporter2site")

boSite.RelateRecords(boCase, "cust_loc2case")

You must update one or the other objects via the Update or UpdateAll method for the relation to take place.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| o_obj | Yes | The object to which to relate |
| the_field | Yes | The relation to use to relate the objects |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12010 | The specified relation does not relate these two objects |
| 12011 | The two objects must be in the same bulk |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example relates a new case generic object to a new site and contact generic objects.

**JavaScript:**
```
  // Find the site and contact

  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.AppendFilter("objid", "=", "268435457");

  var boContact = FCSession.CreateGeneric();
  boContact.SimpleQuery("contact");
  boContact.AppendFilter("objid", "=", "268435457");
  boContact.Bulk.Query();

  // Create a new case
  var boCase = FCSession.CreateGeneric();
  boCase.SimpleQuery("case");
  boCase.AddNew();

  // Now relate it and commit it
  boCase.RelateRecords(boSite, "case_reporter2site");
  boCase.RelateRecords(boContact, "case_reporter2contact");
  boCase.Update();
```

**Visual Basic:**
```
  Dim boCase As FCGeneric
  Dim boSite As FCGeneric
  Dim boContact As FCGeneric

  Set boContact = fc_session.CreateGeneric

  boContact.SimpleQuery "contact"
  boContact.AppendFilter "objid", "=", 268435457

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"
  boSite.AppendFilter "objid", "=", 268435457
  boSite.Bulk.Query

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"
  boCase.AddNew
  boCase.RelateRecords boSite, "case_reporter2site"
  boCase.RelateRecords boContact, "case_reporter2contact"
  boCase.Update
```