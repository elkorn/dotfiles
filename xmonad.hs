import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.PerWorkspace
import System.IO

myWorkspaces = [ "1:Dbg", "2:Dev", "3:Web", "4:Doc", "5:Cht", "6:Med", "7:VM", "8:Org" ]
myManageHook = composeAll [ 
    className =? "Gimp" --> doFloat,
    className =? "tilda" --> doFloat,
    className =? "Tilda" --> doFloat,
    className =? "Pidgin" --> doShift "5:Cht",
    className =? "sublime_text" --> doShift "2:Dev",
    className =? "Sublime_text" --> doShift "2:Dev",
    className =? "Subl" --> doShift "2:Dev",
    className =? "subl" --> doShift "2:Dev",
    className =? "Emacs" --> doShift "2:Dev",
    className =? "emacs" --> doShift "2:Dev",
    className =? "subl" --> doShift "2:Dev",
    className =? "eclipse" --> doShift "2:Dev",
    className =? "jetbrains-idea-ce" --> doShift "2:Dev",
    className =? "app.asana.com" --> doShift "8:Org",
    className =? "chromium-browser" --> doShift "3:Web",
    className =? "Chromium-browser" --> doShift "3:Web",
    className =? "Google-chrome" --> doShift "3:Web",
    className =? "google-chrome" --> doShift "3:Web",
    className =? "xchat" --> doShift "5:Cht",
    className =? "Xchat" --> doShift "5:Cht",
    title =? "irssi" --> doShift "5:Cht",
    className =? "remmina" --> doShift "7:VM",
    className =? "Remmina" --> doShift "7:VM",
    className =? "transmission-gtk" --> doShift "6:Med",
    className =? "Transmission-gtk" --> doShift "6:Med",
    className =? "spotify" --> doShift "6:Med",
    className =? "Spotify" --> doShift "6:Med",
    manageDocks]

myWide = Mirror $ Tall nmaster delta ratio
    where
        -- The default number of windows in the master pane
        nmaster = 1
        -- Percent of screen to increment by when resizing panes
        delta   = 3/100
        -- Default proportion of screen occupied by master pane
        ratio   = 80/100

main = do
  xmproc <- spawnPipe "feh --bg-fill $HOME/Desktop/dark-woods.jpg"
  xmprox <- spawnPipe "emacs --daemon"
  xmprox <- spawnPipe "xflux  -l 51.1078852 -g 17.0385376 -r 1"
  xmproc <- spawnPipe "conky"
  xmproc <- spawnPipe "zeal"
  xmproc <- spawnPipe "xmobar $HOME/.config/dotfiles/dotfiles/.xmobarrc"
  xmprox <- spawnPipe "sleep 3 $HOME/.config/dotfiles/dotfiles/trayer.sh"
  xmonad $ defaultConfig {
         startupHook = setWMName "LG3D",
         terminal = "gnome-terminal --hide-menubar",
         manageHook =myManageHook <+> manageDocks <+>  manageHook defaultConfig,
         layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig,
         logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc,
                          ppTitle = xmobarColor "green" "" . shorten 50
                        },
         modMask = mod4Mask,     -- Rebind Mod to the Windows key
         workspaces = myWorkspaces
         } `additionalKeys`
         [ 
          ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s"),
          ((0, xK_Print), spawn "scrot"),
          ((0, 0x1008ff11), spawn "amixer set Master 5%-"),
          ((0, 0x1008ff12), spawn "amixer set Master toggle"),
          ((0, 0x1008ff13), spawn "amixer set Master 5%+"),
          ((0, 0x1008ff14), spawn "ncmpcpp toggle"),
          ((0, 0x1008ff16), spawn "ncmpcpp prev"),
          ((0, 0x1008ff17), spawn "ncmpcpp next"),
          ((0, 0x1008ff1d), spawn "gnome-calculator"),
          ((0, 0x1008ff30), spawn "pcmanfm")
          ]