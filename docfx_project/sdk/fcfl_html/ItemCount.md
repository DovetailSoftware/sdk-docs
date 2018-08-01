_ItemCount_
-----------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function ItemCount(path_str As String, separator As String) As Integer
```

#### Description

Returns an Integer containing the number of items in the specified delimited text. This provides the same functionality as the ClearBasic ItemCount function.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| path_str | Yes | String containing the text from which a range of items is returned. |
| seperator | Yes | String containing different item delimiters. |

**Example**

The following example creates 2 delimited lists, and then counts the items in each.

**JavaScript:**
```
var ilist = "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";
var slist = "1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16";
var ilistCount = FCSession.ItemCount(ilist,",");
var slistCount = FCSession.ItemCount(slist,"/");
```

The results of this would be:
```
ilistCount = 15

slistCount = 16
```