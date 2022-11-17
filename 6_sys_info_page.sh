#! /bin/bash
#TITLE="System Info Report" # we use uppercase variables when we want it to be contant
# programme to output a system info page
declare -r TITLE="System Info Report for $HOSTNAME"
echo "<HTML>
  <HEAD>
       <TITLE>$TITLE</TITLE>
  </HEAD>
  <BODY>
      <H1>$TITLE</H1>
  </BODY>
</HTML>"