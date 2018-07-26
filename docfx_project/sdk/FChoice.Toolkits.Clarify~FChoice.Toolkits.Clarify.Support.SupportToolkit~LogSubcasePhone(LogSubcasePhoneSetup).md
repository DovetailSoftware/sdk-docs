### LogSubcasePhone(LogSubcasePhoneSetup) Method

Setup object for API invocation.

Creates a phone log against a Subcase. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcasePhone( _
   ByVal _setupParam_ As LogSubcasePhoneSetup _
) As LogSubcasePhoneResult
```

```csharp
public LogSubcasePhoneResult LogSubcasePhone( 
   LogSubcasePhoneSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the LogSubcasePhoneResult object returned by the API method:

*   Objid \- The Objid of the Log.
*   StatusChangeObjid \- The Objid of the StatusChange.
*   CommitmentObjid \- The Objid of the Commitment.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcasePhone.md)  
[LogSubcasePhoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup.md)