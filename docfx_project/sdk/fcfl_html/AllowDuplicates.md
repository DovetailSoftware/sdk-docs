_AllowDuplicates_
-----------------

**Object and Type**

Object  : FCList

Type     : Property

**Prototype**

Public AllowDuplicates    As Boolean

**Description**

This property tells whether to allow an item to be placed in a list if an item of that value already exists in the list.  If this values is set to 'FALSE' such an insertion is not allowed.    This property only prohibits the insertion.  If the list has duplicate entries, you may still set this property with no effect on the current list.   All lists are created with AllowDuplicates set to 'TRUE'.

**Values**

**Value                     Description                                                                                                          **

FALSE                   Do not allow items to be inserted into the list if it already exists in the list.

TRUE                     Allow items to be inserted into the list if it already exists in the list.

**Example**

The example shows the adding of duplicate data to a list with the AllowDuplicates property turned on and off.  Notice in the last example that the duplicate data is still in list with AllowDuplicates set to FALSE.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

list.AppendItem 2, 3, 4, 5

' list now has the numbers 2, 3, 4 and 5

list.AllowDuplicates = FALSE

list.AppendItem 2

' list still has the numbers 2, 3, 4 and 5 - duplicate 2 not added

list.AllowDuplicates = TRUE

list.AppendItem 2

' list has the numbers 2, 3, 4, 5 and 2

list.AllowDuplicates = FALSE

list.AppendItem 1

' list still has the numbers 2, 3, 4, 5, 2 and 1 � notice that the duplicate 2

' is still in the list