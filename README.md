# geoinfo
geoinfo
<h1>Installationsanleitung für Ubuntu 18.04.</h1>
<h2>Pfade setzen</h2>
Den JAVAHOME Pfad zu der installieren Java Umgebung setzen.
Den GEOSERVERHOME Pfad zu dem beigefügtem Geoserver setzen.

In Ubuntu kann man dies so tun :
<code>
echo "export GEOSERVER_HOME=entpackterPfad/geoinfo/geoserver" >>/etc/environment 

echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >>/etc/environment
</code>

<h2> Start des Geoserver </h2>

In das Bin-Verzeichnis des geoserver wechseln und die <code>startup.sh</code> ausführen.

Der Geoserver startet auf Port 8080

Um in das Webinterface zu kommen, muss man sich auf http://http://localhost:8080/geoserver/web/
mit dem Nutzernamen <code>admin</code> und dem Passwort <code>geoserver</code> einloggen.

<h3>Bau und Start des Frontends </h3>
NPM muss auf dem Gerät installiert sein.

in den geoinfoweb Ordner wechseln und erstmalig <code>npm init </code> aufrufen.
Mit <code>npm start</code> kompiliert und startet man das Frontend.

Die Website ist nun auf http://localhost:1234/ verfügbar.
