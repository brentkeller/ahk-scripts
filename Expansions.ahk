; -------------- TEXT EXPANSIONS

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
nvm use 12.14.0
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