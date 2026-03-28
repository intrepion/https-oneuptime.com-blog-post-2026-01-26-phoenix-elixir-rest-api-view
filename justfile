ci-test:
    cd task_api && mix test

initial_create:
    @if [ -d "task_api" ]; then \
        echo "Error: task_api directory exists"; \
        exit 1; \
    fi; \
    mix phx.new task_api --no-html --no-assets --binary-id

initial_destroy:
    rm -rf task_api

install:
    cd task_api && mix setup

run:
    cd task_api && mix phx.server
