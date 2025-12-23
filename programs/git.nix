{
  home-manager,
  lib,
  config,
  ...
}:

{
  options = {
    git.enable = lib.mkEnableOption "git";
  };

  config = lib.mkIf (config.git.enable) {
    programs.git = {
      enable = true;
      lfs.enable = true;
      settings = {
        user = {
          email = "autumn@mck.is";
          name = "Autumn McKee";
        };
        init.defaultBranch = "main";
        # http.sslVerify = false; # occasionally needed when cloning stuff from EEECS gitlab
      };
    };
  };
}
