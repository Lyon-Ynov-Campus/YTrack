## Dummy Login

### Barème:
- Tests d'entrée / sortie: 10 points
- Mise en page: 4 points
- Cas d'erreurs: 2 points
- Clarté du code: 4 points

### Instructions
Le but de cet exercice est de créer une simple page d'inscription qui redirige sur une page d'accueil.<br>D'abord créer une structure **User** qui contiendra les éléments suivants:

- Firstname
- Lastname
- Email
- Password
- ConfirmPassword

Créer ensuite une variable globale **data** ou **myUser** de type `User`
Créez ensuite votre serveur sur le port 8080, qui implémentera deux routes:

- `/`: Qui sera une page de login, première page sur laquelle vous atterrissez.<br>
        Cette page doit contenir un formulaire (POST) avec les champs listé dans votre structure `User`, et un**bouton de submission Envoyer.** **Si les 2 mots de passes concordent, redirigez sur la page d'accueil**<br>
        Cette route implémentera la fonction suivante :<br>
        ```HandleLogin(w&nbsp;http.ResponseWriter,&nbsp;r&nbsp;*http.Request)```

- `/home`:&nbsp; Qui sera votre page principale.<br>
Cette page affichera un message de bienvenu ainsi que les informations:** Firstname, Lastname, Email**.<br>
Les informations rentrées dans le formulaire seront stockés dans la variable globale** data ou myUser** déclarée au préalable.<br>
Cette route implémentera la fonction suivante :<br>
`&nbsp; HandleHome(w&nbsp;http.ResponseWriter,&nbsp;r&nbsp;*http.Request)`

<br>
Enfin, via l'utilisation de CSS stylisez vos pages et amusez-vous un peu !
<h4><span class="" style="color: rgb(239, 69, 64);"><b>Tout devoir s'avérant être identique à celui d'un autre étudiant se verra attribué la note de 0.</b></span></h4><br>

**import autorisés**: <span style="font-size: 0.9375rem;">encoding/json,&nbsp;</span><span style="font-size: 0.9375rem;">fmt,&nbsp;<span style="font-size: 0.9375rem;">html/template,&nbsp;</span><span style="font-size: 0.9375rem;">net/http</span>

**ressources:&nbsp;**
- <a href="https://gowebexamples.com/http-server/" target="_blank">Server golang</a>
- <a href="https://git.ytrack.learn.ynov.com/ERUAUD/playground/src/branch/master/go/structures/main.go">Structures</a>
- <a href="https://www.w3schools.com/Css/default.asp">Help CSS</a>

![](https://i.imgur.com/SDcTd8A.gif)

<!-- <video controls="true"><source src="https://auvencecom-my.sharepoint.com/:v:/g/personal/v_riamon_ynov_com/ETCFu5vhTpxCgunSBIGcQ0sBpX9M3hM32Gba9Lva2GrCtA?e=aLXsEC">https://auvencecom-my.sharepoint.com/:v:/g/personal/v_riamon_ynov_com/ETCFu5vhTpxCgunSBIGcQ0sBpX9M3hM32Gba9Lva2GrCtA?e=aLXsEC</video>&nbsp;<br><p></p> -->