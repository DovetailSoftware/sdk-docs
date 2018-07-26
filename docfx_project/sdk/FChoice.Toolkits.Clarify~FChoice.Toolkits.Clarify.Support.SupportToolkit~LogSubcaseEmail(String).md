### LogSubcaseEmail(String) Method

Identifier of the Subcase against which the email is being logged.

Creates an email log against a Subcase. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcaseEmail( _
   ByVal _subcaseIDNum_ As String _
) As LogSubcaseEmailResult
```

```csharp
public LogSubcaseEmailResult LogSubcaseEmail( 
   string _subcaseIDNum_
)
```

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the email is being logged.

#### Return Value

The following values are populated in the LogSubcaseEmailResult object returned by the API method:

*   CommitmentObjid \- The Objid of the Commitment.
*   StatusChangeObjid \- The Objid of the StatusChange.
*   Objid \- The Objid of the Log.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail.md)