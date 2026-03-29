# Feishin Flatpak

Flatpak for the [Feishin](https://github.com/jeffvli/feishin) music player for Navidrome and Jellyfin.
Contains mpv.

# Software Rendering
Software rendering (i.e llmvpipe) causes issues when running Feishin. You shouldn't be using it unless in a VM without 3D acceleration enabled, but to check run `glxinfo | grep "OpenGL renderer"`.
If you are using llvmpipe and have issues, enable the x11 socket in the flatpak permission and edit the .desktop so that it looks something like:
```
# ~/.local/share/applications/org.jeffvli.feishin.desktop
[Desktop Entry]
Name=Feishin
GenericName=Music player
Exec=/usr/bin/flatpak run --branch=master --arch=x86_64 org.jeffvli.feishin --ozone-platform=x11
Terminal=false
Type=Application
Icon=org.jeffvli.feishin
StartupWMClass=feishin
SingleMainWindow=true
Categories=AudioVideo;Audio;Player;Music;
Keywords=Navidrome;Jellyfin;Subsonic;OpenSubsonic
Comment=A player for your self-hosted music server
X-Flatpak=org.jeffvli.feishin
```
