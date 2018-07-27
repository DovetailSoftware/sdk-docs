### LogLeadPhone(Int32,String,String,String,TimeSpan) Method

The objid of the lead for the phone log.

Contact's first name.

Contact's last name.

Contact's phone number.

Time that the phone call lasted.

Log a phone call for a Lead. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogLeadPhone( _
   ByVal _leadObjid_ As Integer, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String, _
   ByVal _duration_ As TimeSpan _
) As ToolkitResult
```

```csharp
public ToolkitResult LogLeadPhone( 
   int _leadObjid_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_,
   TimeSpan _duration_
)
```

#### Parameters

_leadObjid_

The objid of the lead for the phone log.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

_duration_

Time that the phone call lasted.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PhoneLog.

#### Remarks

The objid of the lead must be specified (since no other information on the lead is unique), and the description (phone text).  A contact for the log must be specified. If the lead is also the contact (and not a real contact), then leave the first, last, and phone fields blank, and this will use the lead as the contact. The length of the phone call (in seconds) must be supplied.

There are a variety of optional items that can be set, including the action type of the call, when the call started, and who logged the call.

The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~LogLeadPhone.md)