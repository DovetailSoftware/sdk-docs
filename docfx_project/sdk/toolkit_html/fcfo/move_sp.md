move_sp
-------

Public Function move_sp(ByVal sp_objid As Long,

                  ByVal move_date As String, ByVal parent_sp_objid As Long, _
                  ByVal site_id As String, ByVal parent_bin_objid As Long, _
                  ByVal add_activity As Boolean, ByVal user_name As String, _
                  ByVal install_and_move As Boolean) As Integer

**Description**

This API moves an existing site_part from one location to another within the Clarify site configuration. The site part to be moved must be current (not de-installed). The site_part can be moved to one (and only one!) of three places:

 To the top-level at a site. Specify the site_id only.

 Underneath another part. Specify the parent site_part objid only.

 In a product bin. Specify the bin objid only.

Only one of the three locations may be specified. In addition, the API allows for the generation of the three standard activity log entries, and the user performing the move may be specified.

When a site_part is moved, all sub-site_parts underneath it are also moved.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| sp_objid | Yes | The OBJID of the site_part to be moved |
| move_date | No | The date that the site_part is being moved |
| parent_sp_objid | No | The OBJID of the site_part under which you wish to move the site_part. Only specified if the site_part is to be moved under another site_part |
| site_id | No | The site ID of the site to which you will move the site_part. Only specified for  moves to the top-level of a site |
| parent_bin_objid | No | The bin objid to move the site_part to. Only specified if the site_part is to be placed in a bin |
| add_activity | Yes | Should activity log records be created, or not? |
| user_name | No | The user who moved the site_part. If left blank, the current user performs the move |
| install_and_move | Yes | Should the activity be listed as "Install (Move)" (True), or just "Move"  (False)? |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Both a parent_site_part objid and a parent_bin_objid specified

-2                                             Both a parent_site_part objid and a site_id specified

-3                                             Both a site_id and parent_bin_objid specified

-4                                             Cannot find specified user in database

-5                                             Site part specified is not found in the database

-6                                             Parent site_part specified is not found in the database

-7                                             Install site specified is not found in the database

-8                                             Parent bin specified is not found in the database

-9                                             Cannot find the 'Move'/'Install(Move)' activity string with rank = 3700/11900

-10                                           Site_part to be moved is currently de-installed

-11                                           Cannot move the part (which is denoted only to be installed under another part) to the

top-level of the site or under a bin

-12                                           Cannot move the part (which is denoted only to be installed at the site or under a bin) under

another part

-13                                           No site part OBJID was specified

**Examples**

 Move site_part 268435457 to the top level of site "4". Generate activity logs. Sam performs the move.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.move_sp(268435457, 0, "4", 0, True, "sam", False)

**JavaScript:**

var ret_int = fcfo.move_sp(268435457, 0, "4", 0, true, "sam", false);

 Move the same part under site_part 268435555. Don't generate activities, and use the default user.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.move_sp(268435457, 268435555, "", 0, False, "", False)

**JavaScript:**

var ret_int = fcfo.move_sp(268435457, 268435555, "", 0, false, "", false);