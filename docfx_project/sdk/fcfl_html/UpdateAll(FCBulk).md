_UpdateAll(FCBulk)_
-------------------

**Object and Type**

Object  : FCBulk

Type     : Method

**Prototype**

Public Sub UpdateAll()

**Description**

This crucial method will update **ALL** of the records in each generic object in the bulk. The method will add, update, or delete any records in each generic as appropriate. It will also make whatever relations are needed so that the objects will be correct.

If no changes have been made to any of the records in any of the generic objects, this method will do nothing to those records.

If you wish to update just one record in each of the generic objects, you should call on the Update method.

**Error Codes**

**Value                                     Meaning                                                                                                                               **

13001                                      You may not update a view

13002                                      This operation is not valid for a generic that is marked distinct. At least one

generic in this bulk is marked as distinct

**Example**

The following example updates all of the modified records in several generics that are in the bulk.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Find all sites and all cases

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  boSite.Bulk.Query();

  // Now update a field for each site, and each case

  while (boCase.EOF != true)

  {

    boCase("alt_address") = "An address";

    boCase.MoveNext();

  }

  while (boSite.EOF != true)

  {

    boSite("external_id") = "An external ID";

    boSite.MoveNext();

  }

  // Update all modified records in the bulk

  boSite.Bulk.UpdateAll();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSite As FCGeneric

  Dim boCase As FCGeneric

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boSite.Bulk.Query

  While boCase.EOF = False

    boCase("alt_address") = "An address"

    boCase.MoveNext

  Wend

  While boSite.EOF = False

    boSite("external_id") = "An external ID"

    boSite.MoveNext

  Wend

  boSite.Bulk.UpdateAll