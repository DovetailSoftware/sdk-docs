     Queue Property (CreateCRSetup)                                                   

fcSDK Documentation

Queue Property (CreateCRSetup)

Queue where the CR will be dispatched.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property Queue As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string Queue {get; set;}

Remarks

If not set, the CR will be located in the user's default WipBin.

If set, a timebomb will be created for the Dispatch operation.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup.md)  
[CreateCRSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup_members.md)