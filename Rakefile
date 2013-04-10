new_dotfiles = %w(bash_profile bashrc gitconfig gitignore gvimrc irbrc vimrc)
vim_dir = File.join(ENV['HOME'], '.vim')

desc "Initializes submodules for vim plugins, backs up existing files, and symlinks the new ones"
task :install => [:submodule_init, :backup, :link_files]

desc "Initializes submodules"
task :submodule_init do
  sh 'git submodule update --init'
end

desc "Moves existing dotfiles and/or vim dir to dotfiles/backups" 
task :backup do
  backup_dir = File.join(Dir.pwd, 'backups')

  if !File.directory?(backup_dir)
    Dir.mkdir(backup_dir)
  end

  new_dotfiles.each do |file|
    dotfile = File.join(ENV['HOME'], ".#{file}")

    if File.exist? dotfile
      puts "Moving #{dotfile} to #{backup_dir}"
      FileUtils.mv dotfile, backup_dir
    end
  end

  if File.directoy?(vim_dir)
    puts "Moving vim directory to #{backup_dir}"
    FileUtils.mv vim_dir, backup_dir
  end
end

desc "Symlinks new dotfiles/vim dir to home directory"
task :link_files do
  vim = File.join(Dir.pwd, 'vim') 

  ln_sf(vim, vim_dir)

  new_dotfiles.each do |file|
    ln_sf(file, File.join(ENV['HOME'], ".#{file}"))
  end
end

desc "updates dotfiles and vim plugins"
task :update do
  system('git pull')
  system('git submodule foreach git pull')
end
