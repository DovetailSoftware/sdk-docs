### Create Method (DataAccessSectionHandler)

The configuration settings in a corresponding parent configuration section.

The virtual path for which the configuration section handler computes configuration values. Normally this parameter is reserved and is a null reference (**Nothing** in Visual Basic).

The [System.Xml.XmlNode](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemxmlxmlnodeclasstopic.htm) that contains the configuration information to be handled. Provides direct access to the XML contents of the configuration section.

Creates a new configuration handler and adds it to the section handler collection.

Syntax

```vbnet
'Declaration

Public Function Create( _
   ByVal _parent_ As Object, _
   ByVal _configContext_ As Object, _
   ByVal _section_ As XmlNode _
) As Object
```

```csharp
public object Create (
   object _parent_,
   object _configContext_,
   XmlNode _section_
)
```

#### Parameters

_parent_

The configuration settings in a corresponding parent configuration section.

_configContext_

The virtual path for which the configuration section handler computes configuration values. Normally this parameter is reserved and is a null reference (**Nothing** in Visual Basic).

_section_

The [System.Xml.XmlNode](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemxmlxmlnodeclasstopic.htm) that contains the configuration information to be handled. Provides direct access to the XML contents of the configuration section.

#### Return Value

Always null (**Nothing** in Visual Basic). This method initializes [DbProviderFactory](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md) with the specified providers.

Remarks

This method should only be used by the .NET Configuration infrastructure. You should not call this method manually.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataAccessSectionHandler Class](FChoice.Common~FChoice.Common.Data.DataAccessSectionHandler.md)  
[DataAccessSectionHandler Members](FChoice.Common~FChoice.Common.Data.DataAccessSectionHandler_members.md)