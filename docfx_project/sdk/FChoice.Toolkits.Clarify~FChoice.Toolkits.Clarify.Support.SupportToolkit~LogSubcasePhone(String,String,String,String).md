### LogSubcasePhone(String,String,String,String) Method

Identifier of the Subcase against which the phone note is being logged.

Contact's first name.

Contact's last name.

Contact's phone number.

Creates a phone log against a Subcase. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcasePhone( _
   ByVal _subcaseIDNum_ As String, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
) As LogSubcasePhoneResult
```

```csharp
public LogSubcasePhoneResult LogSubcasePhone( 
   string _subcaseIDNum_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_
)
```

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the phone note is being logged.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

#### Return Value

The following values are populated in the LogSubcasePhoneResult object returned by the API method:

*   Objid \- The Objid of the Log.
*   CommitmentObjid \- The Objid of the Commitment.
*   StatusChangeObjid \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcasePhone.md)