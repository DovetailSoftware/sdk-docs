_RowLimit(FCSession)_
---------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

Public RowLimit As Integer

**Description**

This property allows you to set the _RowLimit_ property for all Generic objects subsequently created from this session. Each new Generic will inherit the property from the session.

**Note:** Setting this property does not affect the _RowLimit_ for any existing Generic objects - only those created after the property is set.

**Example**

The following example sets the _RowLimit_ for all Generics created from this session. One of the Generics has a different _RowLimit_ set.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

�

  // Set the session row limit, and create a generic that will share

  // the limit, and one that won't.

<%

FCSession.RowLimit = 300;

var boCase = FCSession.CreateGeneric();

boCase.SimpleQuery("case");

boCase.RowLimit = 100;

var boSite = FCSession.CreateGeneric();

boSite.SimpleQuery("site");

boCase.Bulk.Query();

%>