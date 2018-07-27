### MoveQuote(String,String) Method

Quote Identifier.

The new WipBin into which the Quote is to be moved.

Move the Quote from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function MoveQuote( _
   ByVal _quoteIDNum_ As String, _
   ByVal _newWipBin_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult MoveQuote( 
   string _quoteIDNum_,
   string _newWipBin_
)
```

#### Parameters

_quoteIDNum_

Quote Identifier.

_newWipBin_

The new WipBin into which the Quote is to be moved.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the Quote, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~MoveQuote.md)