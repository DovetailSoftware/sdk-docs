_Item_
------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

Public Property Get Item(TheItem As String) As Variant

**Description**

The Item property allows access to a collection of data stored in the FCSession object.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TheItem | Yes | The item to be retrieved. |

**Returns**

The set of data available in the collection is dependent on the LoginType used in the Login method.

The following items are always available:

| Item | Type | Comments |
| --- | --- | --- |
| session.login_type | String | The LoginType used in the Login method |
| session.login_name | String | The LoginName used in the Login method |
| config_itm.&lt;name&gt;.value_type | Integer | The Internal flag setting. Use depends on individual config_itm |
| config_itm.&lt;name&gt;.i_value | Integer | A quantity which sets behavior of the application |
| config_itm.&lt;name&gt;.f_value | Float | A quantity which sets behavior of the application |
| config_itm.&lt;name&gt;.str_value | String | A quantity which sets behavior of the application |

The following items are available when the LoginType = "user"

| Item | Type | Comments |
| --- | --- | --- |
| employee.id | Long | Objid of employee |
| employee.first_name | String | First name of Employee |
| employee.last_name | String | Last Name of Employee |
| employee.phone | String | Phone Number of Employee |
| employee.site.id | Long | Objid of Employee's site |
| employee.site.site_id | String | Site ID of Employee's site |
| employee.site.name | String | Name of Employee's site |
| employee.site.type | String | Type of Employee's site |
| employee.address.address | String | Address of Employee's site |
| employee.address.city | String | City of Employee's site |
| employee.address.state | String | State of Employee's site |
| employee.address.zipcode | String | Zipcode of Employee's site |
| employee.country.name | String | Country of Employee's site |
| user.login_name | String | Login Name of User |
| user.locale | Integer | Locale of User |
| user.agentid | String | Agent ID of User |
| user.status | Integer | Status of User |
| wipbin.title | String | Title of User's Default Wipbin |
| user.id | Long | Objid of User |
| wipbin.id | Long | Objid of User's Default Wipbin |
| privclass.id | Long | Objid of user's privilege class |
| privclass.name | String | Name of user's privilege class |

The following items are available when the LoginType = "contact"

| Item | Type | Comments |
| --- | --- | --- |
| contact.id | Long | Objid of Contact |
| contact.first_name | String | First Name of Contact |
| contact.last_name | String | Last Name of Contact |
| contact.email | String | Email of Contact |
| contact.phone | String | Phone of Contact |
| contact.fax | String | Fax of Contact |
| contact.site.id | Long | Objid of Contact's Primary Site |
| contact.site.site_id | String | Site ID of Contact's Primary Site |
| contact.site.name | String | Name of Contact's Primary Site |
| contact.site.type | String | Type of Contact's Primary Site |
| contact.title | String | Title of the contact |
| contact.address.address | String | Address of Contact's Primary Site |
| contact.address.address2 | String | Address2 of Contact's Primary Site |
| contact.address.city | String | City of Contact's Primary Site |
| contact.address.state | String | State of Contact's Primary Site |
| contact.address.zipcode | String | Zipcode of Contact's Primary Site |
| contact.country.name | String | Country Name of Contact's Primary Site |

**Error Codes**

**Value**                             **Meaning**

11001                                      Field given is not a valid field for config_itm.

11002                                      Item not found.

**Example**

The following examples displays the name of either the user or the contact depending on the login type.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<% if (FCSession.Item("session.login_type") == "contact") { %>

   Name = <%=FCSession.Item("contact.first_name")%>

          <%=FCSession.Item("contact.last_name")%> <BR>

<% } else { %>

   Name = <%=FCSession.Item("employee.first_name")%>

           <%=FCSession.Item("employee.last_name")%> <BR>

<% } %>

The following examples displays the integer value for a configuration item.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

i_value for the config_itm "password specification" =

<%=FCSession.Item("config_itm.password specification.i_value")%> <BR>