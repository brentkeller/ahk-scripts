; -------------- TEXT EXPANSION

::@ivar::
(
Declare @InstanceID int = (Select InstanceID from Instances where Subdomain='leslie');
)

::npmtw::
(
npm run test:watch
)

::npmtj::
(
npm run test:jest
)

::npmtc::
(
npm run test:chutzpah
)


; -------------- SIGNATURE

::drsig::
WinClip.Clear()
Html = <div style='font:1em arial,helvetica,sans-serif;color:#aaa'><p><b style='color:black'>Brent Keller</b><br>DevResults | <a href="http://devresults.com">devresults.com</a><br>655 New York Avenue NW, 6th Floor<br>Washington, DC 20001</p><p><b style='color:black'>DevResults</b>: Project management for effective development</p></div>
WinClip.SetHTML(Html)
Send ^v ; paste
return

::bacpacrestore::
WinClip.Clear()
SendInput ."C:\Program Files\Microsoft SQL Server\140\DAC\bin\SqlPackage.exe" /a:import /sf:C:\Sql\Backup\foo.bacpac /tsn:.\SQL2019 /tdn:DEV-bacpac
return

::drngrok::
WinClip.Clear()
InputBox, subdomain, Instance subdomain, Subdomain of the instance?
if ErrorLevel = 0
    SendInput ngrok.exe http -host-header=rewrite %subdomain%.devlocal.us:80
return
