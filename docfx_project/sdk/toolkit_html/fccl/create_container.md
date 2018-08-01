create_container
----------------

```
Public Function create_container(ByVal cont_name As String, _
                                 ByVal the_loc As String, ByVal bin_name As String, _
                                 ByVal parent_cont As String) As Integer
```

#### Description

This API creates a new container object. It will be installed at the specified location, either in the bin provided, or under the container specified.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cont_name | Yes | Name of the container to create |
| the_loc | No | Location to create at (if under a bin) |
| bin_name | No | Bin to create the container in |
| parent_cont | No | Parent container name |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot specify both a bin name and container name |
| -2 | Container name is already used |
| -3 | Cannot find the specified parent container |
| -4 | Parent container is currently sealed |
| -5 | Cannot find the specified inventory location |
| -6 | Cannot find the specified bin |
| ret_objid | Output - Returns the objid of the newly created container |

#### Examples

Create a new container, Joe at Austin, Bin 1.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.create_container("Joe", "Austin", "Bin 1", "")

**Javascript:**

var ret_int = fccl.create_container("Joe", "Austin", "Bin 1", "");

 Create a new container, Joe under container Fred.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.create_container("Joe", "", "", "Fred")

**Javascript:**

var ret_int = fccl.create_container("Joe", "", "", "Fred");