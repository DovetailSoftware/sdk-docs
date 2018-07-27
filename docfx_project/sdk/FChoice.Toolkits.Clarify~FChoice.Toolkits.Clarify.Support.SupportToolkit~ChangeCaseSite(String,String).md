### ChangeCaseSite(String,String) Method

Case Identifier.

Site Identifier.

Changes the Site of a Case. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangeCaseSite( _
   ByVal _caseIDNum_ As String, _
   ByVal _siteIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeCaseSite( 
   string _caseIDNum_,
   string _siteIDNum_
)
```

#### Parameters

_caseIDNum_

Case Identifier.

_siteIDNum_

Site Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

Any related Site Parts and Contracts for the Case are unrelated.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseSite.md)