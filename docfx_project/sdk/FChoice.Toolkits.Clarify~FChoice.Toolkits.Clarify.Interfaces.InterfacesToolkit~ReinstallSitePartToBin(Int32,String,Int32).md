     ReinstallSitePartToBin(Int32,String,Int32) Method                                                   

fcSDK Documentation

ReinstallSitePartToBin(Int32,String,Int32) Method

Objid of the Site Part being re-installed

Identifier of the Site where the Site Part will be re-installed

Objid of the parent Bin this Part will be re-installed under.

Re-Install a Site Part under a Product Bin. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ReinstallSitePartToBin( _
   ByVal _sitePartObjid_ As [Integer](#), _
   ByVal _siteIDNum_ As String, _
   ByVal _parentBinObjid_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReinstallSitePartToBin( 
   [int](#) _sitePartObjid_,
   string _siteIDNum_,
   [int](#) _parentBinObjid_
)

#### Parameters

_sitePartObjid_

Objid of the Site Part being re-installed

_siteIDNum_

Identifier of the Site where the Site Part will be re-installed

_parentBinObjid_

Objid of the parent Bin this Part will be re-installed under.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~ReinstallSitePartToBin.md)