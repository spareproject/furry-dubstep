furry-dubstep
=============



half finished nginx two factor auth login 

so i rushed all this to get a working two factor auth port knock, probably going to script a hex converter before saving anything to the database because im to lazy to strip input. its for my own network and im the only user so load is never going to be a problem...

was setup to test on the localhost so iptables blocks access unless the recent module sets session then it allows access to 8081, the "webpanel" which is a stub cp -ar of login at the minute

I was planning on making guis for most of the things i use on the command line on a daily basis but have been having trouble fixing directories to use for storage (running a liveiso and dynamic internal storage mount on my hardware is a pain) 

its far from perfect but needed to scribble the idea down before i forgot it, far to much stuff im trying to pull together at the minute, trying to create a migrating header node that from a static ip (probably scraping a twitter account) i can get all my liveusb nodes to rssh into using a none root sshd that any user can log into and get ro access to transmission/public folders... starting to ramble 

Ive been paying for git hosting for ages and never used it because I hate having to script / change all the file perms and uid / gid this is also a duplicate of the actual archiso private repo (has keys and things that shouldnt be public)

^ will add perms.sh so i can actually clone and use it 

so this actually requires ssmtp...

and Ive been building all my services around the idea of being rootless mostly because i plan on dumping a template webpanel for systemd-nspawn to run a load of rootless services in hardened containers.... offtopic
but this means nginx owns its own private key... and all the other stuff i can fix but this is a persistent problem that ive just been outright ignoring for some time now 

o and i really wanted a maps plugin to visualize a socket stat daemon so i can track session / auth chains in nmaps and all tcp connections with a traceroute/block/kill button... but i hate javascript to much... not that i cant do it i just refuse to only ever seen it used to treat users like cattle and sell off their data, plus i have javascript turned off and am mostly connected through tor if not on chromium. 

nginx cant curl ipinfo.io/ipaddress without timing out... and i think a geoip database is to big to fit on the iso?
so this thing is slightly dependent on me making an ss daemon 
