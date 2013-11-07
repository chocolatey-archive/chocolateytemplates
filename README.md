chocolateytemplates
===================

The templates …
  
  
… it’s all about the templates.

##Welcome to the simple way of creating chocolatey packages
Take a look at this repository (note the _templates folder).
Now open a command line, navigate to your source code top level folder and type the following:
  
```cmd
 cinst warmup
 warmup addTextReplacement __CHOCO_PKG_OWNER_NAME__ "Your Name"
 warmup addTextReplacement __CHOCO_PKG_OWNER_REPO__ "Your Repository"
 warmup addTextReplacement __CHOCO_AUTO_PKG_OWNER_REPO__ "Your Choco Automatic Packages Repository (could be same as other)"
 git clone https://github.com/chocolatey/chocolateytemplates.git
 cd chocolateytemplates\_templates
 warmup addTemplateFolder chocolatey "%cd%\chocolatey"
 warmup addTemplateFolder chocolatey3 "%cd%\chocolatey3"
 warmup addTemplateFolder chocolateyauto "%cd%\chocolateyauto"
 warmup addTemplateFolder chocolateyauto3 "%cd%\chocolateyauto3"
```
  
 * The package maintainer (owner) name (__CHOCO_PKG_OWNER_NAME__) would be you. 
 * Your packages repository (__CHOCO_PKG_OWNER_REPO__) is part of a github repo just **ferventcoder/nugetpackages** if your repository is https://github.com/ferventcoder/nugetpackages. This is only used for image urls.
 * Your chocolatey automatic packages repository (__CHOCO_AUTO_PKG_OWNER_REPO__) could be the same as your regular packages repository. This is also the same as package maintainer (owner) repo. This is only used for image urls.  

Now whenever you want to create a new package you just open a command line and navigate to your packages repository source code folder (or install stexbar `cinst stexbar` and just hit Ctrl+M from explorer).  
  
```cmd
 warmup templateName packageName
```
  
as in  
  
```cmd
 warmup chocolatey3 notepadplusplus
```  
  