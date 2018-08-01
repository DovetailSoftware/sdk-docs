forward_pr
----------

```
Public Function forward_pr(ByVal pr_id As String, _
                           ByVal new_queue As String, ByVal forward_date As String, _
                           ByVal note_str As String, ByVal user_name As String, _
                           ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified part request to be rejected from the current queue, and forwarded to another queue. The part request must be dispatched to a queue, and the specified new queue must be valid. The API allows for the setting of the forward date, and the user who forwarded the part request. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| pr_id | Yes | The part request to dispatch |
| queue_name | Yes | The queue to forward to |
| forward_date | No | When was the part request forwarded. If this parameter is left blank, the PR is forwarded at the current time |
| note_str | No | Optional notes about the forward |
| user_name | No | The user who forwarded the part request. If left blank, the current user performs the forward. |
| gen_time_bombs | Yes | Should a time_bomb be generated |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified part request |
| -2 | Part request is not currently dispatched |
| -3 | The new queue name specified is not found |
| -4 | Reject-forward attempted to same queue as currently dispatched to |
| -5 | The specified user is not found |
| -6 | The FORWARD activity string is not found with rank = 1100 |

**Examples**

Forward part request number '1-14' to queue 'Hardware'. The forward is performed by the current user and is dispatched at the current time. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.forward_pr("1-14", "Hardware", "", "", "", True)

**Javascript:**

var ret_int = fccl.forward_pr("1-14", "Hardware", "", "", "", true);

 Forward part request number '2-1' at 10PM on November 23rd of 2001 to 'Software'. Forward should be logged as performed by Nancy. Add some notes. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.dispatch_pr("2-1", "Software", "11/23/01 22:00:00", _
                          "Notes about forward", "nancy", False)

**Javascript:**

var ret_int = fccl.dispatch_pr("2-1", "Software", "11/23/01 22:00:00",

                          "Notes about forward", "nancy", false);