_AppendSort_
------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub AppendSort(ByVal field_name As String, _

                      ByVal ascending As String)

**Description**

This method adds another sort clause for the generic object to query the database. This clause will be added to the end of any previous sorts specified with AppendSort. The field name must be a valid field (or MTO/OTOP relation) in the table. The ascending parameter is either ascending or descending.

You **MUST** set the DBObjectName (either by setting it, using SimpleQuery, ParentRelation/ParentBO, or TraverseFromParent) before you can call on this method. It requies that the generic object be set to a table or view first.

**Note**: You may also just set the SortFields property directly, if you would prefer. But that property requires that you know the correct SQL syntax for the sort.

#### Parameters
**Parameter Name**                **Required?**             **Description**

field_name                             Yes                         Valid field name for the database object. If you wish, you may

also specify a valid MTO or OTOP relation name

ascending                              Yes                         A string that is one of:

1. ascending (or asc or a)

2. descending (or desc or d)

**Error Codes**

**Value**                **Meaning**

12003                                      Bad ascending value specified

12004                                      Too many sorts specified. Please use the SortFields property instead

12023                                      The specified field is not valid for the query object

**Example**

The following example uses AppendSort to sort a query of the site table by both status and site name.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Order a query of sites by status and then site name

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

  boSite.AppendSort("status", "asc");

  boSite.AppendSort("name", "asc");

  boSite.Query();

  // Now print them out

  while (boSite.EOF != true)

  {

 Response.Write ("Site: " + boSite("name"));

    boSite.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic.

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"

  boSite.AppendSort "status", "asc"

  boSite.AppendSort "name", "asc"

  boSite.Query

  While boSite.EOF = False

    MsgBox "Site: " & boSite("name")

    boSite.MoveNext

  Wend