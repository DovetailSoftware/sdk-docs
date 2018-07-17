     TruncateStringFields Property (ClarifyApplication)                                                   

fcSDK Documentation

TruncateStringFields Property (ClarifyApplication)

Gets or sets whether or not to truncate string values if they are too large for the field or throw an error

Syntax

```vbnet
```csharp

'Declaration
 

Public Property TruncateStringFields As Boolean

public bool TruncateStringFields {get; set;}

#### Property Value

Whether or not to truncate string values if they are too large for the field or throw an error

Remarks

When setting a string value to a string field using [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md), this property will determine what to do if the value specified is longer than the allowable length for the field.

This is an inheritable property. New sessions created will inherit the value of this property.

Changes made to this property will not be reflected in already existing sessions.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)