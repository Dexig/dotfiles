#!/usr/bin/env bash

# Colors
source $BASEDIR/colors.sh

EXTENSIONS=(
  "2gua.rainbow-brackets"/
  "Equinusocio.vsc-material-theme"/
  "azemoh.one-monokai"/
  "christian-kohler.path-intellisense"/
  "donjayamanne.python"/
  "eamodio.gitlens"/
  "eg2.tslint"/
  "joelday.docthis"/
  "mrmlnc.vscode-autoprefixer"/
  "mrmlnc.vscode-csscomb"/
  "mrmlnc.vscode-jade-snippets"/
  "nwhatt.chai-snippets"/
  "oderwat.indent-rainbow"/
  "patrys.vscode-code-outline"/
  "robertohuertasm.vscode-icons"/
  "samverschueren.linter-xo"/
  "shanoor.vscode-nginx"/
  "spoonscen.es6-mocha-snippets"/
  "streetsidesoftware.code-spell-checker"/
  "streetsidesoftware.code-spell-checker-russian"/
  "walli.vsc-tasks"/
  "zhuangtongfa.material-theme"/
  "zxh404.vscode-proto3"
)

echo
echo "${YELLOW}Install VS Code extensions${NC}"
if hash "code" 2>/dev/null; then
  for ext in ${EXTENSIONS[@]}; do
    code --install-extension $ext
  done
fi
