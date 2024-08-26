{ ... }:

{
  services = {
    syncthing = {
      enable = true;
      user = "kuaaro";
      openDefaultPorts = true;
      
      overrideDevices = true;
      overrideFolders = true;
      
      dataDir = "/home/kuaaro/Syncthing";
      configDir = "/home/kuaaro/Syncthing/.config/syncthing";
      
      settings = {
        devices = {
          "Kuaaro's Mobile" = { 
            id = "MSR3HVM-5HKQ2R5-UOQUCHH-FASBQ2V-QX6BPYZ-ZJDD4GE-NOJCQS4-HS4TOQB";
          };
        };
        folders = {
          "Syncthing" = {
            path = "/home/kuaaro/Syncthing";
            devices = [ "Kuaaro's Mobile" ];
          };
        };
      };
    };
  };
}
