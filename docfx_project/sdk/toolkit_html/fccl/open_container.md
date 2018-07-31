open_container
--------------

Public Function open_container(ByVal cont_name As String) As Integer

**Description**

This API opens an existing (sealed) container.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| cont_name | Yes | The container to open |

**Returns**

**Value**                **Meaning**

0                                      No errors

-1                                             Cannot find the container

-2                                             The container is already open

-3                                             The parent container is currently sealed

**Examples**

 Open container Fred.

**Visual Basic:**

 Dim ret_int As Integer

   ret_int = fccl. open_container("Fred")

**Javascript:**

   var ret_int = fccl. open_container("Fred");