### DispatchFieldEngineer(DispatchFieldEngineerSetup) Method

Setup object for API invocation.

Dispatch the FieldEngineer to the specified queue. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function DispatchFieldEngineer( _
   ByVal _setupParam_ As [DispatchFieldEngineerSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DispatchFieldEngineerSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchFieldEngineer( 
   [DispatchFieldEngineerSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DispatchFieldEngineerSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Dispatch FE record.

Remarks

The FieldEngineer must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~DispatchFieldEngineer.md)  
[DispatchFieldEngineerSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DispatchFieldEngineerSetup.md)