﻿### InstallSitePartToPart(InstallSitePartToPartSetup) Method

Setup object for API invocation.

Install a Site Part under another Site Part. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function InstallSitePartToPart( _
   ByVal _setupParam_ InstallSitePartToPartSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult InstallSitePartToPart( 
   InstallSitePartToPartSetup _setupParam_
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~InstallSitePartToPart.md)  
[InstallSitePartToPartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToPartSetup.md)