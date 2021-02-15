# Une base de données universitaire

Une base de données universitaire contient des informations sur les professeurs
(identifié par le numéro de sécurité sociale ou SSN) et les cours
(identifié par courseid). Les professeurs donnent des cours; chacun de
les situations suivantes concernent l'ensemble de relation `teaches`.

## Diagramme ER

Pour chaque situation voici un diagramme ER qui le décrit
(en supposant qu'aucune autre contrainte).

1) Les professeurs peuvent enseigner le même cours sur plusieurs semestres et seule la plus récente doit être enregistrée.

![ER #1](assets/er_01.png)

2) Chaque professeur doit enseigner un cours.

![ER #2](assets/er_02.png)

3) Chaque professeur enseigne exactement un cours (ni plus, ni moins).

![ER #3](assets/er_03.png)

4) Chaque professeur enseigne exactement un cours (ni plus, ni moins), et chaque cours doit être enseigné par un professeur.

![ER #4](assets/er_04.png)

5) Les professeurs peuvent enseigner le même cours sur plusieurs semestres et chaque doit être enregistrée.

![ER #5](assets/er_05.png)

6) Supposons maintenant que certains cours puissent être enseignés conjointement par une équipe de professeurs, mais il est possible qu'aucun professeur dans une équipe ne puisse enseigner le cours. Modélisez cette situation en introduisant des ensembles d'entités et des ensembles de relations supplémentaires si nécessaire.

![ER #6](assets/er_06.png)

## Diagramme de relation

Avec les diagrammes ER ci-dessus, modèlez un diagramme relationnel pour les systèmes.

1) Les professeurs peuvent enseigner le même cours sur plusieurs semestres et seule la plus récente doit être enregistrée.

![RM #1](assets/sol/rm_01.PNG)

2) Chaque professeur doit enseigner un cours.

![RM #2](assets/sol/rm_02.PNG)

3) Chaque professeur enseigne exactement un cours (ni plus, ni moins).

![RM #3](assets/sol/rm_03.PNG)

4) Chaque professeur enseigne exactement un cours (ni plus, ni moins), et chaque cours doit être enseigné par un professeur.

![RM #4](assets/sol/rm_04.PNG)

5) Les professeurs peuvent enseigner le même cours sur plusieurs semestres et chaque doit être enregistrée.

![RM #5](assets/sol/rm_05.PNG)

6) Supposons maintenant que certains cours puissent être enseignés conjointement par une équipe de professeurs, mais il est possible qu'aucun professeur dans une équipe ne puisse enseigner le cours. Modélisez cette situation en introduisant des ensembles d'entités et des ensembles de relations supplémentaires si nécessaire.

![RM #6](assets/sol/rm_06.PNG)

## Schèma de relation

Avec les diagrammes relationnel ci-dessus, écrivez un schéma SQL relationnel pour les systèmes.

1) Les professeurs peuvent enseigner le même cours sur plusieurs semestres et seule la plus récente doit être enregistrée.

```sql
CREATE TABLE professors(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE courses(
	courseid varchar(100), 
	primary key (courseid)
);

CREATE TABLE teaches(
	ssn integer,
	courseid varchar(100),
	semesterid varchar(100), 
	primary key (ssn, courseid),
	foreign key (ssn) references professors,
	foreign key (courseid) references courses
);
```

2) Chaque professeur doit enseigner un cours.


```sql
CREATE TABLE professors(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE courses(
	courseid varchar(100), 
	primary key (courseid)
);

CREATE TABLE teaches(
	ssn integer,
	courseid varchar(100),
	semesterid varchar(100), 
	primary key (ssn, courseid),
	foreign key (ssn) references professors,
	foreign key (courseid) references courses
);
```
3) Chaque professeur enseigne exactement un cours (ni plus, ni moins).

```sql
CREATE TABLE professors(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE courses(
	courseid varchar(100), 
	primary key (courseid)
);

CREATE TABLE teaches(
	ssn integer,
	courseid varchar(100),
	semesterid varchar(100), 
	primary key (ssn),
	foreign key (ssn) references professors
);
```

4) Chaque professeur enseigne exactement un cours (ni plus, ni moins), et chaque cours doit être enseigné par un professeur.

```sql
CREATE TABLE professors(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE courses(
	courseid varchar(100), 
	primary key (courseid)
);

CREATE TABLE teaches(
	ssn integer,
	courseid varchar(100),
	semesterid varchar(100), 
	primary key (ssn),
	foreign key (ssn) references professors);
```

5) Les professeurs peuvent enseigner le même cours sur plusieurs semestres et chaque doit être enregistrée.

```sql
CREATE TABLE professors(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE courses(
	courseid varchar(100), 
	primary key (courseid)
);

CREATE TABLE teaches(
	ssn integer,
	courseid varchar(100),
	semesterid varchar(100), 
	primary key (ssn, courseid, semesterid),
	foreign key (ssn) references professors,
	foreign key (courseid) references courses
);
```

6) Supposons maintenant que certains cours puissent être enseignés conjointement par une équipe de professeurs, mais il est possible qu'aucun professeur dans une équipe ne puisse enseigner le cours. Modélisez cette situation en introduisant des ensembles d'entités et des ensembles de relations supplémentaires si nécessaire.

```sql
CREATE TABLE professors(
	ssn integer, 
	primary key (ssn)
);

CREATE TABLE courses(
	courseid varchar(100), 
	primary key (courseid)
);

CREATE TABLE groups(
	groupid varchar(100),
	primary key (groupid)
);

CREATE TABLE member_of(
	ssn integer, 
	groupid varchar(100),
	primary key (ssn, groupid),
	foreign key (ssn) references professors,
	foreign key (groupid) references groups
);


CREATE TABLE teaches(
	groupid varchar(100),
	courseid varchar(100),
	semesterid varchar(100), 
	primary key (groupid, courseid, semesterid),
	foreign key (groupid) references groups,
	foreign key (courseid) references courses
);
```