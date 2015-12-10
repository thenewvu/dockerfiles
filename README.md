This is inspired from [INCLUDES IN DOCKERFILES WITH M4 AND MAKE](http://bobbynorton.com/posts/includes-in-dockerfiles-with-m4-and-make/)

A sample output when it's working:

```
>./make.py 
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!                       ... SCANNING IMAGES ...                      !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

************************************************************************
* Found an image at path: ./base

* Maintainer: thenewvu
* Name      : base
* From      : officical/ubuntu:wily

************************************************************************
* Found an image at path: ./google-chrome

* Maintainer: thenewvu
* Name      : google-chrome
* From      : thenewvu/base

************************************************************************
* Found an image at path: ./inkscape

* Maintainer: thenewvu
* Name      : inkscape
* From      : thenewvu/base

************************************************************************
* Found an image at path: ./libreoffice

* Maintainer: thenewvu
* Name      : libreoffice
* From      : thenewvu/base

************************************************************************
* Found an image at path: ./react-native-devenv

* Maintainer: thenewvu
* Name      : react-native-devenv
* From      : thenewvu/base

************************************************************************
* Found an image at path: ./skype

* Maintainer: thenewvu
* Name      : skype
* From      : thenewvu/base

************************************************************************
* Found an image at path: ./smartgit

* Maintainer: thenewvu
* Name      : smartgit
* From      : thenewvu/base

************************************************************************
* Found an image at path: ./sublime-text

* Maintainer: thenewvu
* Name      : sublime-text
* From      : thenewvu/base

************************************************************************
* Found an image at path: ./react-native-android-devenv

* Maintainer: thenewvu
* Name      : react-native-android-devenv
* From      : thenewvu/react-native-devenv

************************************************************************
* Found an image at path: ./react-native-web-devenv

* Maintainer: thenewvu
* Name      : react-native-web-devenv
* From      : thenewvu/react-native-devenv
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!                  ... BUILDING TREE OF IMAGES ...                   !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
thenewvu/base
  thenewvu/google-chrome
  thenewvu/inkscape
  thenewvu/libreoffice
  thenewvu/react-native-devenv
    thenewvu/react-native-android-devenv
    thenewvu/react-native-web-devenv
  thenewvu/skype
  thenewvu/smartgit
  thenewvu/sublime-text
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!                       ... BUILDING IMAGES ...                      !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
thenewvu/base [DONE]
  thenewvu/google-chrome [DONE]
  thenewvu/inkscape [DONE]
  thenewvu/libreoffice [DONE]
  thenewvu/react-native-devenv [DONE]
    thenewvu/react-native-android-devenv [DONE]
    thenewvu/react-native-web-devenv [DONE]
  thenewvu/skype [DONE]
  thenewvu/smartgit [DONE]
  thenewvu/sublime-text [DONE]

```
