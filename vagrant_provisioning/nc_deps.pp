class ncdeps {
	  package { 'rubygems': 
	  	ensure => present 
	  }

      package { "sass":
      	provider => gem,
      }
      package { "compass":
      	provider => gem,
      }      
}

