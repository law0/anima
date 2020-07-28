# Plasma 5 Wallpaper Template For Animated Lockscreen
-------

### Build instructions

```
cd /where/your/wallpaper/is/generated
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=MYPREFIX ..
make
make install
```

MYPREFIX is where you install your Plasma setup, replace it accordingly)
Usually it is shown by the command :
```
kf5-config --prefix
```

#### Restart plasma to load the wallpaper
in a terminal or in krunner type:
```
kquitapp plasmashell
plasmashell
```
then go to wallpaper settings and select it

### Tutorials and resources
Plasma QML API explained
https://techbase.kde.org/Development/Tutorials/Plasma2/QML2/API

Helping links :
https://gist.github.com/selevt/1e121f61a5606250db78
https://frinring.wordpress.com/2018/04/04/templates-to-create-your-own-plasma-wallpaper-plugin/
