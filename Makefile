w: xdg-shell-client-protocol.h w.c xdg-shell-protocol.c
	gcc -o w w.c xdg-shell-protocol.c -lwayland-client
xdg-shell-protocol.c:
	wayland-scanner private-code \
	< /usr/share/wayland-protocols/stable/xdg-shell/xdg-shell.xml \
	> xdg-shell-protocol.c
xdg-shell-client-protocol.h:
	wayland-scanner client-header \
	< /usr/share/wayland-protocols/stable/xdg-shell/xdg-shell.xml \
	> xdg-shell-client-protocol.h

clean:
	rm w xdg-shell-protocol.c xdg-shell-client-protocol.h
