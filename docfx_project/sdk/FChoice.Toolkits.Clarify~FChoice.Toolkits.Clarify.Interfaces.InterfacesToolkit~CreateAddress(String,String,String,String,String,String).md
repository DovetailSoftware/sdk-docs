### CreateAddress(String,String,String,String,String,String) Method

Address Line 1.

Address City.

Address State.

Address Zipcode.

Address Country

Address Timezone.

Creates a new Address. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateAddress( _
   ByVal _address1_ As String, _
   ByVal _city_ As String, _
   ByVal _state_ As String, _
   ByVal _zipCode_ As String, _
   ByVal _country_ As String, _
   ByVal _timeZone_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateAddress( 
   string _address1_,
   string _city_,
   string _state_,
   string _zipCode_,
   string _country_,
   string _timeZone_
)
```

#### Parameters

_address1_

Address Line 1.

_city_

Address City.

_state_

Address State.

_zipCode_

Address Zipcode.

_country_

Address Country

_timeZone_

Address Timezone.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Address.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateAddress.md)