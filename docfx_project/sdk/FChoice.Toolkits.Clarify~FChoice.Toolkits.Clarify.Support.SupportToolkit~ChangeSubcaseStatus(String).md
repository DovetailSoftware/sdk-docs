﻿### ChangeSubcaseStatus(String) Method

Subcase Identifier.

Changes the status of a Subcase. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangeSubcaseStatus( _
   ByVal _subcaseIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeSubcaseStatus( 
   string _subcaseIDNum_
)
```

#### Parameters

_subcaseIDNum_

Subcase Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Subcase may be opened or closed, but the status selected must be valid for the current condition. In other words, you cannot assign a Closed condition status to a Subcase that is currently Open.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeSubcaseStatus.md)