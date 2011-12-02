# README, index.html und das Rails-Logo löschen
run "rm README public/index.html app/assets/images/rails.png" # README.textile erstellen
file "README.textile", <<-END
h1. Dokumentation
Hier die Dokumentation zum Projekt.
END
# Gem Haml und RedCloth hinzufügen
gem 'haml'
gem 'RedCloth'
run 'bundle install'
# Alles zum Git-Repository hinzufügen
git :init
git :add => ".", :commit => "-m 'initial commit.'"

# Generieren von einer User-Ressource (mit Model, Controller und Views)
generate :scaffold, 'user', 'email:string', 'password:string'

# Ausführen des Rake-Tasks db:migrate
rake 'db:migrate'

# Homepage auf Liste (Indexseite) der User setzen
route 'root :to => "users#index"'

# User-Ressource commiten
git :add => ".", :commit => "-m 'User-Ressource hinzugefügt'"