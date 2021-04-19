{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "enhancer-for-youtube" = buildFirefoxXpiAddon {
      pname = "enhancer-for-youtube";
      version = "2.0.104.6";
      addonId = "enhancerforyoutube@maximerf.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3760058/enhancer_for_youtubetm-2.0.104.6-fx.xpi";
      sha256 = "51b40602271173a3dd09b3d4ae8bbc2b307d4ca405fe336c5d9a29b99bbd0305";
      meta = with lib;
      {
        homepage = "https://www.mrfdev.com/enhancer-for-youtube";
        description = "Take control of YouTube and boost your user experience!";
        license = {
          shortName = "clefy";
          fullName = "Custom License for Enhancer for YouTube";
          url = "https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/license/";
          free = false;
          };
        platforms = platforms.all;
        };
      };
    "nextcloud-passwords" = buildFirefoxXpiAddon {
      pname = "nextcloud-passwords";
      version = "2.1.1";
      addonId = "ncpasswords@mdns.eu";
      url = "https://addons.mozilla.org/firefox/downloads/file/3734590/passwords_for_nextcloud_browser_add_on-2.1.1-an+fx.xpi";
      sha256 = "3de46e5964d43fad7d6b5ec2a0450280159c7989f4db6a5d21f2ca26b9a75ea9";
      meta = with lib;
      {
        homepage = "https://github.com/marius-wieschollek/passwords-webextension";
        description = "The official browser extension for the Passwords app for Nextcloud.";
        license = licenses.lgpl3;
        platforms = platforms.all;
        };
      };
    "sponsorblock" = buildFirefoxXpiAddon {
      pname = "sponsorblock";
      version = "2.0.13.1";
      addonId = "sponsorBlocker@ajay.app";
      url = "https://addons.mozilla.org/firefox/downloads/file/3748692/sponsorblock_skip_sponsorships_on_youtube-2.0.13.1-an+fx.xpi";
      sha256 = "c9990812d376afb607c437bfb26184e7b3f07bcfc0116a5a45ca617c6d3f0453";
      meta = with lib;
      {
        homepage = "https://sponsor.ajay.app";
        description = "Easily skip YouTube video sponsors. When you visit a YouTube video, the extension will check the database for reported sponsors and automatically skip known sponsors. You can also report sponsors in videos.\n\nOther browsers: https://sponsor.ajay.app";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    }