{ pkgs, config, ... }:

{
  programs.readline = {
    enable = true;
    extraConfig = builtins.readFile ./.inputrc;
  };
}
