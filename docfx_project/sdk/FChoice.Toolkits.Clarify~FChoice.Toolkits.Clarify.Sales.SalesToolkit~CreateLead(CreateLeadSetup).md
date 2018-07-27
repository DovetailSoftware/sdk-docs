### CreateLead(CreateLeadSetup) Method

Setup object for API invocation.

Used to create a new Lead. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateLead( _
   ByVal _setupParam_ CreateLeadSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateLead( 
   CreateLeadSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Lead.

#### Remarks

For almost all of the data, it can be specified, or not.

The user who created the lead, and the date/time of the create can be specified. The API can also generate a time bomb (for business rules). Finally, additional fields may be set.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateLead.md)  
[CreateLeadSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateLeadSetup.md)