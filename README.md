# CS5200FinalProject

Name of project: Vet Appointment Management System

Name of Team: Team 6

Team members: Yiqian Deng, Dongzi Wang, Xiaoqing Qiao, Yuanyuan Zhou

Description: This is a clinic vet appointment system which allow petOwners to make appointment with different Veterinary as needed.

Code Repo: https://github.com/YiqianDeng/CS5200FinalProjectRepo2

UML link: [UML](src/db_design_final_project_UML.pdf)

Remote DB link: mysql://bc3b7a2577a2bf:36e53dba@us-cdbr-east-04.cleardb.com/heroku_377296b61b76ec8?reconnect=true

Description of user data model: Pet, PetOwner, Vet

Description of the two domain object data models: Availability, Reservation, History, Service, reserveService, historyService

Relationships:

- user to domain: Pet -> History(1 to many), pet -> Reservation(1 to many), Vet -> availability(1 to many), Vet -> Reservation(1 to many)

- domain to domain: reservation -> service (many to many), history -> service(many to many)

- user to user: PetOwner -> Pet (one to many)

- inheritance: Vet and PetOwner inherence from Person

- enumeration: ServiceName

Description of the user interface requirements:
