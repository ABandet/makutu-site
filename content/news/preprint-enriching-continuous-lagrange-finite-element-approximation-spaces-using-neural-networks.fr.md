+++
date = '2025-02-20T10:00:00+00:00'
draft = false
title = "Prépublication : Enrichir les espaces d'approximation d'éléments finis de Lagrange continus à l'aide de réseaux de neurones"
+++

Une nouvelle prépublication est disponible en ligne :

[Enriching continuous Lagrange finite element approximation spaces using neural networks](https://arxiv.org/abs/2502.04947)

**Résumé**

Ce travail présente une étude préliminaire combinant deux approches pour la résolution d'EDP : la méthode classique des éléments finis (FEM) et des techniques plus récentes basées sur les réseaux de neurones. En effet, ces dernières années, les réseaux de neurones informés par la physique (PINNs) sont devenus particulièrement intéressants pour résoudre rapidement de tels problèmes, notamment en haute dimension. Cependant, leur manque de précision constitue un inconvénient majeur, d'où l'intérêt de les combiner avec la FEM, pour laquelle des estimateurs d'erreur sont déjà connus. 

Le pipeline complet proposé ici consiste donc à modifier les espaces d'approximation FEM classiques en y intégrant des informations issues d'un *prior*, choisi ici comme la prédiction d'un réseau de neurones. D'une part, cette combinaison améliore et certifie la prédiction des réseaux de neurones pour obtenir une solution rapide et précise. D'autre part, des estimations d'erreur sont prouvées, montrant que de telles stratégies surpassent les méthodes classiques par un facteur qui dépend uniquement de la qualité du *prior*. Nous validons notre approche avec des résultats numériques obtenus pour ce travail préliminaire sur des problèmes paramétriques avec des géométries unidimensionnelles et bidimensionnelles. Ils démontrent que pour atteindre une cible d'erreur fixée, un maillage plus grossier peut être utilisé avec notre FEM améliorée par rapport à la méthode standard, ce qui conduit à un temps de calcul réduit, particulièrement pour les problèmes paramétriques.
