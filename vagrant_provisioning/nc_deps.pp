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
      

    package {
        "gettext": ensure => present;
    }

}

