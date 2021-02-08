# License: GNU GPL version 3
# This is a modification of Roman Zimbelmann's default ranger colorscheme.

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *


class Monokai(ColorScheme):
    progress_bar_color = 42

    def use(self, context):
        fg, bg, attr = default_colors
        fg = 255

        if context.reset:
            return fg, bg, attr

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                fg = 121
            if context.border:
                fg = 254
            if context.media:
                if context.image:
                    fg = 42
                else:
                    fg = 144
            if context.container:
                fg = 135
            if context.directory:
                attr |= bold
                fg = 140
            elif context.executable and not \
                    any((context.media, context.container,
                         context.fifo, context.socket)):
                attr |= bold
                fg = 140
            if context.socket:
                attr |= bold
                fg = 135
            if context.fifo or context.device:
                fg = 193
                if context.device:
                    attr |= bold
            if context.link:
                fg = context.good and 135 or 161
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg == 161:
                    fg = 252
                else:
                    fg = 161
            if not context.selected and (context.cut or context.copied):
                fg = 233
                attr |= bold
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = 121
            if context.badinfo:
                if attr & reverse:
                    bg = 161
                else:
                    fg = 161

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = context.bad and 161 or 42
            elif context.directory:
                fg = 39
            elif context.tab:
                if context.good:
                    bg = green
            elif context.link:
                fg = 140

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 177
                elif context.bad:
                    fg = 161
            if context.marked:
                attr |= bold | reverse
                fg = 121
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 161
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 255
                attr &= ~bold
            if context.vcscommit:
                fg = 47
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 135

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 161
            elif context.vcschanged:
                fg = 161
            elif context.vcsunknown:
                fg = 161
            elif context.vcsstaged:
                fg = 140
            elif context.vcssync:
                fg = 140
            elif context.vcsignored:
                fg = 252

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 140
            elif context.vcsbehind:
                fg = 161
            elif context.vcsahead:
                fg = 135
            elif context.vcsdiverged:
                fg = 161
            elif context.vcsunknown:
                fg = 161

        return fg, bg, attr
