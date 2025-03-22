{ inputs, ... }: {
  home = {
    sessionVariables.BROWSER = "firefox";

    file."firefox-gnome-theme" = {
      target = ".mozilla/firefox/default/chrome/firefox-gnome-theme";
      source = inputs.firefox-gnome-theme;
    };
  };

  programs.firefox = {
    enable = true;
    profiles.default = {
      name = "Default";
      settings = {
        "browser.tabs.loadInBackground" = true;
        "widget.gtk.rounded-bottom-corners.enabled" = true;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "svg.context-properties.content.enabled" = true;
        "gnomeTheme.hideSingleTab" = true;
        "gnomeTheme.bookmarksToolbarUnderTabs" = true;
        "gnomeTheme.normalWidthTabs" = false;
        "gnomeTheme.tabsAsHeaderbar" = false;
        "browser.fullscreen.autohide" = false;
        "toolkit.telemetry.enabled" = false;
      };
      userChrome = ''
        @import "firefox-gnome-theme/userChrome.css";
      '';
      userContent = ''
        @import "firefox-gnome-theme/userContent.css";
      '';
    };
  };

  policies = {
    ExtensionSettings = {
      "uBlock0@raymondhill.net" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        installation_mode = "force_installed";
      };

      "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/styl-us/latest.xpi";
        installation_mode = "force_installed";
      };

      "simple-translate@sienori" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/simple-translate/latest.xpi";
        installation_mode = "force_installed";
      };

      "{bbb880ce-43c9-47ae-b746-c3e0096c5b76}" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/catppuccin-gh-file-explorer/latest.xpi";
        installation_mode = "force_installed";
      };
    };
  };
}
