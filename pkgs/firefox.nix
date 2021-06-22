{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.arcticlimer = {
      settings = {
        "ui.key.menuAccessKeyFocuses" = false;
      };
    };
    # extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    #   ublock-origin
    #   bitwarden
    #   # dark-reader
    #   # vimium-ff
    # ];
  };
}
