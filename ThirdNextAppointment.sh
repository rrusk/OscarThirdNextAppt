#! /bin/bash
# It is assumed that the mysql-connector jar file and the application are
# in the current directory.  Note, it is possible to use command-line
# configuration in "parm=value" format.  Command-line parameters override
# parameters specified in the properties file.
if [ -f ReportDate.class ]; then
  rm ReportDate.class
fi
javac ReportDate.java
if [ -f ThirdNextAppointment.class ]; then
  rm ThirdNextAppointment.class
fi
javac ThirdNextAppointment.java
java -cp ".:mysql-connector-java-3.0.11.jar" ThirdNextAppointment
