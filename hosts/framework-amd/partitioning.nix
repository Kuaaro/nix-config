{
  disko.devices = {
    disk = {
      nvme0n1 = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "1G";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };
            LUKS = {
              size = "100%"
              content = {
                type = "luks";
                name = "crypt";
                extraOpenArgs = [ ];
                settings = {
                  passwordFile = "/tmp/tmp_pass";
                  allowDiscards = true;
                };
                content = {
                  type = "lvm_pv";
                  vg = "pool";
                };
              };
            };
          };
        };
      };
    };
    lvm_vg = {
      pool = {
        type = "lvm_vg";
        lvs = {
          root = {
            size = "150G";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/";
              mountOptions = [
                "defaults"
              ];
            };
          };
          home = {
            size = "100G";
            content = {
              type = "filesystem";
              format = "btrfs";
              mountpoint = "/home";
            };
          };
          swap = {
            size = "32G";
            content = {
              type = "swap";
              discardPolicy = "both";
              resumeDevice = true;
            };
          };
          raw = {
            size = "100%";
          };
        };
      };
    };
  };
}
