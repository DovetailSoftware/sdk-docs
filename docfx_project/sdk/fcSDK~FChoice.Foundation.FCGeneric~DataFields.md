### DataFields Property (FCGeneric)

Collection of data fields that will be returned when [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) is invoked. If no fields are selected all fields are returned.

#### Syntax

```vbnet
'Declaration

Public ReadOnly Property DataFields As DataFieldNameCollection
```

```csharp
public DataFieldNameCollection DataFields {get;}
```

#### Property Value

Collection of data fields that will be returned when [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) is invoked.

#### Remarks

To add a field to be selected during Query call the [AddRange](fcSDK~FChoice.Foundation.DataFieldNameCollection~AddRange.md) method.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)