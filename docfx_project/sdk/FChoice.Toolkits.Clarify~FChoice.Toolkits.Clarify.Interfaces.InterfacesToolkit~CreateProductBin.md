### CreateProductBin Method

Create a Product Bin This overload takes a set of required parameters for the API.

Create a Product Bin

Overload List

| Overload | Description |
| --- | --- |
| [CreateProductBin(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateProductBin(String,String).md) | Create a Product Bin This overload takes a set of required parameters for the API.   |
| [CreateProductBin(CreateProductBinSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateProductBin(CreateProductBinSetup).md) | Create a Product Bin This overload takes a setup object.   |
| [CreateProductBin(CreateProductBinSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateProductBin(CreateProductBinSetup,IDbTransaction).md) | Create a Product Bin This overload takes a setup object and a database transaction.   |

Remarks

A unique [BinName](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~BinName.md) must be provided.

If the Bin being created exists under another Bin you need to set the [Parent BinObjd](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~ParentBinObjid.md) 

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[CreateProductBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup.md)