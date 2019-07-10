; -------------- TEXT EXPANSION
 
::bsngrok::
(
ngrok http -host-header="localhost:55389" 55389
)

::gotobs::
(
cd c:\dev\buckscore\buckscore\Buckscore.Web
)
 
::startpg::
(
net start postgresql-x64-10
)
 
::stoppg::
(
net stop postgresql-x64-10
)

::bkcdebug::
(
$env:DEBUG = "app,app:*"
)