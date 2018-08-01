_IsCountry_
-----------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function IsCountry(ByVal Country As String) As Boolean
``` 

#### Description

This method returns a boolean indicating if the given country is a valid country name in the database.  The country table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| Country | Yes | Name of country to be validated. |

**Returns**

A boolean value indicating if the given country is found in the database or not. 

**Example**

The following example checks is a given value from a posted form is a valid country.

**JavaScript:**
```
var country = Request.Form("country").Item; 
If (FCApp.IsCountry(country))
 { Response.Write(country + " is a valid country."); }
else
 { Response.Write(country + " is NOT a valid country."); }
```