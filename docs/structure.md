#Example File Structure  

nixos-config/  
├── flake.nix  
├── flake.lock  
├── README.md  
│  
├── hosts/          # list of hosts which import hardware-configuration.nix and if needed, hardware specific stuff such as nvidia or network drivers from modules/hardware and absolutely nothing else.  
│   ├── laptop/  
│   │   ├── default.nix  
│   │   └── hardware-configuration.nix  
│   ├── desktop/  
│   │   ├── default.nix  
│   │   └── hardware-configuration.nix  
│   └── server/  
│       └── default.nix  
│  
├── modules/  
│   ├── common/			#global common configs  
│   │   ├── default.nix  
│   │   ├── core.nix - core cli tools such as fastfetch, git, wget etc...  
│   │   ├── users.nix  
│   │   └── nix.nix  
│   │  
│   ├── hardware/			#hardware specific configs such as specific graphics or networking drivers  
│   │   ├── nvidia.nix  
│   │   ├── amd.nix  
│   │   └── intel.nix  
│   │  
│   ├── services/			#self explanatory, to enable/disable system services, may be useful on servers where the gui apps aren't needed  
│   │   ├── ssh.nix  
│   │   ├── docker.nix  
│   │   ├── libvirt.nix  
│   │   ├── bluetooth.nix  
│   │   └── printing.nix  
│   │  
│   ├── feature-sets/				#app bundles/individual, import services from modules/services if required  
│   │   ├── development-minimal.nix  
│   │   └── development.nix  
│   │   ├── gaming.nix  
│   │   └── virtualization.nix  
│   │   └── communication.nix  
│   │   └── firefox.nix  
│   │   └── plasma.nix  
│   │   └── hyprland.nix  
│   │  
│   └── roles/				# role specifics, laptop power savings, desktop disabling power savings, server hardening  
│       ├── laptop.nix  
│       ├── desktop.nix  
│       └── server.nix  
│  
├── profiles/              # profiles for hosts, define roles, services, feature sets and individual apps if needed, also include modules/core  
│   ├── dev-machine.nix  
│   └── gaming-machine.nix  
│   └── hardened-server.nix  
│   └── laptop.nix  
│  
├── scripts/				# scripts for automations on installs or maintenance  
│   ├── install.sh  
│   ├── disk-setup.sh  
│   ├── generate-hardware-config.sh  
│   └── utils.sh  
│  
└── docs/                  # optional but nice  
    ├── structure.md  
    ├── install.md  
    └── modules.md
