### InterfacesToolkit Constructor(IFCApplication,IFCSession)

The compatibility application under which the toolkit APIs will be executed.

The compatibility session under which the toolkit APIs will be executed.

Initializes a new instance of the InterfacesToolkit class using a Compatibility application and session.

Syntax

```vbnet
'Declaration

Public Function New( _
   ByVal _application_ As IFCApplication, _
   ByVal _session_ As IFCSession _
)
```

```csharp
public InterfacesToolkit( 
   IFCApplication _application_,
   IFCSession _session_
)
```

#### Parameters

_application_

The compatibility application under which the toolkit APIs will be executed.

_session_

The compatibility session under which the toolkit APIs will be executed.

Remarks

If the toolkit session was [created](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession(String,String,ClarifyLoginType).md) as a Contact session this property is required otherwise errors will result.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~_ctor.md)