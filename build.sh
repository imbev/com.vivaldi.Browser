#!/usr/bin/env bash


flatpak-builder \
	--force-clean \
	.build-dir \
	--disable-rofiles-fuse \
	com.vivaldi.Browser.yaml && \

flatpak build-export \
	repo \
	.build-dir && \

flatpak build-bundle \
	repo \
	vivaldi.flatpak \
	com.vivaldi.Browser 
