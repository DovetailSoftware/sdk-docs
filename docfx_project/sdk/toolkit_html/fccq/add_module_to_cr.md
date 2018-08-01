add_module_to_cr
------------------

```
Public Function add_module_to_cr(ByVal fix_objid As Long, _
   Byval file As String, _
                                 ByVal rev As String) As Integer
```

#### Description

This API allows for adding a module (file name and revision from a source control system) to the list of modules fixed for a given fix of a CR. The fix_objid must be the objid of a specific fix_bug record.  No checking is performed to validate that the file/revision is valid in the source control system.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| fix_objid | Yes | The objid of the fix_bug record |
| file | Yes | Name of the file fixed |
| rev | No | Revision of file fixed |

**Returns**

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified fix bug record |
| -2 | A fixed module file was not provided |

#### Examples

Add file 'foo.c', revision 3.32 to a specific fix_bug record.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.add_module_to_cr(268435666, "foo.c", "3.32")
```

**JavaScript:**
```
var ret_int = fccq.add_module_to_cr(268435666, "foo.c", "3.32");
```