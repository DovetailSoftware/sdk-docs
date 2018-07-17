     OnlyOwner Property (UpdateCaseSetup)                                                   

fcSDK Documentation

OnlyOwner Property (UpdateCaseSetup)

Specifies if only the owner should be allow to modify the Case.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property OnlyOwner As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool OnlyOwner {get; set;}

Remarks

If the [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup~UserName.md) is not the current owner of the Case and this flag is **true** then the Update will not happen.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup.md)  
[UpdateCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup_members.md)