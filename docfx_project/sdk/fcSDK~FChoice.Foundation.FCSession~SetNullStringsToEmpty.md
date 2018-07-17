     SetNullStringsToEmpty Property (FCSession)                                                   

fcSDK Documentation

SetNullStringsToEmpty Property (FCSession)

Sets whether or not newly created generic objects will convert a null reference (**Nothing** in Visual Basic) to empty strings.

Syntax

```vbnet
```csharp

'Declaration
 

Public Property SetNullStringsToEmpty As Boolean

public bool SetNullStringsToEmpty {get; set;}

#### Property Value

Sets whether or not newly created generic objects will convert a null reference (**Nothing** in Visual Basic) to empty strings.

Remarks

This setting only affects Oracle **DbProviders**.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)