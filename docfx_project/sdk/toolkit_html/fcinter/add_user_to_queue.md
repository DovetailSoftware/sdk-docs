add_user_to_queue
-------------------

```
Public Function add_user_to_queue(ByVal queue As String, _
                                  ByVal user_name As String, _
                                  ByVal supervisor As Boolean) As Integer
```

#### Description

This API allows you to add a user (or supervisor) to a queue.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| queue | Yes | The name of the queue |
| user_name | Yes | The user to add |
| supervisor | Yes | Is this a supervisor (True) or just a user (False) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified queue (or queue not specified) |
| -2 | Specified user not found |
| ret_objid | Output - Returns the objid of the user |

#### Examples

Add "joe" to queue "Urgent" as a supervisor

**Visual Basic:**
```
Dim ret_int As Integer
Dim user_objid As Long

ret_int = fcinter.add_user_to_queue("Urgent", "joe", true)

 If ret_int = 0 Then
   user_objid = fcinter.ret_objid
 End If
```

**JavaScript:**
```
var ret_int = fcinter.add_user_to_queue("Urgent", "joe", true);

 if (ret_int == 0){ var user_objid = fcinter.ret_objid; }
```