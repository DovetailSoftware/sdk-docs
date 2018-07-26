### LogSubcaseEmail(LogSubcaseEmailSetup) Method

Setup object for API invocation.

Creates an email log against a Subcase. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcaseEmail( _
   ByVal _setupParam_ As LogSubcaseEmailSetup _
) As LogSubcaseEmailResult
```

```csharp
public LogSubcaseEmailResult LogSubcaseEmail( 
   LogSubcaseEmailSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the LogSubcaseEmailResult object returned by the API method:

*   CommitmentObjid \- The Objid of the Commitment.
*   Objid \- The Objid of the Log.
*   StatusChangeObjid \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail.md)  
[LogSubcaseEmailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup.md)