{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.programs;

in {
  options.modules.programs = { brave = mkEnableOption "brave"; };
  config = mkIf cfg.brave {
    home-manager.users."${config.commons.main_username}" = {
      programs.brave = {
        enable = true;
        #extensions = {
        #  
        #};
        
        # Custom search engines configuration
        #extraConfig = ''
        #  {
        #    "settings": {
        #      "default_search_provider_data": {
        #        # Default search engine (DuckDuckGo)
        #        "default": {
        #          "encoding": "UTF-8",
        #          "id": "duckduckgo",
        #          "enabled": true,
        #          "name": "DuckDuckGo",
        #          "keyword": ":d",
        #          "search_url": "https://duckduckgo.com/?q={searchTerms}",
        #          "suggest_url": "https://ac.duckduckgo.com/ac/?q={searchTerms}"
        #        },
        #        
        #        # Additional search engines
        #        "custom_search_engines": [{
        #          "id": "google",
        #          "enabled": true,
        #          "name": "Google",
        #          "keyword": ":g",
        #          "search_url": "https://www.google.com/search?q={searchTerms}",
        #          "suggest_url": "https://www.google.com/suggest?q={searchTerms}"
        #        }]
        #      }
        #    }
        #  }
        #'';
      };
      #xdg.configFile."brave/Default/Preferences".source = ./brave-preferences.json;
      home.sessionVariables = {
		    BROWSER = mkIf cfg.brave "${pkgs.brave}/bin/brave";
	    };
    };
  };
}
