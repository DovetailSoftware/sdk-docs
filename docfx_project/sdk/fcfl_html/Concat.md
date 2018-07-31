_Concat_
--------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

Public Sub Concat(ByRef param1 As Variant, _

                       Optional ByRef param2 As Variant, _

                       Optional ByRef param3 As Variant, _

                       Optional ByRef param4 As Variant, _

                       Optional ByRef param5 As Variant)

**Description**

This method takes 1 to 5 arguments and does in order concatenation on them.  Items can be strings, numbers or other lists.  The in order concatenation is placed into the list the method is called on.  If the list already has data, that data is cleared out first.

This method concatenates the items that are in the same position it in the argument lists and places the result in the same position at in the resulting list.  For example, if the lists list1, list2 and list3 are passed in, the first item in list1 concatenated with the first item in list1 is concatenated with the first item in list2 and list3.  This forms the first item in the result list.  The second item in list1 concatenated with the second item in list2 and  list3, forming the second item in the result, and so on.   For example :

                list1 = "A", "B'", "C"

                list2 = "xx", "yy", "zz"

                list3 = 1, 2, 3

The resulting list is "Axx1", "Byy2", "Czz3"

The resulting list always has the number of items as the largest list passed.  If a list passed in is shorter than the other lists passed in, once all its items are used, no further concatenation is done from that list.  For example, if list2 in the above example only had two items, the third item in the resulting list will have no piece concatenated from list2.   Finally, if a number or a string is sent in as one of the parameters, it is used in all the resulting list items.  For example, if the string "test_" and the list (1,2,3)  was passed into the method, the resulting list would be ("test_1", "test_2", "test_3").  A more complicated example showing all these rules is :

                string1 = "test_"

list1= "A", "B", "C"

                string2 = "_"

list2 = 1, 2, 3, 4

list3 = "x", "y", "z", "Q"

The resulting list is  "test_A_1x", "test_B_2y", "test_C_3z", "test__4Q"

Notice how all items in the resulting contain the strings "test_" and "_" and that the final item in the resulting list contains no item from list1 (which has only 3 items).  This completely implements the ClearBasic version of this method.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| param1 | Yes | First item or list to concatenate. |
| param2 | No | Second item or list to concatenate. |
| param3 | No | Third item or list to concatenate. |
| param4 | No | Fourth item or list to concatenate. |
| param5 | No | Fifth item or list to concatenate. |

**Example**

This code illustrates the example given in the description section.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list1 As New FCList

Dim list2 As New FCList

Dim list3 As New FCList

Dim list4 As New FCList

list1.AppendItem "A", "B", "C"

list2.AppendItem 1, 2, 3, 4

list3.AppendItem "x", "y", "z", "Q"

list4.Concat "test_", list1, "_", list2, list3

' list four now contains "test_A_1x", "test_B_2y", "test_C_3z", "test__4Q"