
# Contenu

* [vim-node](https://github.com/moll/vim-node)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Pathogen.vim](https://github.com/tpope/vim-pathogen)


## [Vim-node](https://github.com/moll/vim-node)

Using 
-----
Open any JavaScript file inside a Node project and you're all set.

- Use `gf` inside `require("...")` to jump to source and module files.
- Use `[I` on any keyword to look for it in the current and required files.
- Use `:Nedit module_name` to edit the main file of a module.
- Use `:Nedit module_name/lib/foo` to edit its `lib/foo.js` file.
- Use `:Nedit .` to edit your Node projects main (usually `index.js`) file.

#### Want to customize settings for files inside a Node projects?

Use the `Node` autocommand. For example:
		```vim
				autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
		```

		Want `<C-w>f` to open the file under the cursor in a new vertical split?
		
		`<C-w>f` by default opens it in a horizontal split. To have it open vertically, drop this in your `vimrc`:

		```vim
				autocmd User Node
				  \ if &filetype == "javascript" |
				  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
				  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
				  \ endif
		```

## [VIM : Commandes de base](http://www.quesaco.org/Les-commandes-clavier-de-l-editeur-vim)

### Déplacement

Pour déplacer le curseur dans un document ouvert, vous devez être en mode commande. Si vous êtes en mode insertion, presse Esc pour passer en mode commande.

		h	Déplace le curseur d’un caractère sur le gauche.
		j	Déplace le curseur d’un caractère vers le bas.
		k	Déplace le curseur d’un caractère vers le haut.
		l	Déplace le curseur d’un caractère sur le droite.
		L	l en capitale. A précéder du nombre de ligne où déplacer le curseur, à partir du bas de l’écran. A ne pas confondre avec le texte. L’écran est ce qui apparaît dans la fenêtre.
		M	Déplace le curseur au milieu de l’écran, en début de ligne..
		0	Déplace le curseur en début de ligne courante. Chiffre 0, à ne pas confondre avec la lettre O en majuscule qui elle vous rajoute une ligne avant la position courante du curseur.
		$	Déplace le curseur en fin de ligne courante.
		b	Déplace le curseur au groupe de lettres précédent (mot, sans compter les apostrophes et les tirets).
		B	Déplace le curseur au mot précédent (tient compte des apostrophes et des tirets). A noter que pour b et B, vous pouvez précéder la commande du nombre de mots à parcourir. Par exemple, 8B renverra le curseur 8 mots avant la position courante, en tenant compte des apostrophes et tirets.
		w	Déplace le curseur au début du groupe de lettres suivant (mot, sans compter les apostrophes et les tirets).
		W	Déplace le curseur au début du mot suivant (tient compte des apostrophes et des tirets). A noter que pour w et W, vous pouvez précéder la commande du nombre de mots à parcourir. Par exemple, 8w renverra le curseur 8 mots après la position courante, sans tenir compte des apostrophes et des tirets.
		F	Identique W, mais se positionne en fin de mot.
		-	Déplace le curseur en début de chaîne de la ligne précédente.
		+	Déplace le curseur au début de la ligne suivante.
		%	Déplace le curseur sur le complément de bloc typographique. Par exemple, si le curseur est sur une parenthèse ouvrante, il sera envoyé sur la parenthèse fermant le bloc courant. Fonctionne avec ’

		’ (accolades), ’[]’ (crochets) et ’()’ (parenthèses).
		G	Aller à la ligne du texte. Seul, G vous envoie en fin de texte. Précédé du numéro de ligne, le curseur est envoyé sur cette ligne. Par exemple, 50G envoie le curseur en début de la 50ème ligne de votre texte.
		H	Aller à la ligne de l’écran. Fonctionne comme G mais ne concerne que l’écran, c’est à dire la partie visible de votre texte.
		|	Caractère pipe. Déplacer le curseur à la colonne n (préciser n avant le pipe, par exemple 5| pour déplacer le curseur sur le 5ème caractère de la ligne courante).
		`<char>	Aller au contexte marqué par le caractère <char> (voir ci-dessous).
		’ <char>	
		:k<char>	Marquer la position courante (le contexte) par le caractère <char>. Par exemple, entrez :ka marquera la position du curseur par la lettre ’a’. Plus loin, pour revenir à cette position ’a’, entrez en mode commande ’a ou `a.
		m<char>	’ idem :k<char>
		Q	Quitter le mode vi et passer en mode ex. On se retrouve en mode commande, sur la ligne de commande. Pour repasser en mode vi, dans cette ligne de commande, entrez ’vi’.
		
Vous pouvez également vous déplacer simplement en utilisant les touches de déplacement de curseur (flèches, haut, bas, ou top, etc.)..

### Rechercher

Pour effectuer une recherche dans le texte courant (celui affiché à l’écran de vi), vous devez être en mode commande.

		/<texte>	La barre oblique qui précède apparaît dans la ligne de recherche en bas d’écran lors de la frappe. Si elle apparaît dans le texte courant, c’est que vous êtes en mode insertion. Pour sortir de ce mode insertion, pressez Esc.
		 ?	Cherche l’occurrence avant la position courante du curseur.
		/	Après une première recherche (voir ci-dessus), cherche l’occurrence suivante.
		n	’ (idem)
		
### Edition

		a	Ajouter du texte après le curseur.
		A	Ajouter du texte à la fin de la ligne courante.
		i	Ajouter du texte à la position du curseur.
		I	i en capitale. Ajouter du texte au début de la ligne courante.
		J	Joint la ligne suivante à la fin de la ligne courante.
		o	Ajouter une nouvelle ligne après la position du curseur et se placer en mode insertion au début de cette nouvelle ligne.
		O	Ajouter une nouvelle ligne avant la position du curseur et se placer en mode insertion au début de cette nouvelle ligne.
		r	Remplace le caractère sous le curseur.
		C	Bascule en mode remplacement (au lieu d’insertion) pour la ligne courante jusqu’à appui de la touche Esc.
		R	’ idem C
		u	Restaurer (undo). Annuler derlière modification.
		U	Restaurer la ligne courante.
		Pour quitter le mode insertion et repasser en mode commande, pressez la touche Esc.
		:r	Ajoute le fichier courant au fichier courant, à la position du curseur.
		:r <filename>	Ajoute le fichier ’filename’ au fichier courant, à la position du curseur.
		.	Répète la dernière commande.
			Tilde. Modifie la casse (minuscule/majuscule) du caractère courant. Précéder d’un chiffre n pour modifier les n caractères suivants.
		&	Répète la dernière commande de substitution.
		>>	Décale le texte à droite. Si x avant, décale les x lignes suivantes, à partir de la position du curseur.
		>/<texte>	Décale le texte à droite jusqu’à rencontrer le texte <texte>.
		<<	Même principe que ’>>’, mais décalage à gauche.
		</<texte>	Même principe que ’>/<texte>’ avec décalage à gauche.
		
### Couper, Copier et Coller

Pour copier/coller du texte, vous devez être en mode commande. Si vous êtes en mode insertion, presse Esc pour passer en mode commande.

		cc	Supprime le texte de la ligne courante et positionne le curseur au début de cette ligne.
		d^	Couper du début de la ligne jusqu’au curseur.
		dd	Couper (supprimer) la ligne de texte qui se trouve sous le curseur. Si vous voulez couper plusieurs lignes en même temps, précédez dd du nombre de lignes concernées. Par exemple ’8dd’ coupe la ligne où se trouve le cuseur, et les 7 lignes suivantes, et les recopient dans le tampon. A noter que d8d et 8dd signifient la même chose.
		dw	Couper (supprimer) un mot. Dans le même esprit que ci-dessus, 4dw supprime les 4 mots qui suivent le curseur. 4dW prendra en compte les apostrophes et les tirets. A noter que d4w et 4dw signifient la même chose.
		d / <motif>	Coupe le texte à partir de la position courante du curseur et jusqu’à l’apparation du texte <motif>.
		yy	Copier la ligne de texte qui se trouve sous le curseur. Si vous voulez copier plusieurs lignes en même temps, précédez yy du nombre de lignes concernées. Par exemple ’8yy’ copie la ligne où se trouve le cuseur, et les 7 lignes suivantes, dans le tampon.
		x	Couper (supprimer) le caractère qui se trouve sous le curseur. Là aussi, vous pouvez faire précéder x du nombre de caractères souhaités.
		p	Coller le texte copié (ou coupé) précédemment après la ligne où se trouve le curseur. Ce texte peut être le caractère coupé par la commande x, la ligne supprimée par le commande dd ou la ligne copiée par yy.
		C	Sélectionne de la position courante à la fin de la ligne et permet la substitution du texte.
		D	Supprime le texte de la position courante du curseur à la fin de la ligne.
		
		
### Sauvegarder et Quitter

Pour sauvegarder ou quitter vi, vous devez être en mode commande. Si vous êtes en mode insertion, presse Esc pour passer en mode commande.

		:w	Sauvegarde le fichier courant. Le nom de fichier orginal est conservé.
		:w !	Force la sauvegarde du fichier courant (cas par exemple lorsqu’on lance vi via view). Le nom de fichier orginal est conservé.
		:w <filename>	Sauvegarde le fichier courant sous le nom de fichier <filename>.
		:w >> <filename>	Rajoute au fichier <filename> le fichier courant.
		:wq	Sauvegarde le fichier courant et quitte vi. Le nom de fichier orginal est conservé.
		:wq <filename>	Sauvegarde le fichier courant sous le nom de fichier <filename> et quitte vi.
		:q	Quitte vi. Si un fichier en cours a été modifié, vi prévient l’utilisateur.
		:q !	Abandon de vi. Quitte sans sauvegarder.
		
Voir également la commande :r qui permet de lire un fichier et de l’insérer dans l’édition courante.

### Commandes à l’aide de la touche <control>

Vous devez simultanément presser la touche Ctrl et le caractère de commande pour obtenir l’effet désiré, le tout en mode commande. Si vous êtes en mode insertion, presse Esc pour passer en mode commande.
Vous pouvez entrer le caractère en majuscule ou en minuscule. Le résultat est identique.

		^A	Renvoie le curseur sur la prochaine occurrence du mot se trouvant actuellement sous le curseur. Si manquant, recommence la recherche à partir du début du fichier.
		^B	Remonte d’une page. Pour remonter de plusieurs pages, précéder d’un chiffre : le nombre de pages souhaité.
		^D	Défilement de l’écran, déplace le curseur d’une ligne. Précédé d’un chiffre (nombre de lignes), la commande déplacera d’autant la position du curseur.
		^E	Identique ^d en essayant de ne pas déplacer le texte.
		^F	Pour remonter de plusieurs pages, déplace le curseur d’un écran. Précédé d’un chiffre (nombre d’écrans), la commande déplacera d’autant la position du curseur.
		^G	Affiche le nom du fichier, son état, la position du curseur (numéro de ligne courant sur nombre total de lignes).
		^H	Identique h. Déplace le curseur d’un caractère sur le gauche.
		^J	Identique j. Déplace le curseur d’un caractère vers le bas.
		^N	Déplace le curseur d’un caractère vers le bas. En mode insertion, appelle l’auto-complétion.
		^L	Rafaichissement (reconstruit l’affichage, pratique lorsque les messages systèmes redirigés sur votre terminal vous empêchent de travailler correctement).
		^R	’ (idem)
		^M	Identique +.
		^P	Identique k. Déplace le curseur d’un caractère vers le haut. En mode insertion, appelle l’auto-complétion.
		^T	Retour au dernier tag.
		^U	Défilement de l’écran, en arrière par bloc de lignes, du texte.
		^W	Déplacement entre écrans si présents.
		^Y	Défilement en arrière, ligne par ligne.
		^Z	Passe en mode pause. Suspend l’édition courante.

		
### Commandes (shell)

Certains caractères permettent de passer en mode commande, avec l’accord de l’administrateur de la machine.

		 : !	Le caractère ’ :’ (deux points) suivi du ’ !’ (point d’exclamation) permet d’afficher le résultat de la commande shell au bas de la fenêtre sans modifier votre fichier. Pressez Esc pour revenir au mode précédent.
		 !!	Deux points d’exclamation qui se suivent permettent d’insérer le résultat de la commande shell dans la fenêtre d’édition. Par exemple, ’ !!date’ insére la date courante à la position du curseur (remplace la ligne courante).

		 
### Substitutions

La ligne de commande propose un outil puissant de substitution :

		:s/celi/cela/	Placé sur la bonne ligne, ceci sera remplacé par cela. Les autres lignes ne sont pas modifiées.
		:$s/ceci/cela/	Le ’s’ précédé par ’$’ (symbole dollar) : la modification sera appliquée à la dernière ligne du fichier (substitution sélective).
		:%s/ceci/cela/	Le ’s’ précédé par ’%’ (symbole pour cent) : la modification sera appliquée à l’ensemble du fichier (substitution globale).

		
### Multifichiers

vim permet de travailler sur plusieurs fichiers en même temps. Par exemple en lançant sous shell ’vi fichier1 fichier2 fichier3’.

		:e#	Passe d’un fichier en mémoire au suivant.
		:n	Passe au fichier suivant dans la liste des fichiers ouverts.
		:e <fichier-Y>	Ouvre le fichier <fichier> en édition.
		:args	Liste des fichiers ouverts en mémoire.

