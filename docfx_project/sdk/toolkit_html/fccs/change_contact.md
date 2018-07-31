change_contact
--------------

Public Function change_contact(ByVal case_id As String, _
                               ByVal f_name As String, _
                               ByVal l_name As String, _
                               ByVal phone_num As String, _
                               ByVal site_id As String, _
                               ByVal change_date As String, _
                               ByVal user_name As String, _
                               ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API allows for the changing of a contact and/or site for a case. Unlike the Clarify GUI (which changes contacts via contact roles), you may change the contact and/or site such that the contact for the case is not a contact at the site for the case. Since this is possible in the base GUI (by changing the contact's site after the contact/site are used for the case), the API allows this natively.

To use the API, you must specify the case to change, and then either a contact, or site (or both). In addition, the date/time of the change, as well as the user performing the change can be specified. Finally, the API can also genereate time bombs (for business rule notification).

The API changes the relations for the case. In addition, the case history and activity log are modified. If the contact is changed, the case phone and alternate phone are changed. If the site is changed, any related site_parts for the case are unrelated, as is any contract related to the case. All of this corresponds to actions taken by the base Clarify GUI.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| case_id | Yes | The case to change the contact/site for |
| first | No | First name of new contact |
| last | No | Last name of new contact |
| phone_num | No | Phone number of new contact |
| site_id | No | Site ID of new site |
| change_date | No | Date the contact/site was changed. If left blank, the current date/time is used |
| user_name | No | User making the change. If left blank, the current user is used |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             Cannot find the specified user

-3                                             Cannot find the CHNG CONTACT activity string

-4                                             Cannot find the MODIFY activity string

-5                                             Cannot find the specified contact

-6                                             Cannot find the specified site

-7                                             Neither a new contact nor new site was specified

-8                                             Case is currently closed

-9                                             Could not find a status for the specified case

-10                                           A new contact and/or site must be specified

-11                                           No employee record exists for the specified user

**Examples**

 Change contact for case number 'C154' to Joe Jackson. Don't change the site. The change is performed by the current user and is changed at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fccs.change_contact("C154", "Joe", "Jackson", "555-1212", "",

                                  "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.change_contact("C154", "Joe", "Jackson", "555-1212", "", _
                              "", "", True)

 Change contact and site for case number '2' at 10PM on November 23rd of 1997 to 'Mary Smith' at site '43'. Change should be logged as performed by Patty. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.change_contact("2", "Mary", "Smith", "555-5555", "43",

                                  "11/23/97 22:00:00", "patty", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.change_contact("2", "Mary", "Smith", "555-5555", "43", _
                              "11/23/97 22:00:00", "patty", False)