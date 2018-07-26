### ReopenCase(String) Method

Identifier of the Case being reopened.

Reopens the specified Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function ReopenCase( _
   ByVal _caseIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ReopenCase( 
   string _caseIDNum_
)
```

#### Parameters

_caseIDNum_

Identifier of the Case being reopened.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup~UserName.md) that reopens the Case becomes the new owner.

If the [WipBin](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup~WipBin.md) is not specified the Case is placed in the user's default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenCase.md)