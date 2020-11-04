
### sd_image
boot_elf = boot.elf 							#image stored in sd card, including bbl + kernel

sd_image : $(boot_elf)

$(boot_elf) : $(VMLINUX)
ifndef VMLINUX
	$(error Please set VMLINUX. Please take a look at README)
endif
	cd riscv-pk/build && $(MAKE) VMLINUX=$(VMLINUX) && cp bbl ../../boot.elf
	@echo "#################################"
	@echo "#####     boot.elf built    #####"
	@echo "#################################"

### clean
clean:
	cd riscv-pk/build && $(MAKE) clean
	-rm $(boot_elf)
