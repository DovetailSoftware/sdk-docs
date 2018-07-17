     ParentBinObjid Property (CreateProductBinSetup)                                                   

fcSDK Documentation

ParentBinObjid Property (CreateProductBinSetup)

Set this value if you wish the new Bin to be a child of this Parent Bin.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property ParentBinObjid As [Integer](#)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [int](#) ParentBinObjid {get; set;}

Remarks

The SiteIDNum of the parent bin must match the [SiteIDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~SiteIDNum.md) of this bin.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateProductBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup.md)  
[CreateProductBinSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup_members.md)