     IsSynchronized Property (DataParameterCollection)                                                   

IsSynchronized Property (DataParameterCollection)

Retrieves a value indicating whether access to the DataParameterCollection is synchronized (thread-safe).

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property IsSynchronized As Boolean

public bool IsSynchronized {get;}

#### Property Value

This is always false. There is no synchronized implementation of the DataParameterCollection.

Enumerating through a collection is intrinsically not a thread-safe procedure. Even when a collection is synchronized, other threads could still modify the collection, which causes the enumerator to throw an exception. To guarantee thread safety during enumeration, you can either lock the collection during the entire enumeration or catch the exceptions resulting from changes made by other threads.

Remarks

False. This collection is always non-synchronized.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)