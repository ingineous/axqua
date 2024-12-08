{...}: {
  programs.nixvim.enable = true;

  imports = [
    ./cmp.nix
    ./colorscheme.nix
    ./harpoon.nix
    ./keymaps.nix
    ./lsp.nix
    ./options.nix
    ./oil.nix
    ./plugins.nix
  ];
}
