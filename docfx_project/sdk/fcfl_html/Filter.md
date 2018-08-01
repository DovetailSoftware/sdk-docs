_Filter_
--------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public Filter As String
```

#### Description

This property is used for the "where" clause when this generic object queries the database. You must use SQL syntax to specify the "where" clause.

In most cases, you should not use this property, but rather use the higher-level AppendFilter property provided. The AppendFilter property, each time you call on it, will add another clause to the "where" clause, and will join them together with "And".

The one time to use this property is if you have very complex filtering, particularly if you want to use the "Or" construct.

**Example**

The following example shows how to query for sites in Texas or Arizona from the site_view view.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Set up a query of sites in Texas or Arizona

  var boSiteView = FCSession.CreateGeneric();

  boSiteView.DBObjectName = "site_view";

  boSiteView.Filter = "state = 'TX' or state = 'AZ'";

  boSiteView.Query();

  // Print them out

  while (boSiteView.EOF != true)

  {

    Response.Write ("Site ID: " + boSiteView("site_id"));

    boSiteView.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSiteView As FCGeneric

  Set boSiteView = fc_session.CreateGeneric

  boSiteView.SimpleQuery "site_view"

  boSiteView.Filter = "state = 'TX' or state = 'AZ'"

  boSiteView.Query

  While boSiteView.EOF = False

    MsgBox "Site: " & boSiteView("site_id")

    boSiteView.MoveNext

  Wend