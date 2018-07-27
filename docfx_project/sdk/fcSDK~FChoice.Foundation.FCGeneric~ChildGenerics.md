### ChildGenerics Property

Returns a dictionary (keyed by parent to child relation name) of child generics belonging to this **FCGeneric**.

#### Syntax

```vbnet
'Declaration

Public ReadOnly Property ChildGenerics As ICollection(Of FCGeneric)
```

```csharp
public ICollection<FCGeneric> ChildGenerics {get;}
```

#### Property Value

Returns a dictionary (keyed by parent to child relation name) of child generics belonging to this **FCGeneric**.

#### Remarks

Changes to the dictionary will have no effect on the **FCGeneric**.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)