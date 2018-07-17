     PickSetup Constructor(String,String\[\])                                                   

fcSDK Documentation

PickSetup Constructor(String,String\[\])

Part Request Detail Identifier

The serial number(s) of the part(s) to pick (hard pick)

Initializes a new instance of the PickSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal ParamArray _serialNumbers_() As String _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public PickSetup( 
   string _partRequestDetailIDNum_,
   params string\[\] _serialNumbers_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_serialNumbers_

The serial number(s) of the part(s) to pick (hard pick)

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[PickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup.md)  
[PickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup~_ctor.md)