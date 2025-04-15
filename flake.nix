{
  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
      "https://nix-gaming.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="
    ];
  };

  description = "NixOS config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ghostty = {
      url = "github:ghostty-org/ghostty";
    };
    nixCats.url = "github:skillissu3e/nixCats-nvim";
    nix-gaming.url = "github:fufexan/nix-gaming";
  };

  outputs =
    {
      nixpkgs,
      ghostty,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      # System & Home Manager Configuration
      inherit (import ./config.nix) username systemConfig homeConfig;
    in
    {
      homeConfigurations = {
        lad = inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = {
            inherit inputs;
            inherit username;
            inherit homeConfig;
            inherit systemConfig;
          };
          modules = [
            inputs.nixvim.homeManagerModules.nixvim
            ./home-manager/home.nix
            ./home-manager
          ];
        };
      };

      nixosConfigurations.neverluv = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit systemConfig;
        };
        modules = [
          ./system/config/configuration.nix
          ./system
          {
            environment.systemPackages = [
              ghostty.packages.x86_64-linux.default
              inputs.nix-gaming.packages.x86_64-linux.osu-stable
              inputs.nixCats.packages.x86_64-linux.default
            ];
          }
          {
            nix.settings = {
              trusted-users = [ username ];
              warn-dirty = false;
            };
          }
        ];
      };
    };
}
