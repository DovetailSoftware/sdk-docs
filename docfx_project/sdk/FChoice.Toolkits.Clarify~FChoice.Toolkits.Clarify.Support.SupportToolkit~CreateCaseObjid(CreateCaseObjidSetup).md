### CreateCaseObjid(CreateCaseObjidSetup) Method

Setup object for API invocation.

Creates a new Case by using know Objids of dependencies to keep from making additional database round trips to look up the Objids. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateCaseObjid( _
   ByVal _setupParam_ CreateCaseObjidSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateCaseObjid( 
   CreateCaseObjidSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Case.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Case.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CreateCaseObjid.md)  
[CreateCaseObjidSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CreateCaseObjidSetup.md)