     DispatchFieldEngineer(DispatchFieldEngineerSetup,IDbTransaction) Method                                                   

fcSDK Documentation

DispatchFieldEngineer(DispatchFieldEngineerSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create a work order to dispatch a field engineer to a site. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchFieldEngineer( _
   ByVal _setupParam_ As [DispatchFieldEngineerSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DispatchFieldEngineerSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchFieldEngineer( 
   [DispatchFieldEngineerSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DispatchFieldEngineerSetup.md) _setupParam_,
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

The contact and site for the dispatch will be derived from the case/subcase. If this is not correct, the address for the site for the dispatch can be specified in the site id field. If some of the contact or site information need to be overridden, the phone and address fields are used to pass in the new information.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~DispatchFieldEngineer.md)