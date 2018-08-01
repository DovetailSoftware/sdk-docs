mod_part_stocking_lev
-----------------------

```
Public Function mod_part_stocking_lev(ByVal bin_name As String, _
                           ByVal to_bin As String, ByVal location_name As String, _
                           ByVal queue_name As String, ByVal to_queue As String, _
                           ByVal part_number As String, ByVal mod_level As String, _
                           ByVal domain_name As String, ByVal part_minimum As Integer, _
                           ByVal part_maximum As Integer, ByVal part_rol As Integer, _
                           ByVal part_roq As Integer, ByVal is_active As Boolean) As Integer
```

#### Description

This API modifies an existing  part restocking authorization level. The location, bin, part number/revision/domain must be specified, as well as the various levels and the reorder queue. The _to_bin_ field is move the record to another bin, and the _to_queue_ field can be used to change the name of the queue.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| bin_name | Yes | The bin for the restocking |
| to_bin | No | The name of the bin to move the record to. If blank, no move occurs |
| location_name | Yes | The location for the bin |
| queue_name | Yes | The queue that the reorder part request will be dispatched to |
| to_queue | No | The new name of the dispatch queue. If blank, no change is made |
| part_number | Yes | The part to restock |
| mod_level | Yes | The revision to restock |
| domain_name | Yes | The domain for the part |
| part_minimum | Yes | Minimum quantity for bin. If no change is desired, set to -1 |
| part_maximum | Yes | Maximum quantity for bin. If no change is desired, set to -1 |
| part_rol | Yes | The level at which a reorder is triggered. If no change is desired, set to -1 |
| part_roq | Yes | If a reorder happens, how many get reordered. If no change is desired, set to -1 |
| is_active | Yes | Is this restocking entry active? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
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
| -14 | The specified "to_queue" does not exist |
| -15 | The specified "to_bin" does not exist for given location |
| -16 | The specified part stocking record does not exist |

#### Examples

Move the restock record from bin 2 to bin 3. Change the queue from high to low, and don't change the minimum or maximum.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.mod_part_stocking_lev("Bin 2", "Bin 3", "Austin", "High", _
                       "Low", "CD Rom", "", "Quantity", -1, -1, _
                       15, 2, True)
```

**JavaScript:**
```
var ret_int = fccl.mod_part_stocking_lev("Bin 2", "Bin 3", "Austin", "High",
                       "Low", "CD Rom", "", "Quantity", -1, -1,
                       15, 2, True);
```