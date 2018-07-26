### InstallSitePartToBin(InstallSitePartToBinSetup) Method

Setup object for API invocation.

Install a Site Part under a Product Bin. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function InstallSitePartToBin( _
   ByVal _setupParam_ InstallSitePartToBinSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult InstallSitePartToBin( 
   InstallSitePartToBinSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the SitePart.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~InstallSitePartToBin.md)  
[InstallSitePartToBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToBinSetup.md)