# FCList Changes

ProgID
| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCFL.FCList | FCFLCompat.FCList |

## Interface Name, IID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| _FCList<br/>36574644-F9D9-4480-90F9-2001C3B1CAB8 | IFCList<br/>6AFFB191-74AD-4d5f-A2B5-2456A3F5AA9F |

## CoClass Name, CLSID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCList<br/>7BEBEADF-9B37-4BD4-9251-40055A5A00C1 | FCList<br/>007EE1DD-6614-4833-BB7F-2AB543B42CE9 |

## Changed Properties

The following properties have changed between FCFL.FCList and FCFLCompat.FCList.

| Changed Property | FCFL.FCList | FCFLCompat.FCList |
|:--- |:--- |:--- |
| Count | read/write | read-only |
Sorted | read/write | read-only |

## Changed Methods

The following methods have changed between FCFL.FCList and FCFLCompat.FCList.

| Changed Method | FCFL.FCList | FCFLCompat.FCList |
|:--- |:--- |:--- |
| AppendItem | Parameters are ByRef | Parameters are ByVal |
| Contains | Parameters are ByRef | Parameters are ByVal |
| FindFirstIndex | Parameters are ByRef | Parameters are ByVal |

## Deleted methods

The following methods are no longer available in FCFLCompat.FCList.

| Deleted Method |
|:--- |
| Concat |
| CopyList |
| Down |
| ListByIndex |
| PrintList |
| RemoveByIndex |
| ReplaceByIndex |
| Up |
