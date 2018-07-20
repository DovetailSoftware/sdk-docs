### LinkCaseToWorkaround(String,Int32) Method

Identifier of the Case to link to a Workaround

Objid of the Workaround the Case will be linked to

Link a Case to a Workaround. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function LinkCaseToWorkaround( _
   ByVal _caseIDNum_ As String, _
   ByVal _workaroundObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult LinkCaseToWorkaround( 
   string _caseIDNum_,
   int _workaroundObjid_
)
```

#### Parameters

_caseIDNum_

Identifier of the Case to link to a Workaround

_workaroundObjid_

Objid of the Workaround the Case will be linked to

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Case.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~LinkCaseToWorkaround.md)