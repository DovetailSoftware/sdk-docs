ship
----

```
Public Function ship(ByVal dtl_num As String, _
                     ByVal site_name As String, ByVal address_1 As String, _
                     ByVal address_2 As String, ByVal city_name As String, _
                     ByVal state_name As String, ByVal zip_code As String, _
                     ByVal country_name As String, ByVal f_name As String, _
                     ByVal l_name As String, ByVal waybill_name As String, _
                     ByVal pack_list As String, ByVal piece_count As Long, _
                     ByVal total_weight As Double, ByVal status_str As String, _
                     ByVal ship_date As String, ByVal user_name As String, _
                     ByVal carrier_name As String, ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified part request to be shipped. All of the shipping information is defaulted from that part request header's shipping site (and contact) information. However, that information can be overridden with the fields specified for the API. You can override any of the address fields, the contact name fields, and the site name (for shipping). The API also allows for the setting of a new status (in condition _Shipped_), or will use the default status if none is supplied. The carrier name (which is actually the name of a site) can be specified, or it will default to the dummy site (objid of -2). If you pass in "fill_from_db" in the site_name, addr, addr2, city, state, zip, country, f_name, or l_name fields, you can force each field to be filled with the corresponding data from the database.

Other information about the shipment (number of pieces, overall weight, etc.) can be specified, as can be the shipping user and the date/time of shipment.

The API will validate that the user has authority to make the status transition. Also, the API allows for time bombs (for business rules) to be created, or not.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| dtl_num | Yes | The part request to ship |
| site_name | No | Site name to ship to |
| addr | No | Address line 1 to ship to |
| addr2 | No | Address line 2 to ship to |
| city | No | City to ship to |
| state | No | State to ship to |
| zip | No | Zipcode to ship to |
| country | No | Country to ship to |
| f_name | No | Contact first name for attention in shipping |
| l_name | No | Contact last name for attention in shipping |
| waybill | No | Waybill information for the shipment |
| pack_list | No | Packing list information for the shipment |
| pieces | No | Number of pieces shipped |
| weight | No | Overall weight shipped |
| status | No | New status (in condition Shipped) for the part request. If blank, default status for the condition is used |
| ship_date | No | When did the ship occur. If left blank, current time is used |
| user_name | No | Who performed the ship? If left blank, current user is used |
| carrier_name | No | The carrier of the shipment? If left blank, the dummy site (objid of -2) is used |
| gen_time_bombs | Yes | Should a time bomb record be created for business rule notification? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Quantity to ship (from part request) can't be < 1 unit |
| -2 | Cannot find the specified user |
| -3 | Cannot find the specified part request |
| -4 | No address line 1 either specified or found in the shipping address |
| -5 | No city either specified or found in the shipping address |
| -6 | No state either specified or found in the shipping address |
| -7 | The transition to SHIPPED condition does not exist |
| -8 | The user is not authorized to make the transition to SHIPPED condition |
| -9 | Cannot locate activity string for SHIP with rank = 12500 |
| -10 | Cannot find the specified status |
| -11 | The part request is currently dispatched to a queue |
| -12 | The employee record for the specified user cannot be found |
| -13 | Cannot find the specified carrier site |

#### Examples

Ship part request number '1-14' using an address and a status of "All Shipped". Fill in other shipping information, and  it was performed by Cindy. The shipping occurs on August 1, 2001. Generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.ship("1-14", "A site", "101 Main Street", "Suite 101", _
          "Any city", "Any State", "11111", "Country", "Joe", _
          "Customer", "Waybill 1234", "Packed all of it!", _
          4, 4.56, "All Shipped", "8/1/2001 8:11:00", "cindy", "Fed Ex", True)
```

**JavaScript:**
```
var ret_int = fccl.ship("1-14", "A site", "101 Main Street", "Suite 101",
         "Any city", "Any State", "11111", "Country", "Joe",
         "Customer", "Waybill 1234", "Packed all of it!",
         4, 4.56, "All Shipped", "8/1/2001 8:11:00", "cindy", "Fed Ex", True);
```

Ship part request number '2-1'. Use all the default information. Do not generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.ship("2-1", "", "", "", "", "", "", "", "", "", _
"Waybill 1234", "Packed all of it!", 4, 4.56, "", "", "", "", False)
```

**JavaScript:**
```
var ret_int = fccl.ship("2-1", "", "", "", "", "", "", "", "", "",

"Waybill 1234", "Packed all of it!", 4, 4.56, "", "", "", "", False);
```