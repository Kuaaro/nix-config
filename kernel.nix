{ pkgs, ... }:

{
  # Linux Kernel
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;
  boot.kernelParams = [ 
    "quiet"
    "fbcon=nodefer"
    "vt.global_cursor_default=0"
    #"kernel.modules_disabled=1"
    #"lsm=landlock,lockdown,yama,integrity,apparmor,bpf,tomoyo,selinux"
    "video4linux"
    #"security=selinux"
  ];

  #systemd.package = pkgs.systemd.override { withSelinux = true; };

  #environment.systemPackages = with pkgs; [
  #  policycoreutils
  #];
}
