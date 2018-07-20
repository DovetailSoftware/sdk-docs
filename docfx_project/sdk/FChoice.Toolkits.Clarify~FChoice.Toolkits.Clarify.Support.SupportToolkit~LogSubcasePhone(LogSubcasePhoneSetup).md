### LogSubcasePhone(LogSubcasePhoneSetup) Method

Setup object for API invocation.

Creates a phone log against a Subcase. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function LogSubcasePhone( _
   ByVal _setupParam_ As [LogSubcasePhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup.md) _
) As [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md)

public [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md) LogSubcasePhone( 
   [LogSubcasePhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult~Objid.md) \- The Objid of the Log.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult~StatusChangeObjid.md) \- The Objid of the StatusChange.
*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult~CommitmentObjid.md) \- The Objid of the Commitment.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~IsCommitmentToCustomer.md) properties

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcasePhone.md)  
[LogSubcasePhoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup.md)