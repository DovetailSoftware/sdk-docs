### Transaction Property (UpdateQueryBatch)

Gets the transaction specified when this UpdateQueryBatch instance was created

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property Transaction As [IDbTransaction](#)

public [IDbTransaction](#) Transaction {get;}

#### Property Value

The transaction specified when this UpdateQueryBatch instance was created

Remarks

**IMPORTANT**: The UpdateQueryBatch does not commit or rollback the transaction instance. It is the responsibility of the caller to ensure that the transaction is properly set up and finished after the batch is executed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)