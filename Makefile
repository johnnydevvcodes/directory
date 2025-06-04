gen:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

get:
	fvm flutter pub get 

clean:
	fvm flutter clean

format:
	fvm dart format lib

lint:
	fvm dart fix --dry-run

lint_apply:
	fvm dart fix --apply