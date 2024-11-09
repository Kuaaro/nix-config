{ pkgs, ... }:

{
  #environment.systemPackages = with pkgs; [
  #  (vscode-with-extensions.override {
  #    vscode = vscodium;
  #    vscodeExtensions = with vscode-extensions; [
  #      rust-lang.rust-analyzer
  #      ziglang.vscode-zig
  #      phind.phind
  #      ms-dotnettools.csharp
  #      
  #      james-yu.latex-workshop
  #    ];
  #  })
  #];
  programs.vscode = {
  	enable = true;
  	package = pkgs.vscodium;
  	
  	mutableExtensionsDir = false;
  	enableUpdateCheck = false;
  	enableExtensionUpdateCheck = false;
  	
  	extensions = with pkgs.open-vsx; [
  		muhammad-sammy.free-csharp-vscode
  	];
  };
}
