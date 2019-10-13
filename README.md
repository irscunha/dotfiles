# Arch Linux + I3-Gaps Dotfiles

## Useful configuration/comments

### Control+Shift+C/V working on URxvt

Comment these lines

```
! URxvt.keysym.m-c: perl:clipboard:copy
! URxvt.keysym.m-v: perl:clipboard:paste
```

Add these lines

```
URxvt.perl-ext-common: default,matcher, clipboard,url-select,keyboard-select
URxvt.keysym.Shift-Control-V: eval:paste_clipboard
URxvt.keysym.Shift-Control-C: eval:selection_to_clipboard
```

