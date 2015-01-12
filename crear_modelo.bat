call rails g scaffold Url address:string --force
call rails g scaffold Tag name:string type:integer --force
call rails g scaffold User name:string user:string pass:string --force
call rails g scaffold Language name:string --force
call rails g scaffold Word name:string description:text language:references --force
call rails g scaffold Aception sequencial:integer name:string description:text word:references --force
call rails g scaffold Translation aception_own:references aception_for:references --force
call rails g scaffold Dictionary title:string difficulty:integer access:integer user:references language_own:references language_for:references --force
call rails g scaffold Version number:integer status:integer dictionary:references --force

call rails g scaffold Test user:references name:string version:references date_start:datetime date_end:datetime repetitions:integer --force

call rails g scaffold List version:references translation:references
call rails g scaffold translations_versions version:references translation:references

call rails g scaffold translations_versions_tests translations_versions:references test:references


call rails g scaffold Respuesta translation:references resp:string 

rails generate migration add_repetitions_to_test repetitions:integer

call rails g scaffold Answer translation:references ans:string --force


