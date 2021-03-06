﻿### AllowDuplicateContact Property

Should the [CreateContact](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateContact.md) or [UpdateContact](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateContact.md) methods allow the creation or update of a Contact with the same first name, last name, telephone number as another Contact in the system.

#### Syntax

```vbnet
'Declaration

Public Property AllowDuplicateContact As Boolean
```

```csharp
public bool AllowDuplicateContact {get; set;}
```

#### Property Value

A [Void](https://msdn.microsoft.com/en-us/library/system.void.aspx) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.
A [Boolean](https://msdn.microsoft.com/en-us/library/system.boolean.aspx) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

Default value is **false.**

Please note this only works if the unique index (defined by default in Clarify) to be non-unique.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkitBase Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkitBase.md)  
[InterfacesToolkitBase Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkitBase_members.md)