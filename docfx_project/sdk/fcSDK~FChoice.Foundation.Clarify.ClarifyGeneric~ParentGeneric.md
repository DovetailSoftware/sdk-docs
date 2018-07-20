### ParentGeneric Property (ClarifyGeneric)

Gets a reference to the parent [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) if this generic is a child

Syntax

```vbnet
'Declaration

Public ReadOnly Property ParentGeneric As ClarifyGeneric
```

```csharp
public ClarifyGeneric ParentGeneric {get;}
```

#### Property Value

A reference to the parent [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) if this is a child generic, otherwise a null reference (**Nothing** in Visual Basic) if this is a parent or an individual generic.

Remarks

For more examples and information on how to create parent/child generic hierarchies, see the [Traverse](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Traverse.md) and [TraverseFromParent](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~TraverseFromParent.md) methods.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)