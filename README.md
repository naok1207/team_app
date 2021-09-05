## コマンド

ローカルURL
http://localhost:8080

初回起動
```
docker-compose build && \
docker-compose up -d && \
docker-compose run --rm app bundle exec rails db:create && \
docker-compose run --rm app bundle exec rails db:migrate
```

その後起動
```
docker-compose up -d
```

migrate
```
docker-compose run --rm app bundle exec rails db:migrate
```

rubocop
```
docker-compose run --rm app bundle exec rubocop
```

rspec
```
docker-compose run --rm app rspec
```
