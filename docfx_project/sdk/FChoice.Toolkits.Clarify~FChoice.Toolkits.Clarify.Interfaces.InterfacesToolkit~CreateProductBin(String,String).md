### CreateProductBin(String,String) Method

Name of the bin to create

Identifier of the site where the bin is created

Create a Product Bin This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateProductBin( _
   ByVal _binName_ As String, _
   ByVal _siteIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateProductBin( 
   string _binName_,
   string _siteIDNum_
)
```

#### Parameters

_binName_

Name of the bin to create

_siteIDNum_

Identifier of the site where the bin is created

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ProductBin.

Remarks

A unique [BinName](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~BinName.md) must be provided.

If the Bin being created exists under another Bin you need to set the [Parent BinObjd](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateProductBinSetup~ParentBinObjid.md) 

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateProductBin.md)