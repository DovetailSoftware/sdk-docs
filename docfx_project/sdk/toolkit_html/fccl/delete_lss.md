delete_lss
----------

```
Public Function delete_lss(ByVal site_id As String, ByVal loc_name As String) As Integer
```

#### Description

This API is used to remove the relationship between a site and a location servicing it. All of the other locations that service this site will have their ranks changed as necessary.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| site_id | Yes | Name of the site to be serviced |
| loc_name | Yes | Name of the servicing location |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Site parameter value missing |
| -2 | Location parameter value missing |
| -3 | Invalid edit_type (not 0, 1, or 2). Internal error - should never be seen |
| -4 | Servicing record does not exist |
| -5 | No change is needed for this rank |
| -6 | The specified site was not found |
| -7 | The specified location not found |

#### Examples

Austin should not service site 1 any more.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.delete_lss("1", "Austin")
```

**JavaScript:**
```
var ret_int = fccl.delete_lss("1", "Austin");
```

Houston shouldn't service site 1 either.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.delete_lss("1", "Houston")
```

**JavaScript:**
```
var ret_int = fccl.delete_lss("1", "Houston");
```