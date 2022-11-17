#! /bin/bash
#TITLE="System Info Report" # we use uppercase variables when we want it to be contant
# programme to output a system info page
TITLE="System Info Report for $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"
echo "<HTML>
  <HEAD>
       <TITLE>$TITLE</TITLE>
  </HEAD>
  <BODY>
      <H1>$TITLE</H1>
      <P>$TIMESTAMP</P>
  </BODY>
</HTML>"