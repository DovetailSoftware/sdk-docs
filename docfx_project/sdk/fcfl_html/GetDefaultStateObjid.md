_GetDefaultStateObjid_
----------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetDefaultStateObjid(ByVal Country As String) As Long

**Description**

This method returns a long integer containing the objid of the default state_prov for a given country. If there is not a default state (indicated by the is_default field), then the objid of the first state is returned.

The state_prov and country tables are cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

Country                                 Yes                         Name of country to get the default state for.

**Returns**

A long integer containing the objid of the default state_prov for a given country

**Error Codes**

**Value                                     Meaning                                                                                                                               **

10011                                      Country must not be empty.

10012                                      Invalid Country

**Example**

The following example retrieves the objid of the default state for a given country.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

//If the customer didn't give us a state, use the default

if (StateObjid == 0)

{

var defCountry = FCApp.GetDefaultCountry();

StateObjid = FCApp.GetDefaultStateObjid(defCountry);

}