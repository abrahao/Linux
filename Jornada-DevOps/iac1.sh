{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 AndaleMono;}
{\colortbl;\red255\green255\blue255;\red46\green174\blue187;\red0\green0\blue0;\red47\green255\blue18;
\red64\green11\blue217;\red159\green160\blue28;\red200\green20\blue201;\red47\green180\blue29;}
{\*\expandedcolortbl;;\cssrgb\c20198\c73241\c78251;\csgray\c0\c90000;\cssrgb\c15686\c99608\c7843;
\cssrgb\c32309\c18668\c88228;\cssrgb\c68469\c68013\c14209;\cssrgb\c83397\c23076\c82665;\cssrgb\c20239\c73899\c14948;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs28 \cf2 \cb3 \CocoaLigature0 #!/bin/bash\cf4 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 echo\cf4  \cf6 "Criando diretorios..."\cf4 \
\
\cf5 mkdir\cf4  /publico\
\cf5 mkdir\cf4  /adm\
\cf5 mkdir\cf4  /ven\
\cf5 mkdir\cf4  /sec\
\
\cf5 echo\cf4  \cf6 "Criando gruops de usu\'e1rios..."\cf4 \
groupadd GRP_ADM\
groupadd GRP_VEN\
groupadd GRP_SEC\
\
\cf5 echo\cf4  \cf6 "Criando usu\'e1rios..."\cf4 \
\
useradd carlos\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_ADM\
useradd maria\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_ADM\
useradd joao\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_ADM\
\
useradd debora\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_VEN\
useradd sebastiana\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_VEN\
useradd roberto\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_VEN\
\
useradd josefina\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_SEC\
useradd amanda\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf7  -G\cf4  GRP_SEC\
useradd carlos\cf7  -m -s\cf4  /bin/bash\cf7  -p\cf4  \cf8 $(\cf4 openssl passwd\cf7  --crypt\cf4  Senha123\cf8 )\cf4  \cf7  -G\cf4  GRP_SEC\
\
\cf5 echo\cf4  \cf6 "Permiss\'f5es de diret\'f3rios..."\cf4 \
\
\cf5 chown\cf4  root\cf8 :\cf4 GRP_ADM /adm\
\cf5 chown\cf4  root\cf8 :\cf4 GRP_VEN /ven\
\cf5 chown\cf4  root\cf8 :\cf4 GRP_SEC /sec\
\
\cf5 chmod\cf4  770 /adm\
\cf5 chmod\cf4  770 /ven\
\cf5 chmod\cf4  770 /sec\
\cf5 chmod\cf4  777 /publico\
\
\cf5 echo\cf4  \cf6 "Fim!"}