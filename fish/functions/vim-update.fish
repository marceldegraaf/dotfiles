function vim-update
  set -lx SHELL (which sh)
  vim +BundleInstall! +BundleClean +qall
end
