{
  config,
  lib,
  pkgs,
  home-manager,
  ...
}:

{
  imports = [
    ./fish.nix
    ./javascript.nix
    ./distrobox.nix
    ./caddy.nix
    ./forgejo.nix
  ];

  home-manager.users.autumn = {
    imports = [
      ./hyfetch/hyfetch.nix
      ./git.nix
    ];
  };
}
