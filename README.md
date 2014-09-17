furry-dubstep
=============

half finished nginx two factor auth login 

so i rushed all this to get a working two factor auth port knock, probably going to script a hex converter before saving anything to the database because im to lazy to strip inputs its for my own network and im the only user so load is never going to be a problem...

was setup to test on the localhost so iptables blocks access unless the recent module sets session then it allows access to 8081, the "webpanel" which is a stub cp -ar of login at the minute

I was planning on making guis for most of the things i use on the command line on a daily basis but have been having trouble fixing directories to use for storage (running a liveiso and dynamic internal storage mount over my hardware is a pain) 

its far from perfect but needed to scribble the idea down before i forgot it so much stuff im trying to pull together at the minute, trying to create a migrating header node that from a static ip i can get all my liveusb nodes to rssh into using a none root sshd that any user can log into and get ro access to transmission/public folders... starting to ramble 

Ive been paying for git hosting for ages and never used it because I hate having to script / change all the file perms and uid / gid this is also a duplicate of the actual archiso private repo (has keys and things that shouldnt be public)

^ will add perms.sh so i can actually clone and use it 
