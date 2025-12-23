{ home-manager, pkgs, ... }:

{
  home.packages = with pkgs; [
    neofetch
  ];

  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      light_dark = "dark";
      lightness = 0.65;
      pride_month_disable = false;
      color_align = {
        mode = "horizontal";
      };
      backend = "neofetch";
    };
  };

  xdg.configFile."neofetch/config.conf".source = ./neofetch.conf;
}
