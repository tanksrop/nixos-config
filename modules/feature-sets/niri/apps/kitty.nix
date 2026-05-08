{ ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      font_family = "JetBrains Mono";
      font_size = 12;

      background = "#1e1e2e";
      foreground = "#cdd6f4";

      cursor_shape = "block";
      scrollback_lines = 10000;
      background_opacity 0.85;

      enable_audio_bell = false;
    };
  };
}
