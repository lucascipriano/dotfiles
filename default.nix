# Instale o Nix e use o comando nix-shell,
# Esse arquivo é para não ter que setar sempre os packege via CLI
# através do nix-shell -p package
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  # Nome do ambiente.
  name="dev-environment"; 
  # Pacotes que deseja.
  buildInputs = [ 
    # Pacotes de emxeplo para rodar qualquer coisa em Rust.
    pkgs.cargo
    pkgs.rustc
    ];
    # Mensagem de aviso que subiu tudo corretamente.
  shellHook = '' 
    echo "Start developing..."
  '';
}