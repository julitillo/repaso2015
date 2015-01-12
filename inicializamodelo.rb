u1=User.create(name: "julio", user: "jbd", pass: "jbd")

esp=Language.create(name: "ESP");
ing=Language.create(name: "ING");

w1=Word.create(name: "ojo", description: "", language: esp);
w2=Word.create(name: "diente", description: "", language: esp);
w3=Word.create(name: "eye", description: "", language: ing);
w4=Word.create(name: "tooth", description: "", language: ing);
w5=Word.create(name: "casa", description: "", language: esp);
w6=Word.create(name: "house", description: "", language: ing);

a1=Aception.create(word: w1, sequencial: 1, name: "globo ocular", description: "");
a2=Aception.create(word: w1, sequencial: 2, name: "de la cerradura", description: "");
a3=Aception.create(word: w2, sequencial: 1, name: "hueso boca", description: "");
a4=Aception.create(word: w2, sequencial: 2, name: "parte de engranaje", description: "");
a5=Aception.create(word: w3, sequencial: 1, name: "eye", description: "");
a6=Aception.create(word: w4, sequencial: 1, name: "mouth tooth", description: "");
a7=Aception.create(word: w5, sequencial: 1, name: "casa hogar", description: "");
a8=Aception.create(word: w6, sequencial: 1, name: "home", description: "");

t1=Translation.create(aception_own: a1, aception_for: a5);
t2=Translation.create(aception_own: a3, aception_for: a6);
t3=Translation.create(aception_own: a7, aception_for: a8);

d1=Dictionary.create(title: "cosas de la caran", difficulty: 1, access: 1, user: u1, language_own: esp, language_for: ing);
d2=Dictionary.create(title: "dic2", difficulty: 1, access: 1, user: u1, language_own: esp, language_for: ing);
#rails runner inicializamodelo.rb

v1=Version.create(number: 1, status: 1, dictionary: d1)
v2=Version.create(number: 1, status: 1, dictionary: d2)

l1=List.create(version: v1, translation: t1)
l2=List.create(version: v1, translation: t2)
l3=List.create(version: v2, translation: t3)

t1=Test.create(user: u1, name: "test1", version: v1 );


tv1=List.create(version: v1, translation: t1)
tv2=List.create(version: v1, translation: t2)
tv3=List.create(version: v2, translation: t3)