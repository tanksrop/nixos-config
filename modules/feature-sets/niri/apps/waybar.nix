{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 32;

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
        font-family: "JetBrainsMono Nerd Font";
        font-size: 15px;
        min-height: 0;
      }

      window#waybar {
        background: #1e1e2e;
        color: #cdd6f4;
      }

      #workspaces button {
        padding: 0 10px;
        color: #6c7086;
        border-radius: 8px;
      }

      #workspaces button.active {
        color: #cdd6f4;
      }

      #workspaces button:hover {
        background: #313244;
        color: #cdd6f4;
      }

      #clock,
      #pulseaudio,
      #network {
        padding: 0 12px;
      }
    '';
  };
}
