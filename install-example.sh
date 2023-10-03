#!/usr/bin/env bash
fastboot getvar max-sparse-size
fastboot oem fb_mode_set
fastboot flash gpt PGPT 
fastboot flash preloader preloader.img 
fastboot flash lk_a lk.img 
fastboot flash tee_a tee.img 
fastboot flash md1img_a md1img.img 
fastboot erase nvdata 
fastboot flash spmfw_a spmfw.img 
fastboot flash scp_a scp.img 
fastboot flash sspm_a sspm.img 
fastboot flash gz_a gz.img 
fastboot flash vbmeta_a vbmeta.img 
fastboot flash vbmeta_system_a vbmeta_system.img 
fastboot flash logo_a logo.img 
fastboot flash boot_a boot.img 
fastboot flash dtbo_a dtbo.img 
fastboot flash super super.img_sparsechunk.0 
fastboot flash super super.img_sparsechunk.1 
fastboot flash super super.img_sparsechunk.2 
fastboot flash super super.img_sparsechunk.3 
fastboot flash super super.img_sparsechunk.4 
fastboot flash super super.img_sparsechunk.5 
fastboot flash super super.img_sparsechunk.6 
fastboot flash super super.img_sparsechunk.7 
fastboot flash super super.img_sparsechunk.8 
fastboot flash super super.img_sparsechunk.9 
fastboot flash super super.img_sparsechunk.10 
fastboot flash super super.img_sparsechunk.11 
fastboot flash super super.img_sparsechunk.12 
fastboot flash super super.img_sparsechunk.13 
fastboot flash super super.img_sparsechunk.14 
fastboot flash super super.img_sparsechunk.15 
fastboot flash super super.img_sparsechunk.16 
fastboot flash super super.img_sparsechunk.17 
fastboot flash super super.img_sparsechunk.18 
fastboot flash super super.img_sparsechunk.19 
fastboot flash super super.img_sparsechunk.20 
fastboot flash super super.img_sparsechunk.21 
fastboot flash super super.img_sparsechunk.22 
fastboot flash super super.img_sparsechunk.23 
fastboot flash super super.img_sparsechunk.24 
fastboot flash super super.img_sparsechunk.25 
fastboot flash super super.img_sparsechunk.26 
fastboot flash super super.img_sparsechunk.27 
fastboot flash super super.img_sparsechunk.28 
fastboot flash super super.img_sparsechunk.29 
fastboot flash super super.img_sparsechunk.30 
fastboot flash super super.img_sparsechunk.31 
fastboot flash super super.img_sparsechunk.32 
fastboot flash super super.img_sparsechunk.33 
fastboot flash super super.img_sparsechunk.34 
fastboot flash super super.img_sparsechunk.35 
fastboot flash super super.img_sparsechunk.36 
fastboot flash super super.img_sparsechunk.37 
fastboot flash super super.img_sparsechunk.38 
fastboot flash super super.img_sparsechunk.39 
fastboot flash super super.img_sparsechunk.40 
fastboot flash super super.img_sparsechunk.41 
fastboot flash super super.img_sparsechunk.42 
fastboot flash super super.img_sparsechunk.43 
fastboot erase userdata 
fastboot erase metadata 
fastboot oem fb_mode_clear
