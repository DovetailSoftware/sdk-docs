_GetFullStateObjid_
----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetFullStateObjid(ByVal Country As String, ByVal State As String) As Long
```

#### Description

This method returns an objid for a given state in a given country. If the state or country is not found, this method returns a value of zero. The state and country tables are cached in the FCApplication object, so this method does not cause a database round-trip.

**Note**: The state name supplied should be the "long" name (such as "Texas").

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| Country | Yes | Name of country. |
| State | Yes | Name of state to get the objid for. |

**Returns**

The objid of the state. Zero, if the state or country is not found.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 10011 | Country must not be empty. |
| 10013 | State must not be empty. |

#### Examples

The following example checks is a given state from a posted form is valid for the posted country.

**JavaScript:**
```
var country = Request.Form("country").Item;
var state = Request.Form("state").Item;
var StateObjid = FCApp.GetFullStateObjid(country,state);

if(StateObjid > 0)
{
  Response.Write(state + " is a valid state in " + country);
}
else
{
  Response.Write(state + " is NOT a valid state in " + country);
}
```