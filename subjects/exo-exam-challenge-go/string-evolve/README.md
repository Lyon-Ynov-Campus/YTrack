Créez un programme StringEvolve qui prend une string comme argument et revoie une deuxieme string en sortie qui corespond a la premiere mais modifier selon la ponctuation de la manier suivante:

si ! les caractere de la string devront etre en majuscule 
attention a la jestion des espaces 

exemple: bonjour! -> BONJOUR!

si ? les caractere seront mis du dernier au premier au dernier 
sauf le ? qui devra se trouver a la fin

exemple: bonjour? -> ruojnob?

si . le premiere lettre et non le premiere caractere devra etre en majuscule 

exemple: bonjour. -> Bonjour.



exemple generale

bonjour! comment va tu? ca va.  
BONJOUR!ut av tnemmoc ? Ca va.

dfgndvnb?dsfhg?gdqs.  sfgsgf!fsd gb!
bnvdngfd?ghfsd?Gdqs.  SFGSGF!FSD GB!

okjkld! efgd! dfg !
OKJKLD! EFGD! DFG !

?sfdhdfsh?dqfhgsdf.b.b.
?hsfdhdfs?Dqfhgsdf.b.b.

zerzerg!!zerg.serg??"
ZERZERG!!zErg.gres??


pour se faire vous pouver utiliser 
string.split
fmt

