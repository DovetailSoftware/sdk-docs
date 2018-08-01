set_part_stocking_lev
-----------------------

```
Public Function set_part_stocking_lev(ByVal bin_name As String, _
                           ByVal location_name As String, ByVal queue_name As String, _
                           ByVal part_number As String, ByVal mod_level As String, _
                           ByVal domain_name As String, ByVal part_minimum As Integer, _
                           ByVal part_maximum As Integer, ByVal part_rol As Integer, _
                           ByVal part_roq As Integer, ByVal is_active As Boolean) As Integer
```

#### Description

This API creates a part restocking authorization level. The location, bin, part number/revision/domain must be specified, as well as the various levels and the reorder queue.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| bin_name | Yes | The bin for the restocking |
| location_name | Yes | The location for the bin |
| queue_name | Yes | The queue that the reorder part request will be dispatched to |
| part_number | Yes | The part to restock |
| mod_level | Yes | The revision to restock |
| domain_name | Yes | The domain for the part |
| part_minimum | Yes | Minimum quantity for bin |
| part_maximum | Yes | Maximum quantity for bin |
| part_rol | Yes | The level at which a reorder is triggered |
| part_roq | Yes | If a reorder happens, how many get reordered |
| is_active | Yes | Is this restocking entry active? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No Errors |
| -1 | Missing queue parameter |
| -2 | Missing location parameter |
| -3 | Missing part number |
| -4 | Part reorder level < minimum |
| -5 | Part reorder level > maximum |
| -6 | Part reorder level < 0 |
| -7 | Part reorder qty < 0 |
| -8 | Part minimum < 0 |
| -9 | Part maximum < 0 |
| -10 | Location does not exist |
| -11 | Bin does not exist for given location |
| -12 | Queue does not exist |
| -13 | Mod level does not exist |
| -16 | Part authorization record already exists |
| ret_objid | Output - Returns the objid of the \[newly created\] part stocking location |

#### Examples

Set a reorder for Bin 2 in Austin for the "CD Rom" part. Set levels and dispatch queue to "High".

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.set_part_stocking_lev("Bin 2", "Austin", "High", "CD Rom", "", _
                                         "Quantity", 2, 100, 10, 20, True)
```

**JavaScript:**
```
var ret_int = fccl.set_part_stocking_lev("Bin 2", "Austin", "High", 
		"CD Rom", "", "Quantity", 2, 100, 10, 20, True);
```