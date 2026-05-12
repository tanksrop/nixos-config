{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 36;
        spacing = 10;

        modules-left = [ "niri/workspaces" ];
        modules-center = [ "custom/spotify" ];
        modules-right = [ "pulseaudio" "network" "clock" ];

        clock = {
          format = "{:%a %d %b  •  %H:%M}";
        };

        network = {
          format-wifi = "󰖩 {essid}";
          format-ethernet = "󰈀";
        };

        pulseaudio = {
          format = "󰕾 {volume}%";
        };

        custom/spotify = {
          exec = "playerctl metadata --format '{{artist}} - {{title}}'";
          interval = 0.5;
          max-length = 45;
          format = "󰓇 {}";
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", "Symbols Nerd Font";
        font-size: 15px;
        min-height: 0;
      }

      window#waybar {
        background: transparent;
      }

      #workspaces,
      #clock,
      #pulseaudio,
      #network,
      #custom-spotify {
        background: rgba(30, 30, 46, 0.75);
        color: #cdd6f4;

        margin: 6px 6px 0 6px;
        padding: 4px 16px;

        border-radius: 16px;

        border: 1px solid rgba(137, 180, 250, 0.15);

        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.35);
      }

      #custom-spotify {
        color: #a6e3a1;
        font-weight: 500;
        letter-spacing: 0.3px;
      }

      #workspaces {
        padding: 4px 10px;
      }

      #workspaces button {
        color: #6c7086;
        padding: 0 12px;
        margin: 3px 3px;
        border-radius: 12px;
        transition: all 0.2s ease;
      }

      #workspaces button.active {
        background: #89b4fa;
        color: #1e1e2e;
        box-shadow: 0 0 14px rgba(137, 180, 250, 0.5);
      }

      #workspaces button:hover {
        background: #313244;
        color: #cdd6f4;
      }

      #pulseaudio,
      #network,
      #clock {
        padding: 4px 14px;
      }

      #pulseaudio,
      #network {
        font-size: 16px;
      }
    '';
  };
}
