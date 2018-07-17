     Provider Property (UpdateQueryBatch)                                                   

Provider Property (UpdateQueryBatch)

Gets the provider that this batch is using

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property Provider As [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)

public [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) Provider {get;}

#### Property Value

The provider that this batch is using

Remarks

This value is read-only to prevent changing providers in the middle of a batch process. Note that the provider on the [SqlHelper Property](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~SqlHelper.md) can be changed. This might have adverse effects on the batching process and is not recommended.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)