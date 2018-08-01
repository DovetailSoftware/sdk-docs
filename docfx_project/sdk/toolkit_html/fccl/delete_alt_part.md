delete_alt_part
-----------------

```
Public Function delete_alt_part(ByVal part_num As String, _
                                ByVal rev As String, ByVal domain As String, _
                                ByVal alt_part As String, ByVal alt_rev As String, _
                                ByVal alt_domain As String) As Integer
```

#### Description

This API causes the second part/revision listed to be removed as an alternate part for the first.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| part_num | Yes | The primary part number |
| rev | Yes | The primary part revision |
| domain | Yes | The domain of the primary part |
| alt_part | Yes | The part number of the alternate part |
| alt_rev | Yes | The revision of the alternate part |
| alt_domain | Yes | The domain of the alternate part |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Primary part number is missing |
| -2 | Primary domain is missing |
| -3 | Alternate part number is missing |
| -4 | Alternate domain is missing |
| -5 | Primary part/revision cannot be found |
| -6 | Alternate part/revision cannot be found |
| -7 | The second part is not an alternate part for the first |

#### Example

Remove WordPerfect 7.0 as an alternate part for MS Word 7.0.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.delete_alt_part("MS Word", "7.0", "Product", "WordPerfect", _
                              "7.0", "Product")
```

**JavaScript:**
```
var ret_int = fccl.delete_alt_part("MS Word", "7.0", "Product", "WordPerfect",
                              "7.0", "Product");
```