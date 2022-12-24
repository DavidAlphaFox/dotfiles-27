<!-- HEADERS -->

<p align="center">
  <img width="25%"  border="2" src="https://github.com/shvedes.png">
</p>

<p align="center">
  <b> ~ shved's configuration files ~ </b>
</p>

<div align="center">
    <p></p>
     <img src="https://img.shields.io/github/license/shvedes/dotfiles.svg">
     <img src="https://img.shields.io/github/stars/shvedes/dotfiles.svg">
     <img src="https://img.shields.io/github/forks/shvedes/dotfiles.svg">
</div>

<div align="center">
     <a href="https://t.me/shvedes">
        <img src="https://badgen.net/badge/icon/telegram?icon=telegram&label">
     </a>
        
</div>

<div>
      <img align="left" src="https://ezgif.com/images/loadcat.gif">
      <img align="right" src="https://ezgif.com/images/loadcat.gif">
</div>


<div align="center">

---
# MY BSPWM DOTFILES


## **Screenshots**



![1](assets/first.png)

![2](assets/second.png)

![3](assets/third.png)

![4](assets/fourth.png)

![5](assets/fifth.png)

### **Brightness and volume notifications**
![gif](assets/volume_and_brightness.gif)

</div>

## **Environment**
---


- **OS: [Arch Linux](https://archlinux.org/)**
- **Recorder: [OBS](https://obsproject.com/download)**
- **Editor: [Neovim](https://github.com/neovim/neovim)**
- **Browser: [Firefox](https://www.mozilla.org/en-US/firefox/new/)**
- **Terminal: [Alacritty](https://github.com/alacritty/alacritty)**
- **Screenshots: [Maim](https://github.com/naelstrof/maim)**
- **Compositor: [Picom](https://github.com/dccsillag/picom)**
- **App launcher: [Rofi](https://github.com/davatorium/rofi)**
- **Clipboard: [Greenclip](https://github.com/erebe/greenclip)**
- **File manager: [Thunar](https://github.com/xfce-mirror/thunar)**
- **Screen lock: [Betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)**
- **QT theme selector: [qt5ct](https://github.com/desktop-app/qt5ct), [at6ct](https://github.com/trialuser02/qt6ct)**
- **GTK theme selector: [lxappearance](https://github.com/lxde/lxappearance)**
- **Graphical volume managment: [Pavucontrol](https://github.com/pulseaudio/pavucontrol)**

 ## **To do**

 - [ ] **Learn git :)**
 - [ ] **More themes**
 - [ ] **Display manager**
 - [ ] **Logical shortcuts**
 - [x] **Installation script**
 - [ ] **Theme selector script**
 - [ ] **Structure directories**
 - [ ] **Polkit agent (like polkit-gnome, xfce-polkit)**
 - [ ] **Manage unnecessary files, such as logs and other garbage**



## **Installation**

> Since this configuration was made for my PC (Matebook 14 2020), some settings may not be suitable for your machine, for example  **brightnessctl**, which only works with AMD graphics. 


At the moment, this is the very first version of the script. It may have bugs and be unstable. For now, I'm working on it. Use at your own risk

```
 curl -sO https://raw.githubusercontent.com/shvedes/dotfiles/main/install/dotfiles ; sh dotfiles 
 ```
**NOTE:** at the moment the script cannot be run via url, so the script is downloaded first, and only then bash uses it. I'm working on it. Any advice is welcome

**NOTE:** **spicetify-cli** and **spotify-adblock** has been removed because spotify package is broken. Install them yourself

## **bspwm shortcuts**

Many keyboard shortcuts are incomprehensible and illogical. I would be very happy if you could help me structure them.

---

<div align="center">

| Parameter        | Shortcut |
| ---------------- | ----------- |
| close window     | super + q |
| fullscreen mode  | super + f | 
| rotate windows   | super + r | 
| focus left       | super + j |
| focues right     | super + k |
| focus top        | super + ; |
| focus bottom     | super + l |
| focus next/prev  | super + n |
| switch layout    | super + m |
| swap left        | super + shift + j |
| swap right       | super + shift + k | 
| swap top         | super + shift + ; |
| swap bottom      | super + shift + l |
| tiled/floating   | super + f | 
| tiled/pseudo_tiled | super + t |
| move window to workspace ***number*** | super + shift + (1-9,0) |
| resize windows   | super + shift + (Arrow keys)
| workspace ***number*** | super + (1-9,0) |
| next workspace   | ctrl + alt + Right |
| prev workspace   | ctrl + alt + Lrft | 
| last workspace   | super + tab |
| restart bspwm & sxhkd | super + shift + r | 
| bspwm quit       | ctrl + alt + q | 
| fullscreen screenshot | super + shift + z | 
| active window screenshot | super + shift + a | 
| area screenshot  | super + shift + s |
| rofi             | super + a |
| clipboard        | super + c | 
| clear clipboard  | super + shift + c |
| thunar           | super + e | 
| spotify (if installed) | ctrl + alt + s |
| firefox          | ctrl + alt + f | 
| terminal         | super + Return |
| change wallpaper | super + shift + w | 
| lock session     | ctrl + shift + l |

![alt cat](assets/cat.svg)

</div>

