### ReinstallSitePartToPartSetup Constructor

Objid of the Site Part being re-installed

Identifier of the Site where the Site Part will be re-installed

Objid of the parent Site Part this Part will be re-installed under.

Initializes a new instance of the ReinstallSitePartToPartSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _sitePartObjid_ As Integer, _
   ByVal _siteIDNum_ As String, _
   ByVal _parentSitePartObjid_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public ReinstallSitePartToPartSetup( 
   int _sitePartObjid_,
   string _siteIDNum_,
   int _parentSitePartObjid_
)
```

#### Parameters

_sitePartObjid_

Objid of the Site Part being re-installed

_siteIDNum_

Identifier of the Site where the Site Part will be re-installed

_parentSitePartObjid_

Objid of the parent Site Part this Part will be re-installed under.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ReinstallSitePartToPartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.ReinstallSitePartToPartSetup.md)  
[ReinstallSitePartToPartSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.ReinstallSitePartToPartSetup_members.md)