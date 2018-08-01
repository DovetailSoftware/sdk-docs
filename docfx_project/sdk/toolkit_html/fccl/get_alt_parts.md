get_alt_parts
---------------

```
Public Function get_alt_parts(ByVal part_num As String, _
                              ByVal domain_name As String, ByVal mod_level As String) _
                              As Integer
```

#### Description

This API builds a list of the alternate parts (table_partnum_view) for the specified part and revision, and sets the fccl property ret_string with the pipe-delimited list of parts.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| part_num | Yes | The part number |
| domain_name | Yes | The domain of the part |
| mod_level | Yes | The revision of the part |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| +1 | No alternate parts exist |
| -1 | No part number supplied |
| -2 | No domain supplied |
| -3 | Cannot locate the supplied part number |
| -4 | Cannot locate the supplied revision |
| ret_string | Output - Returns a pipe delimited list of alternate parts found |

#### Examples

Get the alternate parts for MS Word 7.0:

**Visual Basic:**
```
Dim ret_int As Integer
Dim part_list As String

ret_int = fccl.get_alt_parts("MS Word", "Product", "7.0") 

If ret_int = 0 Then
  part_list = fccl.ret_string
End If
```

**JavaScript:**
```
var ret_int = fccl.get_alt_parts("MS Word", "Product", "7.0");
If (ret_int == 0) { var part_list = fccl.ret_string; }
```