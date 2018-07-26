### LogCasePhone(LogCasePhoneSetup) Method

Setup object for API invocation.

Creates a phone log against a Case. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function LogCasePhone( _
   ByVal _setupParam_ As LogCasePhoneSetup _
) As LogCasePhoneResult
```

```csharp
public LogCasePhoneResult LogCasePhone( 
   LogCasePhoneSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the LogCasePhoneResult object returned by the API method:

*   CommitmentObjid \- The Objid of the Commitment.
*   StatusChangeObjid \- The Objid of the StatusChange.
*   Objid \- The Objid of the Log.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCasePhone.md)  
[LogCasePhoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup.md)