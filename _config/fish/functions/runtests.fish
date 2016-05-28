function runtests
    py.test --reuse-db --tb=native $argv
end
