Feature: Voir la page Accueil
  Scenario: Voir la page Accueil
    Given Je visite la page Accueil
    Then Je devrais voir "Bienvenue au Département de Physique"
    And  Je devrais voir un lien vers "Université des Antilles"
