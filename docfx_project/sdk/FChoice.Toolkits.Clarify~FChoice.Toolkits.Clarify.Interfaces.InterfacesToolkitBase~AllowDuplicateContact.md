     AllowDuplicateContact Property                                                   

fcSDK Documentation

AllowDuplicateContact Property

Should the [CreateContact](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateContact.md) or [UpdateContact](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateContact.md) methods allow the creation or update of a Contact with the same first name, last name, telephone number as another Contact in the system.

Syntax

```vbnet
```csharp

'Declaration
 

Public Property AllowDuplicateContact As Boolean

public bool AllowDuplicateContact {get; set;}

#### Property Value

A [Boolean](mscorlib~System.Boolean.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.  
A [Void](mscorlib~System.Void.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.A [Boolean](mscorlib~System.Boolean.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Default value is **false.**

Please note this only works if the unique index (defined by default in Clarify) to be non-unique.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkitBase Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkitBase.md)  
[InterfacesToolkitBase Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkitBase_members.md)