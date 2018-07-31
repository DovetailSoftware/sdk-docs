_RelateByID_
------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub RelateByID(ByVal the_objid As Long, ByVal the_rel As String)

**Description**

This method relates the _current_ row of the generic object to the specified objid for the relation specified. The proper relation data will be set, no matter which table (this table, the related table, or an MTM table) the actual physical relation is stored on. This method also supports exclusive relations.

You must update the object via the Update or UpdateAll method for the relation to take place.

#### Parameters
**Parameter Name**                **Required?**             **Description**

the_objid                               Yes                         The objid of the object to relate to

the_rel                                    Yes                         The relation to use to relate the two records

**Error Codes**

**Value**                **Meaning**

12015                                      The current object must be positioned on a valid record to call on this method.

12031                                      This operation is not valid for a generic that is marked distinct

**Example**

The following example relates a case to a specific site (268435457).

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Get all cases

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  boCase.Query();

  boCase.RelateByID(268435457, "case_reporter2site");

  boCase.Update(); 

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.Query

  boCase.RelateByID 268435457, "case_reporter2site"

  boCase.Update