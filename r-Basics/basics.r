# ASSIGNATION
x <- 10
y = 5
assign("z", 3)   # this are the three way to assign in R 
assign("z", 1 + 3i)
print(typeof(z))
typeof(z)


# TYPES
class(1)        # "numeric"
typeof(1)       # "double"
class(18L)       # "integer"
typeof(1L)      # "integer"    cela s'explique mettre 1 ou 50 ou autre entier seulement affiche "double" avec la fonction typeof() 
                # mais l'ajout de L force le type a etre integer
typeof(18L)  # 
class("Hello guy ! salut hola")      # "character"
typeof("Hello bonjour !")      # "character"
class(TRUE)     # "logical"
class(NA)       # "logical" NA = Not available genre une valeur manquante considere comme booleen
class(NULL)     # "NULL" = pas de valeur
class("a")      # "character"
class(1+2i)     # "complex"
class(as.raw(1))# "raw"    on peut convertir en utilisant aussi as.character()  as.numeric()

is.numeric(102)
is.character("hola")
is.logical(TRUE)

as.numeric("3")
as.character(3)
as.logical(1)


# VECTEURS
v <- c(1, 2, 3)
v2 <- 1:5
v3 <- seq(1, 10, by = 2)
v4 <- rep(c("A", "B"), times = 3)
v5 <- rep(c("A", "B"), each = 3)
first_names <- rep(c("benoit", "hezou"), each = 2) 
rep(c("benoit", "hezou"), each = 2)  # "benoit" "benoit" "hezou"  "hezou" 
first_names_01 <- rep(c("benoit", "hezou"), times = 3)  # "benoit" "benoit" "hezou"  "hezou" 
print(first_names)
print(first_names_01)


# INDEXATION.
number <- c(10, 20, 30, -60, 94)
number[1]         # Sélectionne le 1er élément du vecteur (Attention !! (: en R, l'index commence à 1 !) on ne st pas en python !
number[c(1,5)]    # Sélectionne simultanément le 1er et le 5ème élément
number[-4]        # Exclut le 2ème élément (affiche tout sauf le 2ème)
number[number> 18]     # Filtrage conditionnel : ne garde que les éléments strictement supérieurs à 1
number[number< 38]      # affiche seulement les elements inferieurs a 38
number[2] <- 18  # Modifiction de la valeur du 2ème élément pour y mettre 18

# Noms
names(v) <- c("a", "b", "c")
v["b"]

# les OPERATEURS 
1 + 2  # addition  il y a aussi * - + ...
2^3    # la puissance
7 %% 3   # le modulo reste de la division entiere 
7 %/% 3   # la division entiere 
c(1,2,3) + c(10,20,30)     # somme de vecteurs 
c(9, 6, 10, 50) * c(2, 3, 5, 4)  
c(1,2,3) > 2  # affiche FALSE FALSE  TRUE
c(TRUE, FALSE) & c(TRUE, TRUE)   #  TRUE FALSE            logique AND
c(TRUE, FALSE) | c(TRUE, TRUE)   #   TRUE TRUE            logique OR
!TRUE  # comme ! represente le non on aura  ! TRUE = FALSE

# NA
x <- c(1, NA, 3)          # Crée un vecteur contenant une valeur manquante (NA)
mean(x)                   # Renvoie NA car le calcul est impossible en présence d'une valeur manquante
mean(x, na.rm = TRUE)     # Ignore les NA grâce à l'argument na.rm (Remove NA = TRUE) et calcule la moyenne (2)
is.na(x)                  # Renvoie un vecteur booléen indiquant où se trouvent les NA (FALSE, TRUE, FALSE)
sum(x, na.rm = TRUE)      # Calcule la somme en ignorant le NA (résultat : 4)
na.rm # est une fonction qui permet de supprimer ou d'ignorer une valeur manquante


# LES FONCTIONS
min(c(4, 1, 9)) # 1
max(c(4, 1, 9)) #  9
length(c(5, 10, 15, 20)) #  4
sum(c(1, 2, 3)) #  6
rev(c(1, 2, 3)) #  3, 2, 1
sort(c(5, 2, 8, 1)) #  1, 2, 5, 8



# AIDE
?mean    # nous donnne le role jouer par mean()
args(mean)
example(mean)  # donne des exemples pratiques d'utilisation de mean()
