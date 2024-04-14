{ lib
, fetchurl
, appimageTools
}:

let
  pname = "polar";
  version = "2.2.0";
in
appimageTools.wrapType2 {
  inherit pname version;
  src = fetchurl {
    url = "https://github.com/jamaljsr/${pname}/releases/download/v${version}/${pname}-linux-x86_64-v${version}.AppImage";
    hash = "sha256-yBK8NESGosjghh14m73OKoDskxbo6tH7yf2BgHJnIWQ=";
  };
  extraPkgs = pkgs: with pkgs; [ ];

  meta = with lib; {
    description = "One-click Bitcoin Lightning networks for local app development & testing";
    homepage = "https://github.com/jamaljsr/${pname}";
    license = licenses.mit;
    maintainers = with maintainers; [ amackillop ];
  };
}
