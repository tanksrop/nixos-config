{ ... }:

{
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "JetBrains Mono:size=12";
        width = 30;
        prompt = "❯ ";
      };

      colors = {
        background = "1e1e2eee";
        text = "cdd6f4ff";
        match = "89b4faff";
        selection = "313244ff";
      };
    };
  };
}
