     CommandText Property (UpdateQueryBatch)                                                   

CommandText Property (UpdateQueryBatch)

Gets the current command text that will be executed when the [Execute Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Execute.md) is called

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property CommandText As [StringBuilder](#)

public [StringBuilder](#) CommandText {get;}

#### Property Value

The current command text that will be executed when the [Execute Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Execute.md) is called or a concatenation of all statements that were executed during calls to the [AddStatement Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~AddStatement.md) if the provider does not support batching

Remarks

Calls to the [AddStatement Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~AddStatement.md) will modify the value of this property. Statements cannot be removed or changed once they are added. The batch must be discarded and rebuilt in order to change any of the statements.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)