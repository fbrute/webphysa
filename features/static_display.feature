Feature: Voir la page Accueil

  Scenario: Visiter la page Accueil
    Given Je visite la page "Accueil"
    When  Je clique sur le lien "Accueil"
    Then  Le titre de la page est "Département de Physique"    
    Then  Le titre de la page n' est pas "Département de Physique | Accueil"    
    And   Je vois un lien vers "Accueil" 
    And   Je vois un lien vers "Recherche" 
    And   Je vois un lien vers "Enseignements" 
    And   Je vois un lien vers "Contacts" 
    And   Je vois un lien vers "Aide" 

  Scenario: Visiter la page Enseignements a partir de la page Accueil
    Given Je visite la page "Accueil" 
    When  Je clique sur le lien "Enseignements" 
    Then  Le titre de la page est "Département de Physique | Enseignements"
    And  Je vois "Pourquoi démarrer un parcours en Physique ?"

  Scenario: Visiter la page Recherche à partir de la page Accueil
    Given Je visite la page "Accueil" 
    When  Je clique sur le lien "Recherche" 
    Then  Le titre de la page est "Département de Physique | Recherche"
    And  Je vois "Thématiques de Recherche"

  Scenario: Visiter la page Contacts
    Given Je visite la page "Accueil"
    When Je clique sur le lien "Contacts"
    Then  Le titre de la page est "Département de Physique | Contacts"
    And  Je vois "Secrétariat"

  Scenario: Visiter la page Aide
    Given Je visite la page "Accueil"
    When Je clique sur le lien "Aide"
    Then Le titre de la page est "Département de Physique | Aide"
    And  Je vois "France-Nor" 
