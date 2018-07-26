### InstallSitePartToSite(InstallSitePartToSiteSetup) Method

Setup object for API invocation.

Install a Site Part under a Site. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function InstallSitePartToSite( _
   ByVal _setupParam_ InstallSitePartToSiteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult InstallSitePartToSite( 
   InstallSitePartToSiteSetup _setupParam_
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~InstallSitePartToSite.md)  
[InstallSitePartToSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToSiteSetup.md)