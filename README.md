# OscarThirdNextAppt
Oscar EMR Third Next Appointment command-line reporting tool

This program is a standalone application to determine the 3rd next available appointment based on data in an Oscar EMR database. It assumes a MySQL
database and the presence of a mysql-connector-java-*.jar file in the classpath.

An example of how to compile and execute the program (after setting appropriate dbUrl, dbUser and dbPassword strings in ThirdNextAppointment.properties) is:
 * javac ThirdNextAppointment.java
 * java -cp ".:mysql-connector-java-5.1.28.jar" ThirdNextAppointment
 
The generateReport method is based on code from Oscar's http://sourceforge.net/p/oscarmcmaster/oscar/ci/master/tree/src/main/java/oscar/oscarReport/reportByTemplate/ThirdApptTimeReporter.java written by Randy Jonasz [mailto:rjonasz@gmail.com]. Some code is also borrowed from http://www.tutorialspoint.com/jdbc/jdbc-sample-code.htm
