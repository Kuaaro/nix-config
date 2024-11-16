{ pkgs, ... }:

{
	#virtualisation.libvirtd = {
	#	enable = true;
	#	qemu = {
	#	  package = pkgs.qemu_kvm;
	#	  runAsRoot = true;
	#	  swtpm.enable = true;
	#	  ovmf = {
	#	    enable = true;
	#	    packages = [(pkgs.OVMF.override {
	#	      secureBoot = true;
	#	      tpmSupport = true;
	#	    }).fd];
	#	  };
	#	};
	#};
	virtualisation.virtualbox = {
		host.enable = true;
		guest.enable = true;
		host.enableExtensionPack = true;
	};
}
