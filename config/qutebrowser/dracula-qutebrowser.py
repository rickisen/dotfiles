# Dracula color theme for qutebrowser by rickisen
# Based on nord theme

dracula = {
    'dracula0': '#282a36',
    'dracula1': '#181920',
    'dracula2': '#1f1f1f',
    'dracula3': '#44475a',
    'dracula4': '#f8f8f2',
    'dracula5': '#e0e0e0',
    'dracula6': '#ffb86c',
    'dracula7': '#6272a4',
    'dracula8': '#8be9fd',
    'dracula9': '#ff79c6',
    'dracula10': '#6272a4',
    'dracula11': '#ff5555',
    'dracula12': '#ffb86c',
    'dracula13': '#f1fa8c',
    'dracula14': '#50fa7b',
    'dracula15': '#bd93f9',
}

## Background color of the completion widget category headers.
c.colors.completion.category.bg = dracula['dracula10']

## Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = dracula['dracula0']

## Top border color of the completion widget category headers.
c.colors.completion.category.border.top = dracula['dracula0']

## Foreground color of completion widget category headers.
c.colors.completion.category.fg = dracula['dracula5']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = dracula['dracula0']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = dracula['dracula1']

## Text color of the completion widget.
c.colors.completion.fg = dracula['dracula4']

## Background color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.bg = dracula['dracula3']

## Bottom border color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.border.bottom = dracula['dracula3']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.item.selected.border.top = dracula['dracula3']

## Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = dracula['dracula6']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = dracula['dracula9']

## Color of the scrollbar in completion view
## Type: QssColor
c.colors.completion.scrollbar.bg = dracula['dracula1']

## Color of the scrollbar handle in completion view.
## Type: QssColor
c.colors.completion.scrollbar.fg = dracula['dracula5']

## Background color for the download bar.
## Type: QssColor
c.colors.downloads.bar.bg = dracula['dracula0']

## Background color for downloads with errors.
c.colors.downloads.error.bg = dracula['dracula11']

## Foreground color for downloads with errors.
c.colors.downloads.error.fg = dracula['dracula5']

## Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = dracula['dracula15']

## Color gradient interpolation system for download backgrounds.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'none'

## Background color for hints. Note that you can use a `rgba(...)` value
## for transparency.
## Type: QssColor
c.colors.hints.bg = dracula['dracula6']

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = dracula['dracula0']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = dracula['dracula10']

## Background color of the keyhint widget.
## Type: QssColor
c.colors.keyhint.bg = dracula['dracula1']

## Text color for the keyhint widget.
## Type: QssColor
c.colors.keyhint.fg = dracula['dracula5']

## Highlight color for keys to complete the current keychain.
## Type: QssColor
c.colors.keyhint.suffix.fg = dracula['dracula13']

## Background color of an error message.
## Type: QssColor
c.colors.messages.error.bg = dracula['dracula11']

## Border color of an error message.
## Type: QssColor
c.colors.messages.error.border = dracula['dracula11']

## Foreground color of an error message.
## Type: QssColor
c.colors.messages.error.fg = dracula['dracula5']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = dracula['dracula8']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = dracula['dracula8']

## Foreground color an info message.
## Type: QssColor
c.colors.messages.info.fg = dracula['dracula0']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = dracula['dracula12']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = dracula['dracula12']

## Foreground color a warning message.
## Type: QssColor
c.colors.messages.warning.fg = dracula['dracula5']

## Background color for prompts.
## Type: QssColor
c.colors.prompts.bg = dracula['dracula2']

# ## Border used around UI elements in prompts.
# ## Type: String
c.colors.prompts.border = '1px solid ' + dracula['dracula0']

## Foreground color for prompts.
## Type: QssColor
c.colors.prompts.fg = dracula['dracula5']

## Background color for the selected item in filename prompts.
## Type: QssColor
c.colors.prompts.selected.bg = dracula['dracula3']

## Background color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.bg = dracula['dracula10']

## Foreground color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.fg = dracula['dracula5']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = dracula['dracula15']

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = dracula['dracula5']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = dracula['dracula2']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = dracula['dracula5']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = dracula['dracula2']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = dracula['dracula5']

## Background color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.bg = dracula['dracula13']

## Foreground color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.fg = dracula['dracula1']

## Background color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.bg = dracula['dracula2']

## Foreground color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.fg = dracula['dracula5']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = dracula['dracula12']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = dracula['dracula5']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = dracula['dracula15']

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = dracula['dracula5']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = dracula['dracula5']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
c.colors.statusbar.url.error.fg = dracula['dracula11']

## Default foreground color of the URL in the statusbar.
## Type: QssColor
c.colors.statusbar.url.fg = dracula['dracula5']

## Foreground color of the URL in the statusbar for hovered links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = dracula['dracula8']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
c.colors.statusbar.url.success.http.fg = dracula['dracula5']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = dracula['dracula14']

## Foreground color of the URL in the statusbar when there's a warning.
## Type: QssColor
c.colors.statusbar.url.warn.fg = dracula['dracula12']

## Background color of the tab bar.
c.colors.tabs.bar.bg = dracula['dracula2']

## Background color of unselected even tabs.
c.colors.tabs.even.bg = dracula['dracula2']

## Foreground color of unselected even tabs.
c.colors.tabs.even.fg = dracula['dracula5']

## Color for the tab indicator on errors.
c.colors.tabs.indicator.error = dracula['dracula11']

## Color gradient start for the tab indicator.
# c.colors.tabs.indicator.start = dracula['violet']

## Color gradient end for the tab indicator.
# c.colors.tabs.indicator.stop = dracula['orange']

## Color gradient interpolation system for the tab indicator.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'none'

## Background color of unselected odd tabs.
c.colors.tabs.odd.bg = dracula['dracula2']

## Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = dracula['dracula5']

# ## Background color of selected even tabs.
c.colors.tabs.selected.even.bg = dracula['dracula4']

# ## Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = dracula['dracula0']

# ## Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = dracula['dracula4']

# ## Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = dracula['dracula0']

## Background color for webpages if unset (or empty to use the theme's
## color)
# c.colors.webpage.bg = dracula['dracula0']
