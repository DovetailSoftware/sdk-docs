get_loc_serv_site
-------------------

Public Function get_loc_serv_site(ByVal site_id As String) As Integer

**Description**

This API returns a list of the locations (in the proper order) servicing this site.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| site_id | Yes | The site's ID |

**Returns**

**Value**                **Meaning**

0 No errors

+1                                            There are no locations specified to service this site

-1                                             No site ID supplied

-2                                             Supplied site does not exist |
| ret_string | Output | Returns a pipe delimited list of the locations (in the proper order)

servicing this site

**Examples**

 Get the locations servicing the site "42".

**Visual Basic:**

Dim ret_int  As Integer

Dim loc_list As String

ret_int = fccl.get_loc_serv_site("42", loc_list) If ret_int = 0 Then

  loc_list = fccl.ret_string

End If

**Javascript:**

var ret_int = fccl.get_loc_serv_site("42", loc_list); If (ret_int == 0) { var loc_site = fccl.ret_string; }