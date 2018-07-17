     CreateCase(String,String,String,String) Method                                                   

fcSDK Documentation

CreateCase(String,String,String,String) Method

Site Identifier to which Site reported the Case.

Contact's first name.

Contact's last name.

Contact's phone number.

Creates a new Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateCase( _
   ByVal _siteIDNum_ As String, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateCase( 
   string _siteIDNum_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_
)

#### Parameters

_siteIDNum_

Site Identifier to which Site reported the Case.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Case.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Case.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CreateCase.md)