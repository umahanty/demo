<?xml version="1.0" encoding="UTF-8" ?>

<log4j:configuration debug="true"
                     xmlns:log4j='http://jakarta.apache.org/log4j/'>
    <appender name="console" class="org.apache.log4j.ConsoleAppender">
        <layout class="org.apache.log4j.PatternLayout">
            <param name="ConversionPattern"

                   value="%-5p | %d{yyyy-MM-dd HH:mm:ss} | [%t] %C{2} (%F:%L) - %m%n" />
        </layout>
    </appender>
    <appender name="file" class="org.apache.log4j.RollingFileAppender">
        <param name="append" value="false" />
        <param name="maxFileSize" value="10MB" />
        <param name="maxBackupIndex" value="10" />
        <param name="file" value="${catalina.home}/logs/myStruts1App.log" />
        <layout class="org.apache.log4j.PatternLayout">
            <param name="ConversionPattern"
                   value="%-5p | %d{yyyy-MM-dd HH:mm:ss} | [%t] %C{2} (%F:%L) - %m%n" />
        </layout>

    </appender>
    <root>
        <level value="DEBUG" />
        <appender-ref ref="console" />
    </root>

</log4j:configuration>