     Parameters Property (UpdateQueryBatch)                                                   

Parameters Property (UpdateQueryBatch)

Gets the collection of all parameters for all queries to be executed by this batch

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property Parameters As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)

public [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) Parameters {get;}

#### Property Value

The collection of all parameters for all queries to be executed by this batch or the parameters used by the last query executed during the last call to the [AddStatement Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~AddStatement.md) if the provider does not support batching.

Remarks

While the parameters in this collection can be manipulated, this could cause instability during the batching process and is not recommended.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)