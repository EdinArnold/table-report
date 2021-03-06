@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  repo startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and REPO_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%/app;%APP_HOME%\lib\repo-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\ratpack-core-1.4.2.jar;%APP_HOME%\lib\ratpack-guice-1.4.2.jar;%APP_HOME%\lib\hibernate-core-5.2.1.Final.jar;%APP_HOME%\lib\HikariCP-2.4.5.jar;%APP_HOME%\lib\postgresql-9.1-901-1.jdbc4.jar;%APP_HOME%\lib\pgjdbc-ng-0.0.2.jar;%APP_HOME%\lib\netty-codec-http-4.1.5.Final.jar;%APP_HOME%\lib\netty-handler-4.1.5.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.5.Final-linux-x86_64.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\slf4j-api-1.7.21.jar;%APP_HOME%\lib\reactive-streams-1.0.0.jar;%APP_HOME%\lib\caffeine-2.3.1.jar;%APP_HOME%\lib\jackson-databind-2.7.5.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.7.5.jar;%APP_HOME%\lib\jackson-datatype-guava-2.7.5.jar;%APP_HOME%\lib\snakeyaml-1.15.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.7.5.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.7.5.jar;%APP_HOME%\lib\guice-4.1.0.jar;%APP_HOME%\lib\guice-multibindings-4.1.0.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\geronimo-jta_1.1_spec-1.1.1.jar;%APP_HOME%\lib\jandex-2.0.0.Final.jar;%APP_HOME%\lib\classmate-1.3.0.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\cdi-api-1.1-PFD.jar;%APP_HOME%\lib\netty-3.6.3.Final.jar;%APP_HOME%\lib\netty-codec-4.1.5.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.5.Final.jar;%APP_HOME%\lib\netty-transport-4.1.5.Final.jar;%APP_HOME%\lib\netty-common-4.1.5.Final.jar;%APP_HOME%\lib\jackson-annotations-2.7.0.jar;%APP_HOME%\lib\jackson-core-2.7.5.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\el-api-2.2.jar;%APP_HOME%\lib\jboss-interceptors-api_1.1_spec-1.0.0.Beta1.jar;%APP_HOME%\lib\jsr250-api-1.0.jar;%APP_HOME%\lib\netty-resolver-4.1.5.Final.jar;%APP_HOME%\lib\javassist-3.20.0-GA.jar
cd "%APP_HOME%/app"

@rem Execute repo
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %REPO_OPTS%  -classpath "%CLASSPATH%" com.bazinga.report.app.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable REPO_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%REPO_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
