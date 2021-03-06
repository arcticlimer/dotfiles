{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pkgs.git-crypt
  ];

  programs.git = {
    enable = true;

    userName = "Vinícius Müller";
    userEmail = "vinigm.nho@gmail.com";
    package = pkgs.gitFull;

    signing.key = "0x297A9768C8CA96AB";
    signing.signByDefault = true;

    delta = {
      enable = true;
      options = {
        features = "side-by-side line-numbers decorations";
        syntax-theme = "Dracula";
        plus-style = ''syntax "#003800"'';
        minus-style = ''syntax "#3f0001"'';
        decorations = {
          commit-decoration-style = "bold yellow box ul";
          file-style = "bold yellow ul";
          file-decoration-style = "none";
          hunk-header-decoration-style = "cyan box ul";
        };
        delta = {
          navigate = true;
        };
        line-numbers = {
          line-numbers-left-style = "cyan";
          line-numbers-right-style = "cyan";
          line-numbers-minus-style = 124;
          line-numbers-plus-style = 28;
        };
      };
    };
  };

  programs.bash.shellAliases = {
    gw = "git worktree";
    gs = "git status";
    gc = "git commit";
    gl = "git log";
    gcl = "git clone";
    gco = "git checkout";
    glog = "git log --oneline";
    gd = "git diff";
    gds = "git diff --staged";
    ga = "git add";
    gr = "git remote";
    grv = "git remote -v";
    gra = "git remote add";
    gp = "git push";
    gb = "git branch";
    grs = "git restore";
    gsh = "git show";
  };
}
