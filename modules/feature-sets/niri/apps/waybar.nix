{ ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 28;

        modules-left = [ "niri/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" ];

        clock = {
          format = "{:%a %H:%M}";
        };

        network = {
          format-wifi = "󰖩 {essid}";
          format-ethernet = "󰈀";
        };

        pulseaudio = {
          format = "󰕾 {volume}%";
        };
      };
    };

    style = ''
      * {
        font-family: JetBrains Mono;
        font-size: 12px;
      }

      window#waybar {
        background: #1e1e2e;
        color: #cdd6f4;
      }

      #workspaces button {
        padding: 0 6px;
        color: #6c7086;
      }

      #workspaces button.active {
        color: #cdd6f4;
      }
    '';
  };
}
