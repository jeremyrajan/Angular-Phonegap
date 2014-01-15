<h1>Angular + Phonegap Framework with Yeoman (A<=>Y<=>P) </h1>

AYP is designed to create and build Mobile Apps using AngularJS with the help of Yeoman.

<h3>Why?</h3>

I have been looking for generators on Yeoman.com for phonegap+Angular but was never able to find 
a one which worked well for me (other than that they are really good :) ). So, I found a 1 step solution
to develop and build ANGULAR+PHONEGAP using YEOMAN without using generators. 

<h3>What?</h3>

AYP provides a basic angular seed app in AngularJS wrapped around Phonegap, solely for Mobile app development.

<h3>Requirements</h3>

Make sure you have following installed
<ul>
<li><a href="http://nodejs.org">NODE & NPM</a></li>
<li><a href="http://bower.io">Bower</a></li>
<li><a href="http://yeoman.io">Yeoman</a></li>
<li><a href="http://www.figlet.org">Figlet (optional)</li> Tip: If you have installed Brew, use "brew install figlet"
</ul>

<h3>How?</h3>

Using AYP is dead simple! Clone the repo to the folder you about to use for development. Run, 

	sh init.sh

=> This will install phonegap, angular seed app using Yeoman

<b>You can delete init.sh, after you have initialised the app (if needed).</b>

For building the app to "www" with "phonegap". Run,

	sh build.sh

=> This will build the app to 'www' directory with minifications and optimisations necessary.

That's it! You are ready to deploy...

<hr/>

Please let me know if any clarifications, @ jeremyrajan.gmail.com 
Contributions and suggestions are always welcome...