#! /bin/bash
# programme to output a system info page
TITLE="System Info Report for $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"
report_uptime () {
    cat << _EOF_
        <H2>System Uptime</H2>
        <PRE>$(uptime)</PRE>
     _EOF_
     return
}
report_disk_space () {
    cat <<- _EOF_
        <H2>Home Space Utilization</H2>
        <PRE>$(df -h)</PRE>
        _EOF_
}
report_home_space () {
    cat << _EOF_
        <H2>Home Space Utilization</H2>
        <PRE>$(du -sh /root/linux_tutorial_gl/Week2-PreWork/VS-Code-scripting/*)</PRE>
        _EOF_
}
cat << _EOF_
        <HTML>
            <HEAD>
                <TITLE>$TITLE</TITLE>
            </HEAD>
            <BODY>
                <H1>$TITLE</H1>
                <P>$TIMESTAMP</P>
                $(report_uptime)
                $(report_disk_space)
                $(report_home_space)
            </BODY>
        </HTML>
_EOF_
exit 0