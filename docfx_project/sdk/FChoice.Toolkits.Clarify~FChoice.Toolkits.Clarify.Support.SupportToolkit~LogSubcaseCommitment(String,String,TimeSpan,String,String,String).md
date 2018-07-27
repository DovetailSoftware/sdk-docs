### LogSubcaseCommitment(String,String,TimeSpan,String,String,String) Method

Identifier of the Subcase against which the commitment is being logged.

Title of the commitment.

The length of time preceding the commitment expiration in which the owner will be warned. If not set, no prior warning is given.

Contact's first name.

Contact's last name.

Contact's phone number.

Creates a commitment against a Subcase. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcaseCommitment( _
   ByVal _subcaseIDNum_ As String, _
   ByVal _title_ As String, _
   ByVal _priorWarning_ As TimeSpan, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult LogSubcaseCommitment( 
   string _subcaseIDNum_,
   string _title_,
   TimeSpan _priorWarning_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_
)
```

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the commitment is being logged.

_title_

Title of the commitment.

_priorWarning_

The length of time preceding the commitment expiration in which the owner will be warned. If not set, no prior warning is given.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Log.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseCommitment.md)