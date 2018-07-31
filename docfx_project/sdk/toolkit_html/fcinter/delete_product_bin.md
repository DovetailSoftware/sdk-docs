delete_product_bin
--------------------

Public Function delete_product_bin(ByVal bin_objid As Long, _
                                   ByVal user_name As String, _
                                   ByVal delete_date As String) As Integer

**Description**

This API allows you to delete an existing product bin. The bin must be empty (no child bins or child site_parts), and cannot be the deinstall (special) bin.  You may also specify who deleted the product bin, and when.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| bin_objid | Yes | Objid of the bin to delete |
| user_name | No | Name of the user who deleted the bin. If blank, the current user is used |
| delete_date | No | When was the bin deleted. If blank, the current date/time is used |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Could not locate the "Deleted" activity log string

-2                                             The specified bin could not be located

-3                                             The specified bin contains one or more child bins and cannot be deleted

-4                                             The specified bin contains one or more child site parts and cannot be deleted

-5                                             The specified bin is a special bin, and cannot be deleted

-6                                             Could not locate the specified user name

**Examples**

 Delete bin 268435460. Deleted by "Joe" on 1/1/2005.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.delete_product_bin(268435460, "joe", "1/1/2005")

**Javascript:**

var ret_int = fcinter.delete_product_bin(268435460, "joe", "1/1/2005");