### CreateLead(String,String,String,LeadSiteType,String) Method

State for the lead.

Country for the lead.

Time zone for the lead.

The type of the site for the lead.

Name of the lead source.

Used to create a new Lead. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateLead( _
   ByVal _state_ As String, _
   ByVal _country_ As String, _
   ByVal _timeZone_ As String, _
   ByVal _siteType_ As LeadSiteType, _
   ByVal _leadSource_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateLead( 
   string _state_,
   string _country_,
   string _timeZone_,
   LeadSiteType _siteType_,
   string _leadSource_
)
```

#### Parameters

_state_

State for the lead.

_country_

Country for the lead.

_timeZone_

Time zone for the lead.

_siteType_

The type of the site for the lead.

_leadSource_

Name of the lead source.

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   Objid \- The Objid of the Lead.

#### Remarks

For almost all of the data, it can be specified, or not.

The user who created the lead, and the date/time of the create can be specified. The API can also generate a time bomb (for business rules). Finally, additional fields may be set.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateLead.md)