﻿### AddWorkaround(Int32,String) Method

Objid of the Solution to receive the Workaround.

Text of the Workaround.

Add a new Workaround to an existing Solution. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddWorkaround( _
   ByVal _solutionObjid_ As Integer, _
   ByVal _workaround_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AddWorkaround( 
   int _solutionObjid_,
   string _workaround_
)
```

#### Parameters

_solutionObjid_

Objid of the Solution to receive the Workaround.

_workaround_

Text of the Workaround.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Workaround.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddWorkaround.md)