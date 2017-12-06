#!/usr/bin/env bash

# Colors
source $BASEDIR/colors.sh

EXTENSIONS=(
  "2gua.rainbow-brackets"/
  "azemoh.one-monokai"/
  "christian-kohler.path-intellisense"/
  "dbaeumer.vscode-eslint"/
  "eamodio.gitlens"/
  "eg2.tslint"/
  "ipatalas.vscode-postfix-ts"/
  "joelday.docthis"/
  "jordan-craig.vspizza"/
  "mrmlnc.vscode-autoprefixer"/
  "mrmlnc.vscode-csscomb"/
  "mrmlnc.vscode-jade-snippets"/
  "ms-python.python"/
  "nwhatt.chai-snippets"/
  "oderwat.indent-rainbow"/
  "patrys.vscode-code-outline"/
  "robertohuertasm.vscode-icons"/
  "samverschueren.linter-xo"/
  "sequoia.loopback-json-schemas"/
  "shanoor.vscode-nginx"/
  "spoonscen.es6-mocha-snippets"/
  "streetsidesoftware.code-spell-checker"/
  "streetsidesoftware.code-spell-checker-russian"/
  "zhuangtongfa.material-theme"
)

echo
echo "${YELLOW}Install VS Code extensions${NC}"
if hash "code" 2>/dev/null; then
  for ext in ${EXTENSIONS[@]}; do
    code --install-extension $ext
  done
fi
