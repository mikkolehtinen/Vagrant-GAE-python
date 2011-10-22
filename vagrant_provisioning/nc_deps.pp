class ncdeps {
	  package { 'rubygems': 
	  	ensure => present 
	  }

      package { "sass":
      	provider => gem,
      }
}

