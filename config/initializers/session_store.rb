Rails.application.config.session_store :redis_store, url: ENV.fetch('REDIS_URL', 'redis://localhost:6379'), namespace: 'session', expire_after: 1.week
