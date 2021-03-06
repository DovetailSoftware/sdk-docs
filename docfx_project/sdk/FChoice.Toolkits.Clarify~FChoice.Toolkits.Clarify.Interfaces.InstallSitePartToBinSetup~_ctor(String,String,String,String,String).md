﻿### InstallSitePartToBinSetup Constructor(String,String,String,String,String)

Identifier of the Site where the part will be installed.

Part Number of the part to install

Part Revision of the part to install

Domain of the part to install

Serial number of the part installed

Initializes a new instance of the InstallSitePartToBinSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _siteIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _serialNumber_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public InstallSitePartToBinSetup( 
   string _siteIDNum_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   string _serialNumber_
)
```

#### Parameters

_siteIDNum_

Identifier of the Site where the part will be installed.

_partNumber_

Part Number of the part to install

_partRevision_

Part Revision of the part to install

_partDomain_

Domain of the part to install

_serialNumber_

Serial number of the part installed

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InstallSitePartToBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToBinSetup.md)  
[InstallSitePartToBinSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToBinSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToBinSetup~_ctor.md)