     CreateCR(CreateCRSetup,IDbTransaction) Method                                                   

fcSDK Documentation

CreateCR(CreateCRSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Create a new Change Request (CR). This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateCR( _
   ByVal _setupParam_ As [CreateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateCR( 
   [CreateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Unless a [Queue](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup~Queue.md) is specified the CR is located in the owners default WipBin.  

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CreateCR.md)