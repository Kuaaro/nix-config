{ pkgs, ... }:

{
	home.packages = with pkgs; [
		mono
		dotnet-sdk_8
	];
}
