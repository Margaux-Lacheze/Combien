# Combien
#### Video Demo:  https://youtu.be/ouI_Ywjhnh4
#### Description:

This is Combien a multiple choices quizz app I made as a Project Final for CS50 from Harvard.
The language I used is Swift. I have been working for long on creating websites, I wanted to change and try application. Swift is the first language I learnt, thanks to "OpenClassrooms", a french remote course. It wa important for me to choose an OOP language since I want to work with it later.
A quizz is something fun to share with my friend (they actively participated to find questions). The design is very simple because I wanted to focus on the logic.
    I struggled a lot with XCode, the IDE I chose. In fact I have been stuck for a whole day because I didn't know the cmd + shift + k which permit to clean the build folder. Thanks to Facebook community I learnt. Apparently, Xcode is quite buggy and several times I was sure of my logic but the IDE didn't want to compile... 
    I already did a quiz but only with 3 choices and 1 view controller with a tutorial from Udemy. With Combien, I learnt how to deal with storyboard, their entry point, how to use different views (I applied MVC) and how to link them with segue. It have often been difficult but so rewarding when we finally succeed. Thus, Combien has 3 views Controller : one for the start, one for the question and on for the end of the quiz. Once the user finish the quiz, he can restart. I learnt to pass data from on controller to another with the dismiss and the present functions (thank you stack overflow !). And to go back to the first controller with unwind.
    Combien is also responsive. All icons, and all views can adapt to different screens. I create them first in Figma and then I used appicon to generate different sizes. I also used constraints in storyboard. However, Combien is done to play in portrait orientation, not landscape.
    Concerning the Model part :
        Questions is a basic struct for my quiz. It is finally relatively simple : a text, 4 possible choices only one good answer. Test is the brain of the quiz. It contains all the getters and setters I need and is mostly used in QuestionViewController. As I said, the logic is quite simple. The goal of this quiz is to be fun and for me it was the opportunity to learn a new language and how to use storyboards.
