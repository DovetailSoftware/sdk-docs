     ErrorMessageID Property                                                   

ErrorMessageID Property

Gets the message identifier for this exception.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property ErrorMessageID As String

public string ErrorMessageID {get;}

#### Property Value

The message identifier for this exception.

Remarks

The error message identifier is used by FCExceptionBase to look up actual user-friendly, localized and/or implementation-customized messages. This is the key used to look up a resource string.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCExceptionBase Class](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
[FCExceptionBase Members](FChoice.Common~FChoice.Common.FCExceptionBase_members.md)