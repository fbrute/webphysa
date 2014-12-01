Feature: Voir la page Accueil

  Scenario: Visiter la page Accueil
    Given Je visite la page "Accueil"
    When Je clique sur le lien "Accueil"
    Then  Le titre de la page est "Département de Physique | Accueil"    

  Scenario: Visiter la page Enseignements a partir de la page Accueil
    Given Je visite la page "Accueil" 
    When  Je clique sur le lien "Enseignements" 
    Then  Le titre de la page est "Département de Physique | Enseignements"
    And  Je vois "Pourquoi démarrer un parcours en Physique ?"
    When  Je clique sur le lien "Accueil" 
    Then  Le titre de la page est "Département de Physique | Accueil"

  Scenario: Visiter la page Recherche à partir de la page Accueil
    Given Je visite la page "Accueil" 
    Then  Je clique sur le lien "Recherche" 
    Then  Le titre de la page est "Département de Physique | Recherche"
    Then  Je vois "Thématiques de Recherche"

  Scenario: Visiter la page Contacts
    Given Je visite la page "Accueil"
    When Je clique sur le lien "Contacts"
    Then  Le titre de la page est "Département de Physique | Contacts"
