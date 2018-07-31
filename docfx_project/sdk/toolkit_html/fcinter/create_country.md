create_country
--------------

Public Function create_country(ByVal cname As String, _
                               ByVal c_code As Long, _
                               ByVal the_currency As String, _
                               ByVal symbol As String, _
                               ByVal desc As String, _
                               ByVal conv_rate As Double, _
                               ByVal iso_code As String) As Integer

**Description**

This API creates a country object in Clarify, and can also create a currency object. If you specify a country name without a currency  name, the country will be created without a related currency name. If a currency name is given, and it matches an existing currency name, that currency is used for the country. If no match is found, the data provided in the API will be used for the new currency record. The country code is added to the country object, where the symbol, description, iso_code, and conversion rate are used in the new currency object.

The API checks both the country name and the ISO code. If either is found in the Database, then the API cannot create a new country.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cname | Yes | Country name to add |
| c_code | Yes | Country code (phone calling code) for the country |
| the_currency | No | The currency name to use for the country. If found in the DB, that currency is used. If not found, a new currency object is created. If blank, no currency is used for this country |
| symbol | No | Symbol for the currency. Only used if new currency is created |
| desc | No | Description for the currency. Only used if new currency is created |
| conv_rate | No | Conversion rate for the currency. Only used if new currency is created |
| iso_code | No | ISO Code for the currency. Only used if new currency is created |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Country name is already found in the Database

-2                                             Country code is already found in the Database

**Examples**

 Add a country named 'Fooland' with a country code of 42. Add no new currency.

**Visual Basic:**

Dim ret_int       As Integer

ret_int = fcinter.create_country("Fooland", 42, "", "", "", _
                                 0, "")

**Javascript:**

var ret_int = fcinter.create_country("Fooland", 42, "", "", "",

                                     0, "")

 Add a country named 'Fooland' with a country code of 42. Add a currency for the country.

**Visual Basic:**

Dim ret_int       As Integer

ret_int = fcinter.create_country("Fooland", 42, "FD", "F$", _
                                 "Foo Dollars", 4.3, "FDD")

**Javascript:**

var ret_int = fcinter.create_country("Fooland", 42, "FD", "F$",

                                     "Foo Dollars", 4.3, "FDD")