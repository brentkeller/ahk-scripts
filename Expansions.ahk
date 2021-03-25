; -------------- TEXT EXPANSIONS

::ttt:: ; Date stamp for file names
  FormatTime, DateStamp, %A_Now%, yyyy.MM.dd
  Send, %DateStamp% 
Return 

; ---- Terminal directory shortcuts ----

::gotoscripts::
(
cd C:\dev\scripts
)

::gotodev::
(
cd c:\dev
)

::gotodr::
(
cd c:\dev\dr\DevResults
)

::gotocev::
(
cd c:\dev\factbook\cevitxe
)

::gotowerdz::
(
cd c:\dev\projects\werdz-app
)

::gotobkcg::
(
cd c:\dev\bkc-gatsby
)

::gotobkcm::
(
cd c:\dev\bkc-my
)

::gotopom::
(
cd C:\dev\dotnet\pomsole\Pomsole\bin\Debug
)
 
; ---- Pomsole usage helpers ----

::pomdir::
(
C:\dev\dotnet\pomsole\Pomsole\bin\Debug
)

::pomc::
(
.\Pomsole.exe -s 25 -b 5
)

; ---- Node version shortcuts ----

::node10::
(
nvm use 10.17.0
)

::node12::
(
nvm use 12.17.0
)

::node155::
(
nvm use 15.5.1
)

; ---- BuckScore helpers ----

::bsngrok::
(
ngrok http -host-header="localhost:55389" 55389
)

::gotobs::
(
cd c:\dev\buckscore\buckscore\Buckscore.Web
)

; ---- Postgres server ----

::startpg::
(
net start postgresql-x64-10
)
 
::stoppg::
(
net stop postgresql-x64-10
)

; ---- BKC-apps helpers ----

::bkcdebug::
(
$env:DEBUG = "app,app:*"
)

; ---- Android development shortcuts ----

::runadb::
(
C:\Users\brent\AppData\Local\Android\Sdk\platform-tools\adb.exe
)

::journalmonthcal::
(
journalmonthtemplate
)

::journalmonthtemplate::
(
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31

Mon 
Tue 
Wed 
Thu 
Fri 
Sat 
Sun 
)