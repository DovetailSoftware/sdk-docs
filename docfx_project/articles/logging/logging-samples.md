# Logging Config File Samples

The **fcSDK** ships with multiple logging configuration sample files. The sample files are located in your **fcSDK** installation directory, in the /samples/logging/ directory. Each of these sample files is described in more detail below.

## Logging Config File Samples

* [file_log.config](rolling.md)
    Log all information to a rolling log file.
* [sql_log.config](only-sql.md)
    Only log SQL statements to a rolling log file.
* [largesql_log.config](large-queries.md)
    Only log information about large/lengthy SQL queries to a rolling log file.
* [email_log.config](email.md)
    Send errors to an administrator via email (SMTP).
* [eventlog_log.config](windows-events.md)
    Log Errors to the Windows Event Log
* [single_user_log.config](individual-users.md)
    Log all information for one user to a rolling log file.
* [mssql_database_log.config](mssql-login.md)
    Log all information to a custom Microsoft SQL Server database table.
* [oracle_database_log.config](oracle-login.md)
    Log all information to a custom Oracle database table.
* [combo1_log.config](multiple-login-1.md)
    Log all information to a rolling log file, log errors to the Windows Event Log, and send errors to an administrator via email (SMTP).
* [combo2_log.config](multiple-login-2.md)
    Log all information to a rolling log file, and log all information for one user to a different rolling log file.

---

### log4net Reference

Please visit the [Apache Logging Services: log4net Homepage](http://logging.apache.org/log4net/index.html) for documentation on log4net. The most important links are the [Manual](http://logging.apache.org/log4net/release/manual/introduction.html), the [FAQ](http://logging.apache.org/log4net/release/faq.html), and the [Configuration Examples](http://logging.apache.org/log4net/release/config-examples.html).
