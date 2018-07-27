### CreateTimeZone(String,String,String) Method

Timezone name

Fullname of the Timezone

Name of the Country the Timezone will belong to.

Creates a Time Zone and relates it to an existing Country. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateTimeZone( _
   ByVal _timeZone_ As String, _
   ByVal _fullName_ As String, _
   ByVal _country_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateTimeZone( 
   string _timeZone_,
   string _fullName_,
   string _country_
)
```

#### Parameters

_timeZone_

Timezone name

_fullName_

Fullname of the Timezone

_country_

Name of the Country the Timezone will belong to.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the TimeZone.

#### Remarks

If the Time Zone already exists it will be related to the [Country](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateTimeZoneSetup~Country.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateTimeZone.md)