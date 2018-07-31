create_update_wipbin
----------------------

Public Function create_update_wipbin(ByVal title As String, _
                                     ByVal new_title As String, _
                                     ByVal description As String, _
                                     ByVal user_name As String,_
                                     ByVal def_bin As Boolean) As Integer

**Description**

This API either creates or updates a WIPBIN. For a new wipbin, you must specify a title. The description is optional, as is the user name. You must specify if this WIPBIN will be the default wipbin, or not.

For updates, you must specify the title of the WIPBIN. You may change the name of the WIPBIN, or leave it as is. You may leave the description as is, clear it, or change it. As with inserts, you must specify if this WIPBIN is to be the default, or not.

#### Parameters
**Parameter Name**                **Required?**             **Description**

title                                         Yes                         Title of the WIPBIN. For inserts, it is the name of the new WIPBIN. For 

updates, this is the name of the WIPBIN to update

new_title                                No                           For updates only, the new name of the WIPBIN.  If blank, the name of the

WIPBIN is left as is

description                            No                           For inserts, the description of the WIPBIN. For updates it can contain a new

value of the description. If blank, the description is left as is. To clear the description, set it to "CLEAR"

user_name                             No                           User name of the user for whom the WIPBIN is created/updated. If blank,

the current user is used

def_bin                                  Yes                         Is this the default WIPBIN?

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No title provided

-2                                             The specified user name is not found

-3                                             The new title for the WIPBIN is already a WIPBIN title for the current user

ret_objid                                Output                   Returns the objid of the wipbin

**Examples**

 Create a new WIPBIN with a name of "Important" and a description. Create it for "Gary", and make it the default WIPBIN.

**Visual Basic:**

Dim ret_int      As Integer

Dim wipbin_objid As Long

ret_int = fcinter.create_update_wipbin("Important", "",_
                                       "A description.", "gary", true)

 If ret_int = 0 Then

      wipbin_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_update_wipbin("Important", "",

                                       "A description.", "gary", true);

 if (ret_int == 0){ var wipbin_objid = fcinter.ret_objid; }

 Update that WIPBIN. Change the name, and clear the description. Don't make it the default WIPBIN.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcinter.create_update_wipbin("Important", "Important Issues", _
            "CLEAR", "", false)

**Javascript:**

var ret_int = fcinter.create_update_wipbin("Important", "Important Issues",

"CLEAR", "", false);