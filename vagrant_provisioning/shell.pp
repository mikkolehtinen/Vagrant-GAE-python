class base { 
	$packages = ["zsh", "wget","git-core"] 
	package {$packages:
		ensure => "present" 
	} 
	$repo = "git://github.com/robbyrussell/oh-my-zsh.git" 

	exec { "ohmyzsh": command => "git clone ${repo} .oh-my-zsh", 
			cwd => "/home/vagrant", 
			creates => "/home/vagrant/.oh-my-zsh", 
			require => Package[git-core],
	} 
	exec { "zshrc": command => "cp .zshrc /home/vagrant/.zshrc", 
			creates => "/home/vagrant/.zshrc", 
			require => Exec["ohmyzsh"], }		

	exec {"defaultShell": command => "chsh -s /usr/bin/zsh vagrant",}
}


