# ce COURS EST GENERER PAR IA je l'ai appris et vous pouvew aussi librement vous en servir pour apprendre mais sachez aue vous devez ecrire vous meme vos programmes ou traiter des exercices pour retenir a long termec# ============================================================
# APPRENTISSAGE DU LANGAGE R
# Partie 2 : Les structures de données
# ============================================================
#
# Dans ce fichier, je reprends les notions vues dans le cours
# et je les applique à plusieurs exemples.
#
# L'objectif est de comprendre comment R stocke les données,
# comment y accéder et comment les manipuler.
#
# Les structures étudiées sont :
# - les vecteurs
# - les séquences
# - les matrices et les arrays
# - les listes
# - les facteurs
# - les data frames
#
# ============================================================


# ------------------------------------------------------------
# 1. LES VECTEURS
# ------------------------------------------------------------

# Un vecteur permet de stocker plusieurs valeurs du même type.
# La fonction c() sert à réunir plusieurs éléments.

notes <- c(14, 16, 12, 17, 15)

print(notes)

# Quelques informations sur notre vecteur.

class(notes)
typeof(notes)
length(notes)
is.vector(notes)

# La fonction length() donne le nombre d'éléments.
# Ici, on a cinq notes.

# On peut accéder à un élément grâce à sa position.
# Attention : en R, le premier élément porte l'indice 1.

notes[1]
notes[3]
notes[5]

# On peut aussi récupérer plusieurs éléments à la fois.

notes[c(1, 3, 5)]

# Une plage d'indices permet de récupérer une partie du vecteur.

notes[2:4]

# On peut exclure une position avec un indice négatif.

notes[-1]

# Cela renvoie toutes les notes sauf la première.


# ------------------------------------------------------------
# 2. CRÉER DES VECTEURS DE PLUSIEURS MANIÈRES
# ------------------------------------------------------------

# Première méthode : écrire directement les valeurs.

temperatures <- c(21.5, 22.3, 19.8, 24.1, 23.6)

# Deuxième méthode : utiliser seq() pour créer une séquence.

nombres <- seq(from = 0, to = 20, by = 2)

print(nombres)

# Ici, on commence à 0 et on ajoute 2 à chaque étape.
# La dernière valeur est 20.

# On peut aussi créer une séquence de valeurs décimales.

mesures <- seq(from = 0, to = 1, by = 0.1)

print(mesures)

# L'opérateur : crée une suite d'entiers.

jours <- 1:7

print(jours)

# On peut également compter à rebours.

compte_a_rebours <- 10:1

print(compte_a_rebours)

# Troisième méthode : rep() répète une valeur.

valeurs <- rep(5, times = 4)

print(valeurs)

# On peut répéter plusieurs valeurs.

cycle <- rep(c("A", "B", "C"), times = 2)

print(cycle)

# On peut aussi répéter chaque élément plusieurs fois.

repetitions <- rep(c(1, 2, 3), each = 3)

print(repetitions)


# ------------------------------------------------------------
# 3. OPÉRATIONS SUR LES VECTEURS
# ------------------------------------------------------------

# R permet de faire des calculs directement sur un vecteur.

prix <- c(100, 150, 200, 250)

# Ajouter 10 à chaque valeur.

prix + 10

# Augmenter chaque prix de 20 %.

prix * 1.20

# Diviser toutes les valeurs par 2.

prix / 2

# Additionner les éléments de deux vecteurs de même longueur.

prix_initial <- c(100, 200, 300)
augmentation <- c(10, 20, 30)

prix_initial + augmentation

# Calculer quelques statistiques simples.

sum(notes)
mean(notes)
min(notes)
max(notes)
sort(notes)

# sort() classe les valeurs dans l'ordre croissant.
# Pour obtenir l'ordre décroissant, on utilise decreasing.

sort(notes, decreasing = TRUE)

# On peut compter les valeurs qui satisfont une condition.

notes >= 15

# Cette expression renvoie TRUE ou FALSE pour chaque note.

sum(notes >= 15)

# Comme TRUE vaut 1 et FALSE vaut 0 dans ce calcul,
# la somme donne le nombre de notes supérieures ou égales à 15.


# ------------------------------------------------------------
# 4. LES TYPES ET LA CONVERSION AUTOMATIQUE
# ------------------------------------------------------------

# Un vecteur classique contient des éléments d'un même type.
# Si on mélange plusieurs types, R peut convertir les valeurs.

exemple_numerique <- c(10, 20, 30)

typeof(exemple_numerique)

# Si on mélange des nombres et des valeurs logiques,
# les valeurs logiques sont converties en nombres.

exemple_logique <- c(10, TRUE, FALSE)

print(exemple_logique)
typeof(exemple_logique)

# Si on ajoute du texte, tout le vecteur devient du texte.

exemple_texte <- c(10, TRUE, "R")

print(exemple_texte)
typeof(exemple_texte)

# Il faut retenir cette règle pour éviter les surprises :
# un vecteur ne conserve pas séparément plusieurs types.


# ------------------------------------------------------------
# 5. LES MATRICES
# ------------------------------------------------------------

# Une matrice est un tableau à deux dimensions.
# Tous ses éléments doivent être du même type.

matrice <- matrix(
  data = 1:9,
  nrow = 3,
  ncol = 3
)

print(matrice)

# Par défaut, R remplit la matrice colonne par colonne.

# Avec byrow = TRUE, le remplissage se fait ligne par ligne.

matrice_lignes <- matrix(
  data = 1:9,
  nrow = 3,
  ncol = 3,
  byrow = TRUE
)

print(matrice_lignes)

# On peut donner des noms aux lignes et aux colonnes.

rownames(matrice_lignes) <- c("Ligne_1", "Ligne_2", "Ligne_3")

colnames(matrice_lignes) <- c("Colonne_A", "Colonne_B", "Colonne_C")

print(matrice_lignes)

# Pour accéder à un élément, on indique sa ligne et sa colonne.

matrice_lignes[1, 2]

# Pour récupérer toute la première ligne.

matrice_lignes[1, ]

# Pour récupérer toute la deuxième colonne.

matrice_lignes[, 2]

# On peut aussi extraire un petit tableau.

matrice_lignes[1:2, 2:3]

# dim() donne le nombre de lignes et de colonnes.

dim(matrice_lignes)


# ------------------------------------------------------------
# 6. LES ARRAYS
# ------------------------------------------------------------

# Un array généralise la matrice.
# Il peut avoir trois dimensions ou davantage.

tableau_3d <- array(
  data = 1:12,
  dim = c(2, 3, 2)
)

print(tableau_3d)

# Ici, les dimensions sont :
# 2 lignes, 3 colonnes et 2 couches.

dim(tableau_3d)

# On accède à un élément avec trois indices.

tableau_3d[1, 2, 1]

# Les arrays sont utiles pour des données organisées
# sur plusieurs dimensions, mais les data frames seront
# plus pratiques pour notre futur projet d'analyse de données.


# ------------------------------------------------------------
# 7. LES LISTES
# ------------------------------------------------------------

# Contrairement à un vecteur classique, une liste peut
# contenir des objets de types et de tailles différents.

informations <- list(
  nom = "Amadou",
  age = 21,
  notes = c(14, 16, 17),
  admis = TRUE
)

print(informations)

# Pour récupérer un élément sous forme de liste :
# on utilise les doubles crochets [[ ]].

informations[[1]]

# On peut aussi utiliser le nom de l'élément.

informations[["nom"]]

# Le symbole $ est pratique lorsque l'élément possède un nom.

informations$age
informations$notes

# Les crochets simples [ ] renvoient une sous-liste.

informations["nom"]

# Ces deux opérations ne renvoient donc pas exactement
# le même type d'objet.

class(informations["nom"])
class(informations[["nom"]])

# On peut modifier un élément existant.

informations$age <- 22

# Et ajouter une nouvelle information.

informations$ville <- "Kenitra"

print(informations)

# Une liste est particulièrement pratique pour regrouper
# plusieurs informations liées à un même objet.


# ------------------------------------------------------------
# 8. LES FACTEURS
# ------------------------------------------------------------

# Un facteur sert à représenter une variable catégorielle.
# Par exemple : une filière, une machine ou un niveau.

filieres <- factor(
  c("Informatique", "Industriel", "Informatique",
    "Mecanique", "Industriel")
)

print(filieres)

# levels() permet de connaître les modalités possibles.

levels(filieres)

# On peut compter les observations de chaque catégorie.

table(filieres)

# On peut imposer un ordre précis aux catégories.

niveaux <- ordered(
  c("Moyen", "Faible", "Eleve", "Moyen"),
  levels = c("Faible", "Moyen", "Eleve")
)

print(niveaux)

# L'ordre défini ici est important :
# Faible < Moyen < Eleve.
#
# Il ne dépend donc pas de l'ordre alphabétique.

levels(niveaux)


# ------------------------------------------------------------
# 9. LES DATA FRAMES : CRÉATION
# ------------------------------------------------------------

# Le data frame est une structure essentielle en analyse
# de données. Chaque ligne représente une observation.
# Chaque colonne représente une variable.
#
# Nous allons utiliser un exemple d'étudiants.

etudiants <- data.frame(
  Nom = c("Amadou", "Sara", "Yao", "Fatou", "Koffi"),
  Age = c(21, 22, 20, 21, 23),
  Note = c(16, 14, 17, 15, 12),
  Filiere = c(
    "Informatique",
    "Industriel",
    "Informatique",
    "Mecanique",
    "Industriel"
  ),
  Admis = c(TRUE, TRUE, TRUE, TRUE, FALSE)
)

print(etudiants)

# Vérifier que l'objet est bien un data frame.

is.data.frame(etudiants)

# Examiner sa structure et ses dimensions.

class(etudiants)
str(etudiants)
dim(etudiants)

# Nombre de lignes et de colonnes.

nrow(etudiants)
ncol(etudiants)

# Noms des colonnes.

names(etudiants)

# Aperçu des premières et dernières lignes.

head(etudiants)
tail(etudiants)

# summary() fournit un résumé adapté aux colonnes.
# Il affiche notamment des statistiques pour les variables
# numériques et les effectifs pour les variables catégorielles.

summary(etudiants)


# ------------------------------------------------------------
# 10. LES DATA FRAMES : ACCÉDER AUX COLONNES
# ------------------------------------------------------------

# Il existe plusieurs façons de récupérer une colonne.

etudiants$Nom

etudiants[["Nom"]]

etudiants[, "Nom"]

# Pour récupérer plusieurs colonnes.

etudiants[, c("Nom", "Note")]

# Pour obtenir une seule colonne en conservant
# explicitement la structure de data frame.

etudiants[, "Note", drop = FALSE]

# Cette dernière forme est pratique lorsqu'on veut conserver
# un tableau, même s'il ne contient qu'une seule colonne.


# ------------------------------------------------------------
# 11. LES DATA FRAMES : ACCÉDER AUX LIGNES
# ------------------------------------------------------------

# Le format général est :
# data_frame[ligne, colonne]

# Première ligne complète.

etudiants[1, ]

# Troisième ligne complète.

etudiants[3, ]

# La note de la deuxième personne.

etudiants[2, "Note"]

# Les trois premières lignes.

etudiants[1:3, ]

# Les lignes 2 à 4, uniquement pour les colonnes Nom et Note.

etudiants[2:4, c("Nom", "Note")]

# On peut également utiliser des conditions pour sélectionner
# les lignes qui nous intéressent.

etudiants[etudiants$Note >= 15, ]

# Ici, seules les personnes ayant au moins 15 sont conservées.


# ------------------------------------------------------------
# 12. LES DATA FRAMES : AJOUTER DES COLONNES
# ------------------------------------------------------------

# On peut créer une nouvelle variable à partir des colonnes
# déjà présentes dans le tableau.

etudiants$Mention <- ifelse(
  etudiants$Note >= 16,
  "Tres bien",
  "A ameliorer"
)

print(etudiants)

# Créons maintenant une colonne contenant les notes sur 100.

etudiants$Note_sur_100 <- etudiants$Note * 5

print(etudiants)

# On peut également ajouter une colonne avec la même valeur
# pour toutes les lignes.

etudiants$Etablissement <- "ENSA"

print(etudiants)

# Une nouvelle colonne doit généralement contenir une valeur
# par ligne, ou une valeur qui peut être répétée proprement.


# ------------------------------------------------------------
# 13. LES DATA FRAMES : MODIFIER ET SUPPRIMER
# ------------------------------------------------------------

# Modifions la note du premier étudiant.

etudiants$Note[1] <- 17

# Vérifions le résultat.

etudiants[1, ]

# On peut remplacer plusieurs valeurs à la fois.

etudiants$Note[etudiants$Note < 10] <- 10

# Cette instruction remplace les notes inférieures à 10.
# Dans notre exemple, aucune note n'est concernée.

# Pour supprimer une colonne, on lui affecte NULL.

etudiants$Etablissement <- NULL

print(etudiants)


# ------------------------------------------------------------
# 14. LES DATA FRAMES : FILTRER LES OBSERVATIONS
# ------------------------------------------------------------

# Un filtrage consiste à conserver certaines lignes.

bons_resultats <- etudiants[etudiants$Note >= 15, ]

print(bons_resultats)

# On peut combiner plusieurs conditions avec &.
# Ici : note supérieure ou égale à 15 ET âge inférieur ou égal à 21.

selection <- etudiants[
  etudiants$Note >= 15 & etudiants$Age <= 21,
]

print(selection)

# Avec |, une seule des deux conditions doit être vraie.

autre_selection <- etudiants[
  etudiants$Filiere == "Informatique" |
    etudiants$Note >= 16,
]

print(autre_selection)

# %in% permet de vérifier l'appartenance à plusieurs catégories.

filtre_filiere <- etudiants[
  etudiants$Filiere %in% c("Informatique", "Mecanique"),
]

print(filtre_filiere)


# ------------------------------------------------------------
# 15. LES DATA FRAMES : TRIER LES DONNÉES
# ------------------------------------------------------------

# order() renvoie l'ordre des indices permettant de trier
# les observations selon une colonne.

classement <- etudiants[order(etudiants$Note), ]

print(classement)

# Pour trier les notes de la plus grande à la plus petite.

classement_decroissant <- etudiants[
  order(etudiants$Note, decreasing = TRUE),
]

print(classement_decroissant)

# On peut aussi trier selon deux critères.
# D'abord par filière, puis par note décroissante.

classement_multiple <- etudiants[
  order(etudiants$Filiere, -etudiants$Note),
]

print(classement_multiple)


# ------------------------------------------------------------
# 16. LES DATA FRAMES : STATISTIQUES SIMPLES
# ------------------------------------------------------------

# Une fois les données organisées dans un data frame,
# on peut calculer des statistiques sur ses colonnes.

mean(etudiants$Note)
median(etudiants$Note)
min(etudiants$Note)
max(etudiants$Note)
sd(etudiants$Note)

# table() compte les observations par catégorie.

table(etudiants$Filiere)

# On peut compter les étudiants admis et non admis.

table(etudiants$Admis)

# Pour calculer une moyenne par filière, aggregate()
# permet de regrouper les observations selon une variable.

aggregate(
  Note ~ Filiere,
  data = etudiants,
  FUN = mean
)

# Note ~ Filiere signifie que l'on étudie Note selon Filiere.
# FUN = mean indique que l'on calcule la moyenne de chaque groupe.


# ------------------------------------------------------------
# 17. LES VALEURS MANQUANTES DANS UN DATA FRAME
# ------------------------------------------------------------

# Dans un vrai jeu de données, certaines informations
# peuvent être absentes. R représente ces valeurs par NA.

donnees_test <- data.frame(
  Machine = c("M1", "M2", "M3", "M4"),
  Temperature = c(75, 80, NA, 72),
  Defauts = c(3, NA, 5, 2)
)

print(donnees_test)

# is.na() permet de repérer les valeurs manquantes.

is.na(donnees_test)

# Compter les valeurs manquantes de chaque colonne.

colSums(is.na(donnees_test))

# Calculer une moyenne en ignorant les valeurs manquantes.

mean(donnees_test$Temperature, na.rm = TRUE)

# Sans na.rm = TRUE, mean() renverrait NA ici.

# Pour sélectionner les lignes dont la température est connue.

donnees_completes <- donnees_test[
  !is.na(donnees_test$Temperature),
]

print(donnees_completes)


# ------------------------------------------------------------
# 18. PETIT EXEMPLE : ANALYSE DE DONNÉES INDUSTRIELLES
# ------------------------------------------------------------

# Maintenant, utilisons les mêmes notions dans un contexte
# proche d'un projet d'analyse de données industrielles.
#
# Les données ci-dessous sont fictives. Elles servent seulement
# à s'entraîner aux manipulations de data frames.

production <- data.frame(
  Machine = c("M1", "M2", "M1", "M3", "M2", "M3"),
  Jour = 1:6,
  Quantite = c(120, 100, 135, 90, 110, 105),
  Defauts = c(4, 7, 3, 8, 5, 6),
  Temperature = c(70, 82, 72, 88, 80, 85)
)

print(production)

# Vérifions la structure du jeu de données.

str(production)

# Calculons le taux de défaut pour chaque observation.
# On divise le nombre de pièces défectueuses par la quantité
# produite, puis on multiplie par 100.

production$Taux_defauts <- (
  production$Defauts / production$Quantite
) * 100

print(production)

# Quelle est la quantité totale produite ?

sum(production$Quantite)

# Quelle est la température moyenne ?

mean(production$Temperature)

# Quelle machine a produit le plus de pièces au total ?
# aggregate() calcule ici la somme de la production par machine.

production_par_machine <- aggregate(
  Quantite ~ Machine,
  data = production,
  FUN = sum
)

print(production_par_machine)

# Quelle machine présente le plus de défauts au total ?

defauts_par_machine <- aggregate(
  Defauts ~ Machine,
  data = production,
  FUN = sum
)

print(defauts_par_machine)

# Observons uniquement les situations où la température
# dépasse 80 degrés.

temperatures_elevees <- production[
  production$Temperature > 80,
]

print(temperatures_elevees)

# Regardons les observations où le taux de défauts dépasse 5 %.

taux_eleve <- production[
  production$Taux_defauts > 5,
]

print(taux_eleve)

# Attention : une association entre température et défauts
# ne prouve pas que la température est la cause des défauts.
# Il faudrait une analyse plus approfondie pour conclure.


# ------------------------------------------------------------
# 19. EXEMPLE : CONSTRUIRE UN DATA FRAME À PARTIR DE VECTEURS
# ------------------------------------------------------------

# Il est fréquent de recevoir les différentes variables
# séparément avant de construire le tableau final.

machines <- c("M1", "M2", "M3", "M4", "M5")
quantites <- c(120, 105, 140, 95, 115)
temps_cycle <- c(32.5, 35.2, 30.1, 38.4, 34.0)
taux_rebut <- c(2.1, 3.5, 1.8, 4.2, 2.7)

analyse_machines <- data.frame(
  Machine = machines,
  Quantite = quantites,
  Temps_cycle = temps_cycle,
  Taux_rebut = taux_rebut
)

print(analyse_machines)

# Ajoutons une colonne qui indique si la production
# dépasse un objectif de 110 unités.

analyse_machines$Objectif_atteint <- (
  analyse_machines$Quantite >= 110
)

print(analyse_machines)

# Sélectionnons les machines qui ont atteint l'objectif.

machines_performantes <- analyse_machines[
  analyse_machines$Objectif_atteint,
]

print(machines_performantes)

# Enfin, regardons le temps de cycle moyen.

mean(analyse_machines$Temps_cycle)

# Ce genre de tableau pourra servir de base à un futur projet
# d'analyse de production, de qualité ou de performance.


# ------------------------------------------------------------
# 20. BILAN DU CHAPITRE
# ------------------------------------------------------------

# Les vecteurs permettent de stocker des séries de valeurs.
# seq() et rep() facilitent leur création.
#
# Les matrices et les arrays organisent les valeurs
# sur deux dimensions ou davantage.
#
# Les listes permettent de regrouper des objets différents.
#
# Les facteurs représentent les catégories et leurs niveaux.
#
# Les data frames organisent les données en lignes et colonnes.
# On peut extraire, modifier, filtrer et trier leurs données.
#
# En analyse de données, il est essentiel de savoir :
# - inspecter un tableau avec str(), head() et summary()
# - sélectionner des lignes et des colonnes
# - créer de nouvelles variables
# - filtrer avec des conditions
# - calculer des statistiques simples
# - repérer les valeurs manquantes
#
# La suite logique sera d'apprendre à importer des fichiers CSV,
# à nettoyer les données et à réaliser des visualisations.

# ======================== FIN DU FICHIER =====================
