_GetDefaultCountryObjid_
------------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetDefaultCountryObjid() As Long
```

#### Description

This method returns the objid of the default country. The default country is defined by the is_default flag in the country table. The country table is cached in the FCApplication object, so this method does not cause a database round-trip.

**Returns**

A long integer containing the objid of the default country. If a country has not been set as the default, zero will be returned.

**Example**

The following example retrieves the objid of the default country.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

//If the customer didn't give us a country, use the default

if (CountryObjid == 0)

{

CountryObjid = FCApp.GetDefaultCountryObjid();