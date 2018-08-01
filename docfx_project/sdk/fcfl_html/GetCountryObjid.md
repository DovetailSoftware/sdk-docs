_GetCountryObjid_
-----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetCountryObjid(ByVal Country As String) As Long
```

#### Description

This method returns an objid for a given country. If the country is not found, this method returns a value of zero. The country table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| Country | Yes | Name of country to get the objid for. |

**Returns**

The objid of country. Zero, if the country is not found. |

**Example**

The following example retrieves the objid for a country.

**JavaScript:**
```
var CountryName = Request.Form("country").Item;

var CountryObjid = FCApp.GetCountryObjid(CountryName);
```