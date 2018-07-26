### AddInventoryLocationSetup Constructor

Name of the inventory location to add

The name of the Capital GL account with which this inventory location is to be associated

The identifier of the Site with which the inventory location is to be associated

The part authorization level for this inventory location

Initializes a new instance of the AddInventoryLocationSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _locationName_ As String, _
   ByVal _capitalGLAccount_ As String, _
   ByVal _siteIDNum_ As String, _
   ByVal _partAuthorizationLevel_ As PartAuthorizationLevel _
)
```

```csharp
[ConstructorIndexAttribute()]
public AddInventoryLocationSetup( 
   string _locationName_,
   string _capitalGLAccount_,
   string _siteIDNum_,
   PartAuthorizationLevel _partAuthorizationLevel_
)
```

#### Parameters

_locationName_

Name of the inventory location to add

_capitalGLAccount_

The name of the Capital GL account with which this inventory location is to be associated

_siteIDNum_

The identifier of the Site with which the inventory location is to be associated

_partAuthorizationLevel_

The part authorization level for this inventory location

[!include[Requirements](../partials/requirements.md)]

#### Reference

[AddInventoryLocationSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AddInventoryLocationSetup.md)  
[AddInventoryLocationSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AddInventoryLocationSetup_members.md)