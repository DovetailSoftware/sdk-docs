### CreateProductBin(CreateProductBinSetup) Method

Setup object for API invocation.

Create a Product Bin This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateProductBin( _
   ByVal _setupParam_ As [CreateProductBinSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateProductBin( 
   [CreateProductBinSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ProductBin.

Remarks

A unique [BinName](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~BinName.md) must be provided.

If the Bin being created exists under another Bin you need to set the [Parent BinObjd](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~ParentBinObjid.md) 

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateProductBin.md)  
[CreateProductBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup.md)