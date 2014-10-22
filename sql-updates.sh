use ayamel_examples
insert into sitePermissions (userId, permission) values (13, "admin");

use dictionarylookup
insert into useraccount(id,authKey) values (1, "thisisadictionarytranslationkey");

use playgraph
insert into authToken (publicKey, secretKey, permission, name) values ("turtles", "are", "author", "defaultPerson");
insert into authToken (publicKey, secretKey, permission, name) values ("totally", "awesome", "player", "defaultPlayer");