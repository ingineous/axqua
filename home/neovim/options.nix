{...}: {
  programs.nixvim.globals.mapleader = " ";

  programs.nixvim.globalOpts = {
    number = true;
    relativenumber = true;

    # Always show the signcolumn, otherwise text would be shifted when displaying error icons
    signcolumn = "yes";

    # Search
    ignorecase = true;
    smartcase = true;

    clipboard = {
      providers = {
        wl-copy.enable = true; # Wayland
        xsel.enable = true; # For X11
      };
      register = "unnamedplus";
    };

    tabstop = 2;
    shiftwidth = 4;
    softtabstop = 2;
    expandtab = true;
    smarttab = true;

    # Start scrolling when the cursor is X lines away from the top/bottom
    scrolloff = 8;
    smartindent = true;
    wrap = false;
    undofile = true;
    undodir = ''os.getenv("HOME") .. "/.vim/undodir" '';

    updatetime = 50;
  };
}
