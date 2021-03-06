Feature: Validate API responses
    INSCRIPCION_CRUD Controlador Tipo Inscripcion
    probe JSON responses

Scenario Outline: To probe route code response /tipo_inscripcion
    When I send "<method>" request to "<route>" where body is json "<bodyreq>"
    Then the response code should be "<codres>"

    Examples:
    |method |route                         |bodyreq                       |codres         |
    |GET    |/v1/tipo_inscripcion          |./assets/requests/empty.json  |200 OK         |
    |GET    |/v1/tipo_inscripcio           |./assets/requests/empty.json  |404 Not Found  |
    |POST   |/v1/tipo_inscripcion/0        |./assets/requests/empty.json  |404 Not Found  |
    |POST   |/v1/tipo_inscripcion          |./assets/requests/empty.json  |400 Bad Request|
    |PUT    |/v1/tipo_inscripcio           |./assets/requests/empty.json  |404 Not Found  |
    |PUT    |/v1/tipo_inscripcion          |./assets/requests/empty.json  |400 Bad Request|
    |DELETE |/v1/tipo_inscripcio           |./assets/requests/empty.json  |404 Not Found  |
    |DELETE |/v1/tipo_inscripcion          |./assets/requests/empty.json  |404 Not Found  |


Scenario Outline: To probe response route /tipo_inscripcion       
    When I send "<method>" request to "<route>" where body is json "<bodyreq>"
    Then the response code should be "<codres>"      
    And the response should match json "<bodyres>"

    Examples: 
    |method |route                 |bodyreq                           |codres           |bodyres                         |
    |GET    |/v1/tipo_inscripcion  |./assets/requests/empty.json      |200 OK           |./assets/responses/Vok2.json    |
    |POST   |/v1/tipo_inscripcion  |./assets/requests/empty.json      |400 Bad Request  |./assets/responses/Ierr6.json   |
    |POST   |/v1/tipo_inscripcion  |./assets/requests/BodyGen1.json   |201 Created      |./assets/responses/Vok1.json    |
    |POST   |/v1/tipo_inscripcion  |./assets/requests/Nt1.json        |400 Bad Request  |./assets/responses/Ierr1.json   |
    |POST   |/v1/tipo_inscripcion  |./assets/requests/Nt2.json        |400 Bad Request  |./assets/responses/Ierr2.json   |
    |POST   |/v1/tipo_inscripcion  |./assets/requests/Nt3.json        |400 Bad Request  |./assets/responses/Ierr3.json   |
    |POST   |/v1/tipo_inscripcion  |./assets/requests/Nt4.json        |400 Bad Request  |./assets/responses/Ierr4.json   |
    |POST   |/v1/tipo_inscripcion  |./assets/requests/Nt5.json        |400 Bad Request  |./assets/responses/Ierr5.json   | 
    |PUT    |/v1/tipo_inscripcion  |./assets/requests/BodyRec2.json   |200 OK           |./assets/responses/Vok1.json    |
    |GETID  |/v1/tipo_inscripcion  |./assets/requests/BodyGen1.json   |200 OK           |./assets/responses/Vok1.json    |
    |DELETE |/v1/tipo_inscripcion  |./assets/requests/empty.json      |200 OK           |./assets/responses/Ino.json     |
