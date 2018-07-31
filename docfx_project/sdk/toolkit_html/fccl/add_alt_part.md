add_alt_part
--------------

Public Function add_alt_part(ByVal part_num As String, ByVal rev As String, _
         ByVal domain As String, ByVal alt_part As String, _
                             ByVal alt_rev As String, ByVal alt_domain As String, _
                             ByVal is_reciprocal As Boolean) As Integer

**Description**

This API causes the second part/revision listed to become an alternate part of the first one listed. If the _is_reciprocal_ flag is set to True, then the first part/rev will also be added as an alternate of the second part/rev.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| part_num | Yes | The primary part number |
| rev | Yes | The primary part revision |
| domain | Yes | The domain of the primary part |
| alt_part | Yes | The part number of the alternate part |
| alt_rev | Yes | The revision of the alternate part |
| alt_domain | Yes | The domain of the alternate part |
| is_reciprocal | Yes | Should the first part/rev be made an alternate of the second part as well? (True), or not (False) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Primary part number is missing

-2                                             Primary domain is missing

-3                                             Alternate part number is missing

-4                                             Alternate domain is missing

-5                                             Primary part/revision cannot be found

-6                                             Alternate part/revision cannot be found

-7                                             The second part is already an alternate for the first

**Examples**

 Make WordPerfect 7.0 an alternate part for MS Word 7.0, but not the other way around.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_alt_part("MS Word", "7.0", "Product", "WordPerfect", _
                            "7.0", "Product", False)

**Javascript:**

var ret_int = fccl.add_alt_part("MS Word", "7.0", "Product", "WordPerfect",

                            "7.0", "Product", false);

 Do the same, but make the assignment reciprocal.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.add_alt_part("MS Word", "7.0", "Product", "WordPerfect", _
                            "7.0", "Product", True)

**Javascript:**

var ret_int = fccl.add_alt_part("MS Word", "7.0", "Product", "WordPerfect",

                            "7.0", "Product", true);