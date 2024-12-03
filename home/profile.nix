{ pkgs, vars, ... }: {
  users.users.${vars.user} = {
    home = "/Users/${vars.user}";
    shell = pkgs.zsh;
  };

  environment = {
    variables = {
      EDITOR = vars.editor;
      VISUAL = vars.editor;
    };
    systemPackages = with pkgs; [ eza go ];
  };
}