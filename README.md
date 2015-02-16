furry-dubstep
=============

cleaning all my code and updating things
made a new webpanel from scratch to show a current system view of my internal nspawn setup and all running services
but i like this one better or atleast the z-index header / footer with a page content div and two spacers 
going to push getting an easy email out without needing to leave passwords all over the place 

main reason for revisting... 
basically i got sick of transferable cookies so im going to implement cookies or fake it till i make it proof of concept style
to have a server side sanity check to manage stolen cookies

basically i get bored alot...
bobs a bit of a dick everybody hates bob
bob picks the lock on your house boots your computer copies over .mozzila .config/chromium to his laptop sets up a mitm to get your password the next time you login then leaves
bob can now login as you regardless of two factor auth + unlock all your google security settings and remove the entries from places you arent suppose to be in
pretty much persistent access that you cant track or atleast the time frame is incredibly small

server side cookie that gets decrypted against incoming ip 
client sends cookie... server checks its cookie against the incoming ip
any persistent auth token generated that comes from a new ip will fail
inconvenient you might ask? well fuck you

could do valid auth token from a new location forcing soft login (isnt any different from saving login id and password on the browser so you only need two factor auth)
but for cookies to work from the i want my laptop to autologin from any random public wifi point of view in my eyes is stupidity

im only doing this because from my current setup browsers are supposed to wipe cache on exit...
firefox has handled this for years 
chromium if closed via alt+shift+c in dwm ignores any settings you have and saves persistent auth tokens in clear text
short of sticking an fstab entry for tmpfs at .config/chromium im never going to have this close properly

i do know that bob being in your house could root the system making all this irrelevent proxy
through your ip to avoid bank geoip checks and probably pick up orders while hes there but that doesnt fit my scenario
and you suck for not using full disk encryption
they are other ways to do this 

i dont like the idea of persistent auth tokens that make 2 factor auth redundant and dont have any fallbacks or even a hint of a time out provided you login frequently

pretty much just ranting and repulling this to my computer 
##############################################


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

##############################################
