### LogCaseEmail(String) Method

Identifier of the Case against which the email is being logged.

Creates an email log against a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function LogCaseEmail( _
   ByVal _caseIDNum_ As String _
) As LogCaseEmailResult
```

```csharp
public LogCaseEmailResult LogCaseEmail( 
   string _caseIDNum_
)
```

#### Parameters

_caseIDNum_

Identifier of the Case against which the email is being logged.

#### Return Value

The following values are populated in the LogCaseEmailResult object returned by the API method:

*   StatusChangeObjid \- The Objid of the StatusChange.
*   Objid \- The Objid of the Log.
*   CommitmentObjid \- The Objid of the Commitment.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmail.md)