# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ ];

  boot.initrd.availableKernelModules = [ "ata_piix" "ohci_pci" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    {
      device = "/dev/disk/by-uuid/7012841b-19e7-4f95-bcc6-fdcc3f9beceb";
      fsType = "ext4";
    };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/ea618b8b-d0a5-4b45-b435-ce20a1604385"; }];

  virtualisation.virtualbox.guest.enable = true;
}
