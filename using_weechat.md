## Account ##
> #### weechat ####
```
Create                            `register __password__`
Login                             `identify __password__`
list                              `account list`
add ICQ                           `account add oscar __id__ __password__`
add Yahoo                         `account add yahoo user@doamin __password__`
add Gtalk                         `account add jabber user@gmail.com __pass__ talk.google.com:5223:ssl`
add MSN                           `account add msn user@doamin __password__`
add Twitter
add Facebook account              `account add jabber user@gchat.facebook.com mypasswd`
Save                              `save`
```
> #### &bitlbee ####
```
Connect freenode                  `/connect irc.freenode.net`
Conneect oftc                     `/connect chat.oftc.org`
Save                              `/save`
```

## Keybindings ##
> ### Buffer ###
```
Previous / Next buffer            F5/F6
Clear                             `/buffer clear`
Close                             `/buffer close`
```
> > ### ~/.weechat/weechat.conf ###
```
[key]
ctrl-L = "/buffer clear"
ctrl-D = "/buffer close"
```

> ### Window ###
```
Split Window left / right         `:/window splitv`
Split Window top / bottom         `:/window splith`
Previous / Next window            F7/F8
Merge window                      `:/window merge`
```