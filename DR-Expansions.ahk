; -------------- TEXT EXPANSION
 

::loremipsum::
(
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque 
aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, 
ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. 
Nullam mollis. Ut justo. Suspendisse potenti.
 

Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. 
Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent 
elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices 
sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus 
eu, fermentum et, dapibus sed, urna.
 

Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus 
arcu pulvinar risus, vitae facilisis libero dolor a purus. Sed vel lacus. Mauris nibh felis, 
adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna. Etiam pellentesque 
mauris ut lectus. Nunc tellus ante, mattis eget, gravida vitae, ultricies ac, leo. Integer leo 
pede, ornare a, lacinia eu, vulputate vel, nisl.
)

::@ivar::
(
Declare @InstanceID int = (Select InstanceID from Instances where Subdomain='leslie');
)
 
; -------------- SIGNATURE
 

::ssig::
WinClip.Clear()
Html = <div style='font:1em arial,helvetica,sans-serif;color:#aaa'><p><b style='color:black'>Brent Keller</b><br>DevResults | <a href="http://devresults.com">devresults.com</a><br>641 S Street NW | 4th Floor | Washington, DC 20001<br>724.953.4968</p><p><b style='color:black'>DevResults</b>: Project management for effective development</p></div>
WinClip.SetHTML(Html)
Send ^v ; paste
return
 
 
::bacpacrestore::
WinClip.Clear()
SendInput ."C:\Program Files\Microsoft SQL Server\140\DAC\bin\SqlPackage.exe" /a:import /sf:C:\Sql\Backup\foo.bacpac /tsn:.\SQL2017 /tdn:DEV-bacpac
return

::drngrok::
WinClip.Clear()
InputBox, subdomain, Instance subdomain, Subdomain of the instance?
if ErrorLevel = 0
    SendInput ngrok.exe http -host-header=rewrite %subdomain%.devlocal.us:80
return
