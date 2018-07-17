     RawFilter Property                                                   

fcSDK Documentation

RawFilter Property

Sets an optional WHERE clause constraint. (**WARNING:** See remarks for potential security implications)

Syntax

```vbnet
```csharp

'Declaration
 

Public Property RawFilter As String

public string RawFilter {get; set;}

#### Property Value

Returns an optional WHERE clause constraint.

Remarks

**WARNING**: Setting this property can expose your application to SQL injection attacks. Please [read this best practices guide](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnnetsec/html/SecNetch12.asp) published by Microsoft.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)