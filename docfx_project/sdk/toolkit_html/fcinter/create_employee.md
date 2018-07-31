create_employee
---------------

create_employee_list
----------------------

Public Function create_employee(

            ByVal first_name As String, ByVal last_name As String, _
            ByVal login_name As String, ByVal password As String, _
            ByVal site_id As String, ByVal e_mail As String, _
            ByVal phone As String, ByVal pager As String, _
            ByVal online_priv_class As String, ByVal offline_priv_class As String, _
            ByVal Id As String, ByVal is_active As Boolean, _
            ByVal allow_proxy As Boolean, ByVal start_date As String, _
            ByVal supervisor As String, ByVal work_group As String, _
            ByVal work_group_start As String, ByVal labor_rate As String, _
            ByVal is_supervisor As Boolean, ByVal is_fe As Boolean, _
            ByVal normal_biz_high As String, ByVal normal_biz_mid As String, _
            ByVal normal_biz_low As String, ByVal after_biz_high As String, _
            ByVal after_biz_mid As String, ByVal after_biz_low As String, _
            ByVal def_wipbin_title As String, ByVal rc_config As String, _
            ByVal def_tablespace As String, ByVal temp_tablespace As String, _
            ByVal int_fld1 As String, ByVal int_val1 As Long, _
            ByVal int_fld2 As String, ByVal int_val2 As Long, _
            ByVal str_fld1 As String, ByVal str_val1 As String, _
            ByVal str_fld2 As String, ByVal str_val2 As String, _
            ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function create_employee_list(

            ByVal first_name As String, ByVal last_name As String, _
            ByVal login_name As String, ByVal password As String, _
            ByVal site_id As String, ByVal e_mail As String, _
            ByVal phone As String, ByVal pager As String, _
            ByVal online_priv_class As String, ByVal offline_priv_class As String, _
            ByVal Id As String, ByVal is_active As Boolean, _
            ByVal allow_proxy As Boolean, ByVal start_date As String, _
            ByVal supervisor As String, ByVal work_group As String, _
            ByVal work_group_start As String, ByVal labor_rate As String, _
            ByVal is_supervisor As Boolean, ByVal is_fe As Boolean, _
            ByVal normal_biz_high As String, ByVal normal_biz_mid As String, _
            ByVal normal_biz_low As String, ByVal after_biz_high As String, _
            ByVal after_biz_mid As String, ByVal after_biz_low As String, _
            ByVal def_wipbin_title As String, ByVal rc_config As String, _
            ByVal def_tablespace As String, ByVal temp_tablespace As String, _
            Optional fld_list As Variant, Optional type_list As Variant, _
            Optional val_list As Variant) As Integer

**Description**

This API creates an employee in Clarify. It actually creates an employee record, a user record, and a wipbin record. In addition, it creates a user/login in the database system tables.

**Important Note for MSSQL databases only:** Beginning with Version 3.4.3, SQL statements: CREATE LOGIN and CREATE USER are used instead of stored procedures: sp_adduser and sp_addlogin.  
This has the following implications:  

*   This API no longer supports MS SQL 2000 due to the fact that CREATE LOGIN and CREATE USER statements were introduced in version 2005.
*   It is no longer required for database users to be members of 'db_owner' role at the database level to be able to create new user logins. To the contrary, it is now recommended that these users do not belong to 'db_owner' role due to security concerns.
*   However, it is required for such database users to have 'securityadmin' server role granted, and to be members of 'db_accessadmin' and 'db_securityadmin' roles at the database level.

**Note:** If you wish to create an employee without creating a user at the database level, set the _FCINTER.UseDatabaseLogins_ property to False.

#### Parameters
**Parameter Name**                **Required?**             **Description**

first_name                             Yes                         Employee First Name

last_name                              Yes                         Employee Last Name

login_name                           Yes                         Employee Login Name

password                               Yes                         Employee's Password

site_id                                    Yes                         Site ID of where employee is located. Must be a valid Site Id.

e_mail                                     Yes                         Employee's Email Address

phone                                     No                           Employee's Phone Number

pager                                      No                           Employee's Pager/Beeper Number

online_priv_class                Yes                         Privilege Class. Must be an existing privilege class.

offline_priv_class                No                           Offline Privilege Class.

id                                             No                           Employee's Id.

is_active                                Yes                         Is this employee an active employee?

allow_proxy                          Yes                         Allow proxy use

start_date                              No                           Employee Start Date

supervisor                             No                           Employee's supervisor. This value should be the login_name

of an existing employee that is designated as a supervisor.

work_group                          No                           Employee's workgroup. Must be a valid workgroup, or left blank.

If left blank, the default workgroup will be used.

work_group_start                No                           Date that the employee started in the workgroup.

labor_rate                              No                           Employee's Labor Rate

is_supervisor                        Yes                         Is this employee a supervisor?

is_fe                                       Yes                         Is this employee a field engineer?

normal_biz_high                  No                           Notification Preference - Normal Business Hours - High Priority

normal_biz_mid                    No                           Notification Preference - Normal Business Hours - Medium Priority

normal_biz_low                    No                           Notification Preference - Normal Business Hours - Low Priority

after_biz_high                      No                           Notification Preference - After Business Hours - High Priority

after _biz_mid                       No                           Notification Preference - After Business Hours - Medium Priority

after _biz_low                       No                           Notification Preference - After Business Hours - Low Priority

def_wipbin_title                   No                           Title of employee's default wipbin. If left blank, it will be "default"

rc_config                               No                           Resource Config employee should be placed in.

If left blank, the employee will be placed in the baseline resource config.

def_tablespace                     No                           Oracle only - Default Tablespace for user.

                                                                                If left blank, the user's default tablespace will be set to "users".

temp_tablespace                  No                           Oracle only - Temporary Tablespace for user.

                                                                                If left blank, the user's temporary tablespace will be set to "temp".

int_fld1, int_fld2                   No                           Names of additional fields on table_employee to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names on table_employee to write.

List must be present, but does not need to have any items in the list

type_list                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             First Name is required

-2                                             Last Name is required

-3                                             Login Name is required

-4                                             Password is required

-5                                             Site Id is required

-6                                             Email Address is required

-7                                             Online Privilege Class is required

-8                                             The supplied workgroup was not found

-9                                             Could not find the specified site

-10                                           Could not find the specified privilege class

-11                                           Could not find the specified offline privilege class

-12                                           Could not find an offline privilege class

-13                                           Could not find the specified supervisor

-14                                           A user with the same login name already exists

-15                                           Could not find the specified resource config

-16                                           Could not find the baseline resource config

-17                                           A user with the same username already exists in the system tables

-18                                           Unable to create the database user/login

-19                                           **Oracle database only:** Login Name can only contain alphanumeric characters from your database character set and the underscore (_), dollar sign ($), and pound sign (#). It also must begin with an alphabetic character.

ret_objid                Output                   Returns the objid of the employee

ret_objid2              Output                   Returns the objid of the user

**Examples**

 Add a new employee.

**Visual Basic:**

first_name = "Joe"

last_name = "User"

   login_name = "joe_user"

   password = "password"

   site_id = "INT1"

   e_mail = first_name + "@company.com"

   online_priv_class = "CSR"

   offline_priv_class = "Offline User"

   Id = "100"

   is_active = True

   allow_proxy = True

   is_supervisor = True

   is_fe = True

   labor_rate = "100.00"

   start_date = "1/1/2000"

   supervisor = "sa"

   work_group = "Quality Engineer"

   work_group_start = "12/27/2002"

   normal_biz_high = "Notifier"

   normal_biz_mid = "Notifier"

   normal_biz_low = "Notifier"

   after_biz_high = "Digital Pager"

   after_biz_mid = "Digital Pager"

   after_biz_low = "Digital Pager"

   def_wipbin_title = "my stuff"

   rc_config = "custom"

 phone = "512-418-2905"

   pager = "1-800-skytel x101"

   def_tablespace = ""

   temp_tablespace = ""

int_fld1 = ""

int_val1 = 0

int_fld2 = ""

int_val2 = 0

str_fld1 = ""

str_val1 = ""

str_fld2 = ""

str_val2 = ""

date_fld1 = ""

date_val1 = ""

   ret_int = fcinter.create_employee(first_name, last_name, _
                     login_name, password, _
 site_id, e_mail, _
                     phone, pager, _
online_priv_class, offline_priv_class, _
                     Id, is_active, _
                     allow_proxy, start_date, _
                     supervisor, work_group, _
                     work_group_start, labor_rate, _
                     is_supervisor, is_fe, _
                     normal_biz_high, normal_biz_mid, _
                     normal_biz_low, after_biz_high, _
                     after_biz_mid, after_biz_low, _
                     def_wipbin_title, rc_config, _
def_tablespace, temp_tablespace, _
 int_fld1, int_val1, _
                     int_fld2, int_val2, _
                     str_fld1, str_val1, _
                     str_fld2, str_val2, _
                     date_fld1, date_val1)

   If ret_int = 0

      EmployeeObjid = fcinter.ret_objid

      UserObjid = fcinter.ret_objid2

   End If

**Javascript:**

  first_name = "Joe"

  last_name = "User"

  login_name = "joe_user"

  password = "password"

  site_id = "INT1"

  e_mail = first_name + "@company.com"

  online_priv_class = "CSR"

  offline_priv_class = "Offline User"

  Id = "100"

  is_active = True

  allow_proxy = True

  is_supervisor = True

  is_fe = True

  labor_rate = "125.00"

  start_date = "1/1/2000"

  supervisor = "sa"

  work_group = "Quality Engineer"

  work_group_start = "12/27/2002"

  normal_biz_high = "Notifier"

  normal_biz_mid = "Notifier"

  normal_biz_low = "Notifier"

  after_biz_high = "Digital Pager"

  after_biz_mid = "Digital Pager"

  after_biz_low = "Digital Pager"

  def_wipbin_title = "my stuff"

  rc_config = "custom"

 phone = "512-418-2905"

  pager = "1-800-skytel x101"

  def_tablespace = ""

  temp_tablespace = ""

 int_fld1 = '';

  int_val1 = 0;

  int_fld2 = '';

  int_val2 = 0;

  str_fld1 = '';

  str_val1 = '';

  str_fld2 = '';

  str_val2 = '';

  date_fld1 = '';

 date_val1 = '';

 var ret_int = fcinter.create_employee(first_name, last_name,

                                            login_name, password,

site_id, e_mail,

                                            phone, pager,

 online_priv_class,offline_priv_class,

                                            Id, is_active,

                                            allow_proxy, start_date,

                                            supervisor, work_group,

                                            work_group_start, labor_rate,

                                            is_supervisor, is_fe,

                                            normal_biz_high, normal_biz_mid,

                                            normal_biz_low, after_biz_high,

                                            after_biz_mid, after_biz_low,

                                            def_wipbin_title, rc_config,

 def_tablespace, temp_tablespace,

 int_fld1, int_val1,

                                            int_fld2, int_val2,

                                            str_fld1, str_val1,

                                            str_fld2, str_val2,

                                            date_fld1, date_val1);

   if (ret_int == 0) {

      var EmployeeObjid = fcinter.ret_objid;

      var UserObjid = fcinter.ret_objid2;

}