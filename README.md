<h1>Angular + Phonegap Framework with Yeoman (AYP) </h1>

AYP is designed to create and build Mobile Apps using AngularJS with the help of Yeoman.

<h3>What?</h3>

AYP provides a basic angular seed app in AngularJS wrapped around Phonegap, solely for Mobile app development.

<h3>Why?</h3>

I have been looking for generators on Yeoman.com for phonegap+Angular but was never able to find 
a one which worked well for me (other than that they are really good :) ). So, I found a 1 step solution
to develop and build ANGULAR+PHONEGAP using YEOMAN without using generators. 

<h3>Requirements</h3>

Windows

Download from here https://nodejs.org/en/download/

Mac

1) Install Brew
 ```
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
 ```

2) Install node
```
brew install node
```


<h3>How?</h3>

Using AYP is dead simple! Clone the repo to the folder you about to use for development. Run, 
	
	git clone https://github.com/jeremyrajan/Angular-Phonegap.git .

	sh init.sh

=> This will create phonegap app with angular seed app using Yeoman

<b>You can delete init.sh, after you have initialised the app (if needed).</b>

For building the app to "www" with "phonegap". Run,

	sh build.sh

=> This will build the app to 'www' directory with minifications and optimisations necessary.

That's it! You are ready to deploy...

<hr/>

Please let me know if any clarifications, at jeremyrajan[at]gmail.com 
<br/>
Contributions and suggestions are always welcome.