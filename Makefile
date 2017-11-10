CONSOLE=php bin/console


## Doctrine Migrations ##

migrate_diff:
	$(CONSOLE) doctrine:migrations:diff

migrate:
	$(CONSOLE) doctrine:migrations:migrate -n

migrate_all:
	$(CONSOLE) doctrine:migrations:diff -q
	$(CONSOLE) doctrine:migrations:migrate -n --allow-no-migration

## Symfony Commands ##

clear_cache:
	$(CONSOLE) cache:clear