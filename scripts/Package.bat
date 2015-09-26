@echo off
set workspace=C:\Users\alumno\workspace\ligia.cano.ecp1.miw.upm.es
set PATH=%PATH%C:\Program Files\Java\jdk1.8.0_40\bin;C:\Users\alumno\Desktop\Ligia\apache-maven-3.3.3-bin\apache-maven-3.3.3\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_51
set M2_HOME=C:\Users\alumno\Desktop\Ligia\apache-maven-3.3.3-bin\apache-maven-3.3.3
echo -----------------------------------------
echo . (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
cd %workspace%
echo ============ mvn --version =======================================================
echo .

call mvn clean -Denvironment.type=develop

mvn test -Denvironment.type=develop

mvn package -Denvironment.type=preproduction
