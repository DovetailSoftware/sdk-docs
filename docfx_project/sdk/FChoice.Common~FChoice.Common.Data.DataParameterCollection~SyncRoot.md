     SyncRoot Property (DataParameterCollection)                                                   

SyncRoot Property (DataParameterCollection)

Gets an object that can be used to synchronize access to this instance of the DataParameterCollection.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property SyncRoot As [Object](#)

public [object](#) SyncRoot {get;}

#### Property Value

An object that can be used to synchronize access to this instance of the DataParameterCollection.

Remarks

Enumerating through a collection is intrinsically not a thread-safe procedure. Even when a collection is synchronized, other threads could still modify the collection, which causes the enumerator to throw an exception. To guarantee thread safety during enumeration, you can either lock the collection during the entire enumeration or catch the exceptions resulting from changes made by other threads.

Lock on SyncRoot before enumerating through this collection to ensure thread safety.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)