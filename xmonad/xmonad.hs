--
-- rickisens xmonad config
--
 
--import XMonad
import XMonad hiding ( (|||) ) -- hiding so JumpToLayout works
import XMonad.Layout hiding ( (|||) ) -- hiding so JumpToLayout works
import Data.Monoid
import System.Exit
 
import qualified XMonad.StackSet as W
import qualified Data.Map        as M
 
-- rickisens imports
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Layout.PerWorkspace
import XMonad.Layout.LayoutCombinators
import XMonad.Layout.WindowNavigation
import XMonad.Layout.ResizableTile
import XMonad.Layout.Gaps
import XMonad.Layout.PerWorkspace
import XMonad.Hooks.ManageHelpers
import XMonad.Actions.NoBorders

-- The preferred terminal program, which is used in a binding below and by
-- certain contrib modules.
--
myTerminal      = "urxvt"
 
-- Whether focus follows the mouse pointer.
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = False
 
-- Width of the window border in pixels.
--
myBorderWidth   = 2 
 
-- modMask lets you specify which modkey you want to use. The default
-- is mod1Mask ("left alt").  You may also consider using mod3Mask
-- ("right alt"), which does not conflict with emacs keybindings. The
-- "windows key" is usually mod4Mask.
--
myModMask       = mod4Mask
 
-- The default number of workspaces (virtual screens) and their names.
-- By default we use numeric strings, but any string may be used as a
-- workspace name. The number of workspaces is determined by the length
-- of this list.
--
-- A tagging example:
--
-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]
--
myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]
 
-- Border colors for unfocused and focused windows, respectively.
--
myNormalBorderColor  = "grey"
myFocusedBorderColor = "#d8b008"
 
------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
--
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
 
    -- launch a terminal
    [ ((modm,               xK_Return), spawn $ XMonad.terminal conf)

    , ((modm,               xK_i     ), spawn "~/bin/trackpad-toggle.sh")

    , ((modm,               xK_c     ), spawn "urxvt -e vimpc")

    , ((modm,               xK_p     ), spawn "urxvt -e htop")

    , ((modm,               xK_o     ), spawn "urxvt -e wicd-curses")
 
    , ((modm,               xK_m     ), spawn "urxvt -e alsamixer")

    , ((modm,               xK_s     ), spawn "urxvt -e ranger")
 
    , ((modm,               xK_a     ), spawn "firefox")
 
    -- launch dmenu
    , ((modm,               xK_space ), spawn "exe=`dmenu_path | dmenu` && eval \"exec $exe\"")
 
     -- Switch to next Layout 
    , ((modm .|. shiftMask, xK_space ), sendMessage NextLayout)

     -- Switch to fullscreen layout
    , ((modm,               xK_f     ), sendMessage $ JumpToLayout "Full")
     
     -- Switch to tiled layout
    , ((modm.|. shiftMask,  xK_f     ), sendMessage NextLayout)

    -- Close focused window
    , ((modm .|. shiftMask, xK_c     ), kill)
 
    -- Refresh
    , ((modm .|. shiftMask, xK_r     ), refresh)
 
	-- vim-like navigation keys 
    , ((modm,                 xK_l ), sendMessage $ Go R)
    , ((modm,                 xK_h ), sendMessage $ Go L)
    , ((modm,                 xK_k ), sendMessage $ Go U)
    , ((modm,                 xK_j ), sendMessage $ Go D)
    , ((modm .|. shiftMask, xK_l ), sendMessage $ Swap R)
    , ((modm .|. shiftMask, xK_h ), sendMessage $ Swap L)
    , ((modm .|. shiftMask, xK_k ), sendMessage $ Swap U)
    , ((modm .|. shiftMask, xK_j ), sendMessage $ Swap D)

	-- and normal navigation keys
    , ((modm,                 xK_Right), sendMessage $ Go R)
    , ((modm,                 xK_Left ), sendMessage $ Go L)
    , ((modm,                 xK_Up   ), sendMessage $ Go U)
    , ((modm,                 xK_Down ), sendMessage $ Go D)
    , ((modm .|. shiftMask, xK_Right), sendMessage $ Swap R)
    , ((modm .|. shiftMask, xK_Left ), sendMessage $ Swap L)
    , ((modm .|. shiftMask, xK_Up   ), sendMessage $ Swap U)
    , ((modm .|. shiftMask, xK_Down ), sendMessage $ Swap D)

    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)
 
    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster  )
 
    -- Swap the focused window and the master window
    , ((modm .|. shiftMask, xK_Return), windows W.swapMaster)
 
    -- Shrink the master area
    , ((modm .|. controlMask,               xK_h     ), sendMessage Shrink)
 
    -- Expand the master area
    , ((modm .|. controlMask,               xK_l     ), sendMessage Expand)
 
    -- Shrink the slave area
    , ((modm .|. controlMask,               xK_j     ), sendMessage MirrorShrink)
 
    -- Expand the slave area
    , ((modm .|. controlMask,               xK_k     ), sendMessage MirrorExpand)

    -- toggle which display wacom follows
    , ((modm .|. controlMask,               xK_w     ), spawn "~/bin/wacom-move.sh left")
    , ((modm .|. controlMask,               xK_e     ), spawn "~/bin/wacom-move.sh right")
 
    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)
 
    -- Increment the number of windows in the master area
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))
 
    -- Deincrement the number of windows in the master area
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))

    -- Toggle borders for focused window
    , ((modm              , xK_b     ), withFocused toggleBorder)
 
    -- Restart xmonad
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
    ]
    ++
 
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++
 
    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_e, xK_w, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
 
 
------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
--
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $
 
    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))
 
    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))
 
    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))
 
    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]
 
------------------------------------------------------------------------
-- Layouts:
 
-- You can specify and transform your layouts by modifying these values.
-- If you change layout bindings be sure to use 'mod-shift-space' after
-- restarting (with 'mod-q') to reset your layout state to the new
-- defaults, as xmonad preserves your old layout settings by default.
--
-- * NOTE: XMonad.Hooks.EwmhDesktops users must remove the obsolete
-- ewmhDesktopsLayout modifier from layoutHook. It no longer exists.
-- Instead use the 'ewmh' function from that module to modify your
-- defaultConfig as a whole. (See also logHook, handleEventHook, and
-- startupHook ewmh notes.)
--
-- The available layouts.  Note that each layout is separated by |||,
-- which denotes layout choice.
--
myLayout =  frontpage |||  tiled ||| tiledmirrored ||| noBorders Full 
  where
    -- default tiling algorithm partitions the screen into two panes
    tiled   =  windowNavigation $ spacing 7 $ gaps [(U,0), (D,22), (L,0), (R,0)] $ ResizableTall nmaster delta ratio [] 

    -- needs to be defined here since mirror must be last
    tiledmirrored   =  windowNavigation $ spacing 7 $ gaps [(U,-7), (D,14), (L,-7), (R,-7)] $ Mirror $ ResizableTall nmaster delta ratio []

    frontpage   =  windowNavigation $ spacing 7 $ gaps [(U,5), (D,22), (L,300), (R,300)] $ Mirror $ ResizableTall nmaster delta ratio []


    -- The default number of windows in the master pane
    nmaster = 1
 
    -- Default proportion of screen occupied by master pane
    ratio   = 1/2
 
    -- Percent of screen to increment by when resizing panes
    delta   = 3/100


------------------------------------------------------------------------
-- Window rules:
 
-- Execute arbitrary actions and WindowSet manipulations when managing
-- a new window. You can use this to, for example, always float a
-- particular program, or have a client always appear on a particular
-- workspace.
--
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook = composeAll
    [ className =? "MPlayer"        --> doFloat
    , className =? "Conky"         --> doShift "2"
    , className =? "Conky"         --> doIgnore
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore 
    , isFullscreen  		   --> doFullFloat ]
 
------------------------------------------------------------------------
-- Event handling
 
-- Defines a custom handler function for X Events. The function should
-- return (All True) if the default handler is to be run afterwards. To
-- combine event hooks use mappend or mconcat from Data.Monoid.
--
-- * NOTE: EwmhDesktops users should use the 'ewmh' function from
-- XMonad.Hooks.EwmhDesktops to modify their defaultConfig as a whole.
-- It will add EWMH event handling to your custom event hooks by
-- combining them with ewmhDesktopsEventHook.
--
myEventHook = mempty
 
------------------------------------------------------------------------
-- Status bars and logging
 
-- Perform an arbitrary action on each internal state change or X event.
-- See the 'XMonad.Hooks.DynamicLog' extension for examples.
--
-- * NOTE: EwmhDesktops users should use the 'ewmh' function from
-- XMonad.Hooks.EwmhDesktops to modify their defaultConfig as a whole.
-- It will add EWMH logHook actions to your custom log hook by
-- combining it with ewmhDesktopsLogHook.
--
myLogHook = return ()
 
------------------------------------------------------------------------
-- Startup hook
 
-- Perform an arbitrary action each time xmonad starts or is restarted
-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize
-- per-workspace layout choices.
--
-- By default, do nothing.
--
-- * NOTE: EwmhDesktops users should use the 'ewmh' function from
-- XMonad.Hooks.EwmhDesktops to modify their defaultConfig as a whole.
-- It will add initialization of EWMH support to your custom startup
-- hook by combining it with ewmhDesktopsStartup.
--
myStartupHook = return ()
 
------------------------------------------------------------------------
-- Now run xmonad with all the defaults we set up.
 
-- Run xmonad with the settings you specify. No need to modify this.
--
main = xmonad defaults
 
-- A structure containing your configuration settings, overriding
-- fields in the default config. Any you don't override, will
-- use the defaults defined in xmonad/XMonad/Config.hs
--
-- No need to modify this.
--
defaults = defaultConfig {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,
 
      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,
 
      -- hooks, layouts
        layoutHook         = myLayout,
        manageHook         = myManageHook,
        handleEventHook    = myEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
    }


