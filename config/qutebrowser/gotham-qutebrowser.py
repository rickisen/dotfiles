# Gotham color theme for qutebrowser by rickisen
# Based on nord theme

# unused gotham colors '#1e6479', '#4e5166', '#33859E', 

gotham = {
    'gotham0': '#0c1014',
    'gotham1': '#11151c',
    'gotham2': '#091f2e',
    'gotham3': '#0a3749',
    'gotham4': '#99d1ce',
    'gotham5': '#d3ebe9',
    'gotham6': '#99d1ce',
    'gotham7': '#599cab',
    'gotham8': '#99d1ce',
    'gotham9': '#888ca6',
    'gotham10': '#195466',
    'gotham11': '#c23127',
    'gotham12': '#d26937',
    'gotham13': '#edb443',
    'gotham14': '#2aa889',
    'gotham15': '#b48ead',
}

## Background color of the completion widget category headers.
c.colors.completion.category.bg = gotham['gotham10']

## Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = gotham['gotham0']

## Top border color of the completion widget category headers.
c.colors.completion.category.border.top = gotham['gotham0']

## Foreground color of completion widget category headers.
c.colors.completion.category.fg = gotham['gotham5']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = gotham['gotham0']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = gotham['gotham1']

## Text color of the completion widget.
c.colors.completion.fg = gotham['gotham4']

## Background color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.bg = gotham['gotham3']

## Bottom border color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.border.bottom = gotham['gotham3']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.item.selected.border.top = gotham['gotham3']

## Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = gotham['gotham6']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = gotham['gotham13']

## Color of the scrollbar in completion view
## Type: QssColor
c.colors.completion.scrollbar.bg = gotham['gotham1']

## Color of the scrollbar handle in completion view.
## Type: QssColor
c.colors.completion.scrollbar.fg = gotham['gotham5']

## Background color for the download bar.
## Type: QssColor
c.colors.downloads.bar.bg = gotham['gotham0']

## Background color for downloads with errors.
c.colors.downloads.error.bg = gotham['gotham11']

## Foreground color for downloads with errors.
c.colors.downloads.error.fg = gotham['gotham5']

## Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = gotham['gotham15']

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
c.colors.hints.bg = gotham['gotham13']

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = gotham['gotham0']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = gotham['gotham10']

## Background color of the keyhint widget.
## Type: QssColor
c.colors.keyhint.bg = gotham['gotham1']

## Text color for the keyhint widget.
## Type: QssColor
c.colors.keyhint.fg = gotham['gotham5']

## Highlight color for keys to complete the current keychain.
## Type: QssColor
c.colors.keyhint.suffix.fg = gotham['gotham13']

## Background color of an error message.
## Type: QssColor
c.colors.messages.error.bg = gotham['gotham11']

## Border color of an error message.
## Type: QssColor
c.colors.messages.error.border = gotham['gotham11']

## Foreground color of an error message.
## Type: QssColor
c.colors.messages.error.fg = gotham['gotham5']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = gotham['gotham8']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = gotham['gotham8']

## Foreground color an info message.
## Type: QssColor
c.colors.messages.info.fg = gotham['gotham5']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = gotham['gotham12']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = gotham['gotham12']

## Foreground color a warning message.
## Type: QssColor
c.colors.messages.warning.fg = gotham['gotham5']

## Background color for prompts.
## Type: QssColor
c.colors.prompts.bg = gotham['gotham2']

# ## Border used around UI elements in prompts.
# ## Type: String
c.colors.prompts.border = '1px solid ' + gotham['gotham0']

## Foreground color for prompts.
## Type: QssColor
c.colors.prompts.fg = gotham['gotham5']

## Background color for the selected item in filename prompts.
## Type: QssColor
c.colors.prompts.selected.bg = gotham['gotham3']

## Background color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.bg = gotham['gotham15']

## Foreground color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.fg = gotham['gotham5']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = gotham['gotham15']

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = gotham['gotham5']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = gotham['gotham2']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = gotham['gotham5']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = gotham['gotham2']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = gotham['gotham5']

## Background color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.bg = gotham['gotham13']

## Foreground color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.fg = gotham['gotham1']

## Background color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.bg = gotham['gotham2']

## Foreground color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.fg = gotham['gotham5']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = gotham['gotham12']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = gotham['gotham5']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = gotham['gotham9']

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = gotham['gotham5']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = gotham['gotham5']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
c.colors.statusbar.url.error.fg = gotham['gotham11']

## Default foreground color of the URL in the statusbar.
## Type: QssColor
c.colors.statusbar.url.fg = gotham['gotham5']

## Foreground color of the URL in the statusbar for hovered links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = gotham['gotham8']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
c.colors.statusbar.url.success.http.fg = gotham['gotham5']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = gotham['gotham14']

## Foreground color of the URL in the statusbar when there's a warning.
## Type: QssColor
c.colors.statusbar.url.warn.fg = gotham['gotham12']

## Background color of the tab bar.
c.colors.tabs.bar.bg = gotham['gotham2']

## Background color of unselected even tabs.
c.colors.tabs.even.bg = gotham['gotham2']

## Foreground color of unselected even tabs.
c.colors.tabs.even.fg = gotham['gotham5']

## Color for the tab indicator on errors.
c.colors.tabs.indicator.error = gotham['gotham11']

## Color gradient start for the tab indicator.
# c.colors.tabs.indicator.start = gotham['violet']

## Color gradient end for the tab indicator.
# c.colors.tabs.indicator.stop = gotham['orange']

## Color gradient interpolation system for the tab indicator.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'none'

## Background color of unselected odd tabs.
c.colors.tabs.odd.bg = gotham['gotham2']

## Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = gotham['gotham5']

# ## Background color of selected even tabs.
c.colors.tabs.selected.even.bg = gotham['gotham4']

# ## Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = gotham['gotham0']

# ## Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = gotham['gotham4']

# ## Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = gotham['gotham0']

## Background color for webpages if unset (or empty to use the theme's
## color)
# c.colors.webpage.bg = gotham['gotham0']
