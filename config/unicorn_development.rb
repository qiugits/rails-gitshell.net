#Unicornのログ出力先を指定
#File.expand_pathはパスを絶対パスに解決するメソッド File.expand_path: https://ruby-doc.org/core-2.2.0/File.html#method-c-expand_path
rails_root = File.expand_path('../../', __FILE__) #=> "/Users/qiu/workspace/qiu.jp"
#ワーカー数を指定する
worker_processes 2
working_directory rails_root

#listen "#{rails_root}/tmp/unicorn.sock" #？？「Unicornのプロセスをlistenするアドレストポートを指定」らしいが…
listen 3000
pid "#{rails_root}/tmp/pids/unicorn.pid" #pid fileの位置を指定する

#ログの出力先を指定
stderr_path "#{rails_root}/log/unicorn_error.log"
stdout_path "#{rails_root}/log/unicorn.log"
