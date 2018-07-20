### Initialize Method (IDbExtension)

The provider this extension is extending

The XML configuration specified for this extension in the application configuration file

Initialize is called by the DbProvider when loading extensions. This method allows extensions to have a chance to perform initialization and start-up tasks.

Syntax

```vbnet
' Declaration

Sub Initialize( _
   ByVal _provider_ As [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md), _
   ByVal _extensionConfig_ As [XmlNode](#) _
) 

void Initialize( 
   [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) _provider_,
   [XmlNode](#) _extensionConfig_
)

#### Parameters

_provider_

The provider this extension is extending

_extensionConfig_

The XML configuration specified for this extension in the application configuration file

[!include[Requirements](../partials/requirements.md)]



#### Reference

[IDbExtension Interface](FChoice.Common~FChoice.Common.Data.IDbExtension.md)  
[IDbExtension Members](FChoice.Common~FChoice.Common.Data.IDbExtension_members.md)