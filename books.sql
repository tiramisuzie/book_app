CREATE TABLE IF NOT EXISTS books (
  id SERIAL PRIMARY KEY,
  author VARCHAR(256),
  title VARCHAR(256),
  isbn BIGINT,
  image_url VARCHAR(356),
  description TEXT
);

INSERT INTO books (author, title, isbn, image_url, description) VALUES ('Frank Herbert', 'Dune', 9780340960196,'http://books.google.com/books/content?id=I12oPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api','Before The Matrix, before Star Wars, before Enders Game and Neuromancer, there was Dune: winner of the prestigious Hugo and Nebula awards, and widely considered one of the greatest science fiction novels ever written. Melange, or spice, is the most valuable - and rarest - element in the universe; a drug that does everything from increasing a persons life-span to making intersteller travel possible. And it can only be found on a single planet: the inhospitable desert world Arrakis. Whoever controls Arrakis controls the spice. And whoever controls the spice controls the universe. When the Emperor transfers stewardship of Arrakis from the noble House Harkonnen to House Atreides, the Harkonnens fight back, murdering Duke Leto Atreides. Paul, his son, and Lady Jessica, his concubine, flee into the desert. On the point of death, they are rescued by a band for Fremen, the native people of Arrakis, who control Arrakis second great resource: the giant worms that burrow beneath the burning desert sands. In order to avenge his father and retake Arrakis from the Harkonnens, Paul must earn the trust of the Fremen and lead a tiny army against the innumerable forces aligned against them. And his journey will change the universe.');

INSERT INTO books (author, title, isbn, image_url, description) VALUES ('Brian Herbert', 'Dreamer of Dune', 9780765306470, 'http://books.google.com/books/content?id=hlbSrcGnhRIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'A biography of the science fiction writer, presented by his son, describes Herberts childhood in Tacoma, Washington, his early years as a reporter and editor, his military service, and his struggles to become published.' );

INSERT INTO books (author, title, isbn, image_url, description) VALUES ('Frank Herbert', 'The Collected Stories of Frank Herbert', '9780765336965', 'http://books.google.com/books/content?id=aBbFBAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api','Thirty-nine short stories originally published between 1952 and 1979, plus one previously unpublished story.');

INSERT INTO books (author, title, isbn, image_url, description) VALUES ('R.L. Stine', 'Red Rain', 9781451636147, 'http://books.google.com/books/content?id=HUiELVb0AzUC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'The author of the New York Times bestselling Goosebumps and Fear Street series uses his knack for creating terror to tap into some very grown up fears in this terrifying horror novel centered on a town in the grip of a sinister revolt. Travel writer Lea Sutter finds herself on a small island off the coast of South Carolina, at the wrong place at the wrong time, and barely escapes with her life when a freak hurricane cuts through the island. In the storms aftermath, she discovers two orphaned boys—twins—and impulsively decides to adopt them. The boys seem amiable and immensely grateful; Leas family is not quite so pleased. But no one could anticipate the twins true nature—or predict that within a few weeks time, Leas husband, a controversial child psychologist, will be implicated in two brutal murders. For the millions of readers who grew up on Goosebumps, and for every fan of deviously inventive horror, this is acreepy, fun read" (Library Journal) from a beloved master of the genre.');

INSERT INTO books (author, title, isbn, image_url, description) VALUES ('Carmen Gillespie', 'Toni Morrison', 9781611484922, 'http://books.google.com/books/content?id=CyrYeW5V_ZkC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Toni Morrisons wooded and verdant clearing, a central trope in her novel Beloved, is the model for this book. The collection is a distinctive review, examination, and (re)discovery of Morrisons work and cultural impacts as defined by emerging and acclaimed artists, scholars, and public figures.');