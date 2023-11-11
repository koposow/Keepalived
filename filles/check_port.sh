{\rtf1\ansi\ansicpg1251\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;\f1\fnil\fcharset0 Menlo-Bold;}
{\colortbl;\red255\green255\blue255;\red56\green185\blue199;\red0\green0\blue0;\red57\green192\blue38;
\red170\green171\blue37;\red202\green51\blue35;\red219\green39\blue218;\red86\green32\blue244;\red255\green255\blue255;
}
{\*\expandedcolortbl;;\cssrgb\c25546\c77007\c82023;\csgray\c0;\cssrgb\c25706\c77963\c19557;
\cssrgb\c72331\c71682\c18599;\cssrgb\c83899\c28663\c18026;\cssrgb\c89513\c29736\c88485;\cssrgb\c41681\c25958\c96648;\csgray\c100000;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 \CocoaLigature0 #!/bin/bash\cf3 \
\
WEB_SERVER\cf4 =
\f1\b \cf5 "192.168.1.60"
\f0\b0 \cf3  \cf2  \cf3 \
PORT\cf4 =\cf3 80 \cf2  \cf3 \
\
\cf2 # \uc0\u1055 \u1088 \u1086 \u1074 \u1077 \u1088 \u1082 \u1072  \u1076 \u1086 \u1089 \u1090 \u1091 \u1087 \u1085 \u1086 \u1089 \u1090 \u1080  \u1087 \u1086 \u1088 \u1090 \u1072 \cf3 \
nc -zv 
\f1\b \cf5 "$WEB_SERVER"
\f0\b0 \cf3  
\f1\b \cf5 "$PORT"
\f0\b0 \cf3  \cf4 >\cf3 /dev/null 2\cf4 >&\cf3 1\
PORT_STATUS\cf4 =
\f1\b \cf6 $?
\f0\b0 \cf3 \
\
\cf2 # \uc0\u1055 \u1088 \u1086 \u1074 \u1077 \u1088 \u1082 \u1072  \u1085 \u1072 \u1083 \u1080 \u1095 \u1080 \u1103  \u1092 \u1072 \u1081 \u1083 \u1072  index.html\cf3 \
curl
\f1\b \cf7  -s --\cf8 head
\f0\b0 \cf3  
\f1\b \cf5 "http://$192.168.1.60/index.html"
\f0\b0 \cf3  \cf4 |\cf3  
\f1\b \cf8 head\cf7  -n
\f0\b0 \cf3  1 \cf4 |\cf3  
\f1\b \cf8 grep
\f0\b0 \cf3  
\f1\b \cf5 "HTTP/1.[01
\f0\b0 \cf9 \cb3 >\cf3 \cb1 \
FILE_STATUS\cf4 =
\f1\b \cf6 $?
\f0\b0 \cf3 \
\
\cf4 if\cf3  \cf4 [[\cf3  
\f1\b \cf6 $PORT_STATUS
\f0\b0 \cf3  \cf4 -eq\cf3  0 \cf4 &&\cf3  
\f1\b \cf6 $FILE_STATUS
\f0\b0 \cf3  \cf4 -eq\cf3  0 \cf4 ]];\cf3  \cf4 then\cf3 \
  \cf4 exit\cf3  0 \cf2  # \uc0\u1054 \u1073 \u1072  \u1091 \u1089 \u1083 \u1086 \u1074 \u1080 \u1103  \u1074 \u1099 \u1087 \u1086 \u1083 \u1085 \u1103 \u1102 \u1090 \u1089 \u1103 , \u1074 \u1086 \u1079 \u1074 \u1088 \u1072 \u1097 \u1072 \u1077 \u1084  \u1082 \u1086 \u1076  0\cf3 \
\cf4 else\cf3 \
  \cf4 exit\cf3  1 \cf2  # \uc0\u1054 \u1076 \u1085 \u1086  \u1080 \u1079  \u1091 \u1089 \u1083 \u1086 \u1074 \u1080 \u1081  \u1085 \u1077  \u1074 \u1099 \u1087 \u1086 \u1083 \u1085 \u1103 \u1077 \u1090 \u1089 \u1103 , \u1074 \u1086 \u1079 \u1074 \u1088 \u1072 \u1097 \u1072 \u1077 \u1084  \u1082 \u1086 \u1076  1\cf3 \
\cf4 fi\cf3 \
}