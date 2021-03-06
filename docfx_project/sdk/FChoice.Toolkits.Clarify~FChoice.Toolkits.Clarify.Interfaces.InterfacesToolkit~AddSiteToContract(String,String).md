﻿### AddSiteToContract(String,String) Method

Identifier of the Contract to which the Site will be added.

Identifier of the Site to add to the Contract.

Adds a site to an existing Contract. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddSiteToContract( _
   ByVal _contractIDNum_ As String, _
   ByVal _siteIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AddSiteToContract( 
   string _contractIDNum_,
   string _siteIDNum_
)
```

#### Parameters

_contractIDNum_

Identifier of the Contract to which the Site will be added.

_siteIDNum_

Identifier of the Site to add to the Contract.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddSiteToContract.md)