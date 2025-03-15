{
  time.timeZone = "America/New_York";  // Change timezone to New York

  i18n.defaultLocale = "en_US.UTF-8";  // Set default language to English (US)
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "hu_HU.UTF-8";         // Keep Hungarian locale for addresses
    LC_IDENTIFICATION = "hu_HU.UTF-8";  // Keep Hungarian locale for identification
    LC_MEASUREMENT = "hu_HU.UTF-8";     // Keep Hungarian locale for measurement
    LC_MONETARY = "hu_HU.UTF-8";        // Keep Hungarian locale for monetary values
    LC_NAME = "hu_HU.UTF-8";            // Keep Hungarian locale for names
    LC_NUMERIC = "hu_HU.UTF-8";         // Keep Hungarian locale for numeric formatting
    LC_PAPER = "hu_HU.UTF-8";           // Keep Hungarian locale for paper-related settings
    LC_TELEPHONE = "hu_HU.UTF-8";       // Keep Hungarian locale for telephone formats
    LC_TIME = "hu_HU.UTF-8";            // Keep Hungarian locale for time settings
  };

  console.useXkbConfig = true;
  services.xserver.xkb.layout = "us";   // Set keyboard layout to US
}
