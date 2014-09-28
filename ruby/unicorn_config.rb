worker_processes 10
preload_app true
stderr_path "/tmp/unicorn.stderr.log"
stdout_path "/tmp/unicorn.stdout.log"
listen "/tmp/unicorn.sock", :backlog => 64
pid "/tmp/unicorn.pid"
