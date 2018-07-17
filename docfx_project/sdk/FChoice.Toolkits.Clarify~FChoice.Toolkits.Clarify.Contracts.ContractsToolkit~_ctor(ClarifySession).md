     ContractsToolkit Constructor(ClarifySession)                                                   

fcSDK Documentation

ContractsToolkit Constructor(ClarifySession)

The session under which the toolkit APIs will be executed.

Initializes a new instance of the ContractsToolkit class using a [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Function New( _
   ByVal _session_ As [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) _
)

public ContractsToolkit( 
   [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) _session_
)

#### Parameters

_session_

The session under which the toolkit APIs will be executed.

Remarks

If the toolkit session was [created](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession(String,String,ClarifyLoginType).md) as a [Contact](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) session this property is required otherwise errors will result.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~_ctor.md)