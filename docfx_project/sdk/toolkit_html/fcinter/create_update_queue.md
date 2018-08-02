create_update_queue
---------------------

```
Public Function create_update_queue(ByVal title As String, _
                                    ByVal personal As Boolean, _
                                    ByVal description As String, _
                                    ByVal allow_bug As Integer, _
                                    ByVal allow_case As Integer, _
                                    ByVal allow_contract As Integer, _
                                    ByVal allow_dialogue As Integer, _
                                    ByVal allow_dmnd_dtl As Integer, _
                                    ByVal allow_job As Integer, _
                                    ByVal allow_opp As Integer, _
                                    ByVal allow_probdesc As Integer, _
                                    ByVal allow_subcase As Integer, _
                                    ByVal allow_task As Integer, _
                                    ByVal supervisor As String, _
                                    ByVal new_title As String) As Integer
```

#### Description

This API either creates or updates a queue in the database.  If the supplied queue title is not found in the database, the API will create a new queue. If the title is found in the database, an update will occur. The user can mark if it is a personal or shared queue, a description, and can decide which objects can be dispatched to the queue. Finally, the user who is the supervisor must be specified.

For updates, a new title can be specified. An updated description can be provided, and you can decide to turn on or off the allow fields. You can also change the queue supervisor.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| title | Yes | Title of the queue. For creates, it is a unique name. For updates, it is the name of the queue to update |
| personal | Yes | Is this a personal queue (True), or shared (False) |
| description | No | The description of the queue. For updates, if you leave it blank (""), no change will be made. If you want to clear the description (for updates), use the string "CLEAR". |
| allow_bug | Yes | Should the queue allow dispatches of each of these objects. Values are "1" |
| allow_case<br>allow_contract<br>allow_dialogue<br>allow_demand_dtl<br>allow_job<br>allow_opp<br>allow_probdesc<br>allow_subcase<br>allow_task | (Yes), or "0" (No). For updates, if you set this to "-1", the previous value is retained. |
| supervisor | No | Supervisor of the queue. If blank, the current user is used |
| new_title | No | For updates only. If you wish to change the name of the queue, it is supplied in this argument |

**Returns**

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | The supplied queue name is not found |
| -2 | Cannot find the user name supplied |
| -3 | The new title is already used for another queue |
| ret_objid | Output - Returns the objid of the queue |

#### Examples

Create a new shared queue "Urgent" with all objects allowed. Assume the current user is the supervisor.

**Visual Basic:**
```
Dim ret_int As Integer
Dim queue_objid As Long

ret_int = fcinter.create_update_queue("Urgent", false, "A new queue", _
                                      1, 1, 1, 1, 1, 1, 1, 1, 1, 1, "", "")

If ret_int = 0 Then
  queue_objid = fcinter.ret_objid
End If
```

**JavaScript:**
```
var ret_int = fcinter.create_update_queue("Urgent", false, "A new queue",
                                      1, 1, 1, 1, 1, 1, 1, 1, 1, 1, "", "");

 if (ret_int == 0){ var queue_objid = fcinter.ret_objid; }
```

Update the previously created queue. Change the name and set it so that part requests cannot be dispatched to the queue (all other items stay the same). Clear the description. Change the name of it.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.create_update_queue("Urgent", false, "CLEAR", _
          -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, "", "Really Urgent")
```

**JavaScript:**
```
var ret_int = fcinter.create_update_queue("Urgent", false, "CLEAR",
              -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, "", "Really Urgent");
```
