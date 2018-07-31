reinstall_sp
------------

Public Function reinstall_sp(ByVal sp_objid As Long, _
                  ByVal site_id As String, ByVal parent_bin_objid As Long, _
                  ByVal parent_sp_objid As Long, ByVal user_name As String, _
                  ByVal reinst_date As String, ByVal add_activity As Boolean, _
                  ByVal use_install As Boolean) As Integer

**Description**

This API can be used to re-install a site part (and the sub-parts installed underneath it) that have been deinstalled from a site in Clarify. The objid of the site_part to be re-installed is specified, as well as the site_id of the site to install it at. If the site_part is to be reinstalled in a bin, the bin's objid is specified. If it is to be installed under another part, the parent part's objid is specified. If the site_part is to be installed at the top-level of the site, neither objid is specified.

In addition, the user performing the action, and the time of the action can be specified, as well as if activity logs should be generated, or not. Finally, a flag allows the activities to be either "Re-install" or just "Install"

#### Parameters
**Parameter Name**                **Required?**             **Description**

sp_objid                                Yes                         OBJID for the site_part to be re-installed

site_id                                    Yes                         The site to reinstall the site_part at. Note that this does not have to be

                                                                                the same as the site where it was de-installed

parent_bin_objid                 No                           The objid of the bin to install the site_part in (if one is used)

parent_sp_objid                   No                           The objid of the site_part to re-install the site_part under. If the site_part

                                                                                is not to be installed under another site_part, use a value of 0

user_name                             No                           Who performed the re-install? If blank, the current user is used

reinst_date                            No                           When was the re-installation? If blank, the current time is used

add_activity                          Yes                         Should activity log entries be generated?

use_install                             Yes                         Should the activity string be "Install" (True), or "Re-installed" (False).

                                                                                This flag should almost always = False

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             The specified site_part is not in the database

-2                                             The site_part is not de-installed

-3                                             The specified site is not found

-4                                             The specified user is not found

-5                                             Cannot find the 'Install'/'Re-Install' activity string with rank = 3600/5900

-6                                             Cannot find the specified parent bin

-7                                             Cannot find the specified parent site_part

-8                                             Cannot re-install to both a bin and a parent site_part

-9                                             Cannot install sub_parts at the top level of a site (or in a bin)

-10                                           Cannot install top-level only parts under a parent site_part

-11                                           Cannot find the current deinstall_rip bin

-12                                           Cannot find the old (deinstalled) site if different

-13                                           A site objid must be specified

**Examples**

 Joe reinstalled a site_part to the top level of site "2" on March 15, 1998, at noon. Add activities, and consider it a re-install action.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcfo.reinstall_sp(268435444, "2", 0, 0, "Joe", _
 "3/1/98 12:00:00", True, False)

**JavaScript:**

var ret_int = fcfo.reinstall_sp(268435444, "2", 0, 0, "Joe",

 "3/1/98 12:00:00", true, false);

 The current user re-installs a site_part to site "S1" under a bin. Do not generate activity log entries.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcfo.reinstall_sp(268435457, "S1", 268435466, 0, "", "", _
                             False, False)

**JavaScript:**

var ret_int = fcfo.reinstall_sp(268435457, "S1", 268435466, 0, "", "",

                                false, false);