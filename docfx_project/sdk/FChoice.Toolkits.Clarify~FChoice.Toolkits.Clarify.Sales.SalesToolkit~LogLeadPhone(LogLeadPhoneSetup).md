### LogLeadPhone(LogLeadPhoneSetup) Method

Setup object for API invocation.

Log a phone call for a Lead. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function LogLeadPhone( _
   ByVal _setupParam_ As [LogLeadPhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.LogLeadPhoneSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogLeadPhone( 
   [LogLeadPhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.LogLeadPhoneSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PhoneLog.

Remarks

The objid of the lead must be specified (since no other information on the lead is unique), and the description (phone text).  A contact for the log must be specified. If the lead is also the contact (and not a real contact), then leave the first, last, and phone fields blank, and this will use the lead as the contact. The length of the phone call (in seconds) must be supplied.

There are a variety of optional items that can be set, including the action type of the call, when the call started, and who logged the call.

The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~LogLeadPhone.md)  
[LogLeadPhoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.LogLeadPhoneSetup.md)