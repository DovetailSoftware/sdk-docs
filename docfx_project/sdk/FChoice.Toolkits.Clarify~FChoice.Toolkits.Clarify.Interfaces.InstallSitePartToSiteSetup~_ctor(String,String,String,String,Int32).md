### InstallSitePartToSiteSetup Constructor(String,String,String,String,Int32)

Identifier of the Site where the part will be installed.

Part Number of the part to install

Part Revision of the part to install

Domain of the part to install

The number of units to install

Initializes a new instance of the InstallSitePartToSiteSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _siteIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _quantity_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public InstallSitePartToSiteSetup( 
   string _siteIDNum_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   int _quantity_
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

_quantity_

The number of units to install

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InstallSitePartToSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToSiteSetup.md)  
[InstallSitePartToSiteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToSiteSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToSiteSetup~_ctor.md)