_RefreshContext_
----------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub RefreshContext()

**Description**

This method refreshes the Item data collection for the FCSession. If any of the contact or user data is updated, the RefreshContext method should be called in order to update the data in the Item collection.

**Example**

The following example updates the contact information and refreshes the context.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

Contact Phone Number Before = <%=FCSession.Item("contact.phone")%><BR>

<%

var boContact = FCSession.CreateGeneric();

boContact.DBObjectName = "contact";

boContact.AppendFilter("objid", "=", "268435457");

boContact.Query();

boContact("objid") = FCSession.Item("contact.id");

boContact("phone") = "512-418-2905";

boContact.Update();

FCSession.RefreshContext();

%>

Contact Phone Number After = <%=FCSession.Item("contact.phone")%><BR>