yank_pr
-------

Public Function yank_pr(ByVal pr_id As String, _
                        ByVal wipbin_name As String, ByVal yank_date As String, _
                        ByVal user_name As String, ByVal gen_time_bombs As Boolean) _
                        As Integer

**Description**

This API causes the specified part request to be yanked and placed in a specific WIPBin. The person perfoming the yank (the new owner) and the time of the yank can be specified. Also, the API allows for time bombs (for business rules) to be created, or not.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| pr_id | Yes | The part request to yank |
| wipbin_name | No | The WIPBin in which to place the part request. If left blank, it is yanked to the default WIPBin |
| yank_date | No | The date/time to yank the part request. If left blank, the current date/time is used |
| user_name | No | Who performed the yank? If left blank, current user is used |
| gen_time_bombs | Yes | Should a time bomb record be created for business rule notification? |

**Returns**

**Value**                **Meaning**

0                                              No Errors

-1                                             Cannot find the specified part request

-2                                             The part request is already closed

-3                                             Cannot find the specified user

-4                                             Cannot find the specified WIPBIN

-5                                             Cannot find the YANK activity string with rank 4100

**Examples**

 Yank part request number '1-14' to WIPBin 'Hardware'.  The yank occurs on August 1, 2001, and is performed by Marty. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.yank_pr("1-14", "Hardware", "8/1/2001", "marty", True)

**Javascript:**

var ret_int = fccl.yank_pr("1-14", "Hardware", "8/1/2001", "marty", true);

 Yank part request number '2-1' to the default WIPBin. Do the yank now and with the current user. Do not generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.yank_pr("2-1", "", "", "", False)

**Javascript:**

var ret_int = fccl.yank_pr("2-1", "", "", "", false);