     SupportToolkit Constructor(IFCApplication,IFCSession)                                                   

fcSDK Documentation

SupportToolkit Constructor(IFCApplication,IFCSession)

The compatibility application under which the toolkit APIs will be executed.

The compatibility session under which the toolkit APIs will be executed.

Initializes a new instance of the SupportToolkit class using a Compatibility application and session.

Syntax

```vbnet
```csharp

'Declaration
 

Public Function New( _
   ByVal _application_ As [IFCApplication](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCApplication.md), _
   ByVal _session_ As [IFCSession](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md) _
)

public SupportToolkit( 
   [IFCApplication](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCApplication.md) _application_,
   [IFCSession](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md) _session_
)

#### Parameters

_application_

The compatibility application under which the toolkit APIs will be executed.

_session_

The compatibility session under which the toolkit APIs will be executed.

Remarks

If the toolkit session was [created](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession(String,String,ClarifyLoginType).md) as a [Contact](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) session this property is required otherwise errors will result.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~_ctor.md)