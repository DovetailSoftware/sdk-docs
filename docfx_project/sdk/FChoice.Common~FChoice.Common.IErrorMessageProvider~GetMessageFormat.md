### GetMessageFormat Method

The message ID whose string value to load.

Called by [FCExceptionBase Class](FChoice.Common~FChoice.Common.FCExceptionBase.md) when a specific error message string resource is required.

Syntax

```vbnet
' Declaration

Function GetMessageFormat( _
   ByVal _messageId_ As String _
) As String

string GetMessageFormat( 
   string _messageId_
)

#### Parameters

_messageId_

The message ID whose string value to load.

#### Return Value

The value of the string resource for this message ID and current culture.

Remarks

If you wish to provide internationalized culture-specific error messages, use the [CultureInfo.CurrentCulture](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemGlobalizationCultureInfoClassCurrentCultureTopic.htm) property to determine which culture's resource to return.

**NOTE:** If a message string cannot be loaded for this message ID, simple return null (**Nothing** in Visual Basic) and an attempt will be made by [FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md) to load a default string in the default culture (en-US).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[IErrorMessageProvider Interface](FChoice.Common~FChoice.Common.IErrorMessageProvider.md)  
[IErrorMessageProvider Members](FChoice.Common~FChoice.Common.IErrorMessageProvider_members.md)  
[CultureInfo class](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemglobalizationcultureinfoclasstopic.htm)  
[Developing World-Ready Applications](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpcondesigningglobalapplications.htm)