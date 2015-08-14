# OscarThirdNextAppt
Oscar EMR Third Next Appointment command-line reporting tool

This program is a standalone application to determine the 3rd next available appointment based on data in an Oscar EMR database. It assumes a MySQL
database and the presence of a mysql-connector-java-*.jar file in the classpath.

An example of how to compile and execute the program (after setting appropriate dbUrl, dbUser and dbPassword strings in ThirdNextAppointment.properties) is:
 * javac ThirdNextAppointment.java
 * java -cp ".:mysql-connector-java-3.0.11.jar" ThirdNextAppointment

The shell script ThirdNextAppointment.sh encapsulates these two commands.  To run the shell script from cron, add a line to the top of the script that changes the current working directory to the location of this repo.  The ThirdNextAppointment.properties must be modified to match the configation needed.  The dburl, dbuser and dbpassword settings would typically be those used for database connectivity in the Oscar EMR properties file.
 
The generateReport method is based on code from Oscar's http://sourceforge.net/p/oscarmcmaster/oscar/ci/master/tree/src/main/java/oscar/oscarReport/reportByTemplate/ThirdApptTimeReporter.java written by Randy Jonasz [mailto:rjonasz@gmail.com]. Some code is also borrowed from http://www.tutorialspoint.com/jdbc/jdbc-sample-code.htm
