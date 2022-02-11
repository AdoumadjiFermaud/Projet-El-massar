use [SOCIETE EL-MASSAR]
insert into agents(id_agent, nom, prenom, adresse) values(2, 'kevin', 'mogota', 'farcha')

insert into agents values(3, 'elvice', 'foba', 'farcha')

select * from agents


select * from categorie_garages
insert into categorie_garages values(24, 'toyota', 'honda')

insert into categorie_garages values(22, 'corola', 'haojue')

insert into categorie_garages values(10, 'pegeau', 'royal')

select * from categorie_garages


select * from appartements


select * from clients

insert into clients values(1, 'idris', 'mht', 'goudji', 'professionnel')

insert into clients values(2, 'cendrillon', 'bekas', 'mardjandjafak', 'particulier')

insert into clients values(3, 'fermaud', 'adoumadji', 'farcha', 'particulier')


select * from etages

insert into etages values(1, 'niveau1', 15)

insert into etages values(2, 'niveau2', 25)

insert into etages values(3, 'niveau3', 05)


select * from type_appartements

insert into type_appartements values(01, 'une personne', 'plusieurs personnes') 

insert into type_appartements values(02, 'personne', 'deux personnes')

insert into type_appartements values(03, 'personne', 'deux personnes')


select * from appartements

insert into appartements values(12, 'l01', 001, 'ndjamena', 'tchad', 'batiment1', 1, 2, 3, 2)

insert into appartements values(14, 'l02', 02, 'bangui', 'centrafrique', 'batiment1', 1, 2, 3, 2)

insert into appartements values(16, 'l03', 003, 'douala', 'cameroun', 'batiment1', 1, 2, 3, 2)


select * from type_garages

insert into type_garages values(01, 'deux a deux', 'plat')

insert into type_garages values(02, 'deux a deux', 'plat')

insert into type_garages values(03, 'deux a deux', 'plat')


select * from residences

insert into residences values(1, 'les collines dorees', 'ndjamena', 'senior', 'dembe', 12, 2)

insert into residences values(2, 'cote mer', 'kelo', 'tourisme', 'dembe', 12, 3)

insert into residences values(3, 'les collines dorees', 'yaounde', 'senior', 'goudji', 12, 1)


insert into garages values(1, 'garage1', 17, 2, 3)

insert into garages values(2, 'garage1', 25, 3, 3)

insert into garages values(3, 'garage1', 27, 3, 2)


select * from disposer

insert into  disposer values(11, 001,3)

insert into  disposer values(12, 001,2)

insert into  disposer values(10, 001,1)


select * from determiner_prix

select * from [dbo].[determiner_mettre_carre]

insert into  determiner_prix values(001, 24,2)

insert into  determiner_prix values(2, 22,2)

insert into  determiner_prix values(3, 10,3)


select * from determiner_mettre_carre

insert into determiner_mettre_carre values(01, 1, 2)

insert into determiner_mettre_carre values(02, 2, 3)

insert into determiner_mettre_carre values(03, 1, 1)


