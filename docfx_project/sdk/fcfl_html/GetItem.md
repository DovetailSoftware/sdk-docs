_GetItem_
---------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function GetItem(path_str As String, _

                     start_item As Integer, _

                     stop_item As Integer, _

                     separator As String) As String

**Description**

Returns all the items between first and last within the specified formatted text list. This provides the same functionality as the ClearBasic Item$ function.

#### Parameters
**Parameter Name**                **Required?**             **Description**

path_str                                 Yes                         String containing the text from which a range of items is

returned.

start_item                              Yes                         Integer containing the index of the first item to be returned. If

first is greater than the number of items in text$, then a zero-length string is returned.

stop_item                              Yes                         Integer containing the index of the last item to be returned. All

of the items between first and last are returned. If last is greater than the number of items in text$, then all items from first to the end of text are returned.

seperator                               Yes                         String containing different item delimiters.

**Example**

The following example creates 2 delimited lists, and then extracts a range from each.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var ilist = "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";

var slist = "1/2/3/4/5/6/7/8/9/10/11/12/13/14/15";

var list1 = FCSession.GetItem(ilist,5,12,",");

var list2 = FCSession.GetItem(slist,2,9,"/");

var ilist4 = FCSession.GetItem(ilist,4,4,",");

The results of this would be:

list1  = 5,6,7,8,9,10,11,12

list2 = 2/3/4/5/6/7/8/9

ilist4 = 4