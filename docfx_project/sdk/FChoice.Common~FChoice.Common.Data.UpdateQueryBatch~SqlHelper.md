     SqlHelper Property                                                   

SqlHelper Property

Gets the instance of a [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) class that is used by this batch to manage parameters and execute statements

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property SqlHelper As [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md)

public [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) SqlHelper {get;}

#### Property Value

The instance of a [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) class that is used by this batch to manage parameters and execute statements

Remarks

While it is possible to change properties, add/remove parameters, and change providers and other properties on this instance, it could cause instability during the batching process and is not recommended.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)