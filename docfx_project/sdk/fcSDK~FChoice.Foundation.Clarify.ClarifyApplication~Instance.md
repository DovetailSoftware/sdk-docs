     Instance Property (ClarifyApplication)                                                   

fcSDK Documentation

Instance Property (ClarifyApplication)

Returns the singleton instance of ClarifyApplication if initialized.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared ReadOnly Property Instance As [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)

public static [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) Instance {get;}

#### Property Value

The singleton instance of ClarifyApplication if initialized.

Exceptions

| Exception | Description |
| --- | --- |
| [FoundationException](fcSDK~FChoice.Foundation.FoundationException.md) | The application is not yet initialized. Call ClarifyApplication.Initialize first. |

Remarks

If not already initialized, an exception will be thrown. First call [Initialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)