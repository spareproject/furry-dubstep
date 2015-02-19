furry-dubstep
=============

i know i should probably pick a more realistic language to do this in but im quick with bash at the minute because it meshes well with other things im doing

checking this works on git and hosting at the same time... 
log files are a total waste of data 

cant see this lasting very long as a git repo i have a habit of making them unusable pretty quickly : /
but worth a try 

just rembered how much i gutted this to make the other version : / 

ln -s /mnt/git/furry-dubstep /home/nginx
./perms.sh - so nginx / fcgiwrap can actually read any of this 

and im really inrested in researching into mitm attacks considering two factor auth doesnt really do much 
if you miss a trick and login in once your pretty screwed but assuming an mitm attack cant control 
the server response address i really want to setup some hard trolling honeypots - 

still relies on having multiple networks out / in from the same location and your login box being the only target
or hoping the attacker hasnt cracked a rooted cell tower while you use public wifi and your phone.
then theres the lulz of having to get a mitm check email address, server address etc out of your network on signup...
basically no pre shared keys no safe internet if you can get a verifiable crpyto channel between you 
and the server your using, ensure it isnt already owned along with the million other things that can go wrong then you might stand a chance.

^ should probably explain the crazy here i know how to setup pki / web of trust but im not planning on paying to use it and or ever trusting it
and the whole playing gov's against each other to obfuscate logs is only viable if you can country hop and setup you own key signing party without getting owned on the way round
firefox used to ship with check for ssl revocation turned off... as in we have pulled this key because its not safe to use, firefox says fuck it who cares
so im not expecting pki/web of trust to go around every available company to check that every key matches up meaning if a goverenment or organised crime can
pay off a certificate authority or enough of them to pass a validity check they can mitm you regardless
the extra network traffic that would be generated on a global scale to ensure that every member of a signing party agrees would be huge 

didnt really think of the fact i can probably blag my current setup to let archiso act as a signing party for internal hosted nspawn nodes...
still has the total fail of only having one node but should make this alot more interesting 

worse case can log mitms that have gone through increases recovery time for damage control
best case can auth with an account/server unknown to mitm then rick roll yourself so it never logs you in
might look at reverse authentication 

totally getting out of scope because people keep posting shit about goverenment spying basically your fucked
make a keyboard that can cache / crypt keystrokes has removable easy to eat / destroy pre shared keys + otp and never trust a networked computer again
1 no computer will ever know what you type in it 2 they cant torture you if you know nothing well they can and they probably will anyway
or make your own radio and see how arse raped you get in prison for breaking more laws that protect one of the only valid secure forms of comms
or attempt to make your own pki infrastructure without being owned multiple times along the way leaving a huge log trail jumping from country to country setting up secure channels 
or use the big shiny quantom lazerz that go pew pew 

so in short this is assuming your phone can be used as a safe point from prying eyes, which is even more lulz considering when i suggested the above
using android as an input method for secure comms on dirty nodes the defacto google search response was its to easy to own android over usb... never
looked into bluetooth / wifi but assuming its even worse (could try the usb condoms to allow only keystrokes out?)

so rant over back to the... pretty pointless mitm check still pretty viable to use one of the many tricks / try it enough times and one 
will go through phishing attempts and the fact that persistent auth cookies without fallbacks in place suck... 

cleaning all my code and updating things
made a new webpanel from scratch to show a current system view of my internal nspawn setup and all running services
but i like this one better or atleast the z-index header / footer with a page content div and two spacers 
going to push getting an easy email out without needing to leave passwords all over the place 

need to add multiple fcgiwrap sockets / users to mitigate and atleast attempt to split access control... 
^ but realistically this is my localhost testing playground

main reason for revisting... 
basically i got sick of transferable cookies so im going to implement cookies or fake it till i make it proof of concept style
to have a server side sanity check to manage stolen cookies

basically i get bored alot...
bobs a bit of a dick everybody hates bob
bob picks the lock on your house boots your computer copies over .mozzila .config/chromium to his laptop sets up a keylogger to get your password the next time you login then leaves
bob can now login as you regardless of two factor auth + unlock all your reauth with password security settings,

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
through your ip remotely to avoid bank geoip checks and probably pick up orders while hes there but that doesnt fit my scenario
and you suck for not using full disk encryption
they are other ways to do this 

i dont like the idea of persistent auth tokens that make 2 factor auth redundant and dont have any fallbacks or even a hint of a time out provided you login frequently
needs multi login attempt from single auth token regardless of network ip + alot of other stuff basically just want to poc some paranoid cookie settings 
ill do some hard research into all of this still assuming alot but having the constant fail of chromium closing and not wiping cookies i want some piece of mind 

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
