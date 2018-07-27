### CreateTimeLog(CreateTimeLogSetup) Method

Setup object for API invocation.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateTimeLog( _
   ByVal _setupParam_ As CreateTimeLogSetup _
) As CreateTimeLogResult
```

```csharp
public CreateTimeLogResult CreateTimeLog( 
   CreateTimeLogSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the CreateTimeLogResult object returned by the API method:

*   OnsiteLogObjid \- The Objid of the OnsiteLog.
*   Objid \- The Objid of the TimeLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateTimeLog.md)  
[CreateTimeLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateTimeLogSetup.md)