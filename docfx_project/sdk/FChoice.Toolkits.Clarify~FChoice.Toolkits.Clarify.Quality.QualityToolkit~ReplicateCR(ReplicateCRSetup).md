     ReplicateCR(ReplicateCRSetup) Method                                                   

fcSDK Documentation

ReplicateCR(ReplicateCRSetup) Method

Setup object for API invocation.

Replicate a CR. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ReplicateCR( _
   ByVal _setupParam_ As [ReplicateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ReplicateCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReplicateCR( 
   [ReplicateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ReplicateCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the CR.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the CR.

Remarks

The new CR is an exact copy of the original with the following exceptions:

1.  It has a new unique identifier for it.
2.  The CR history has next text added to show the start and end of the replicated CR history.
3.  A new activity log entry is added to show this CR is replicated. Also, an activity log entry is also added to the original CR to note that it has been replicated.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ReplicateCR.md)  
[ReplicateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ReplicateCRSetup.md)