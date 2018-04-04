obj-m += gpio_keys.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
install:
	mkdir -p /lib/modules/$(shell uname -r)/kernel/drivers/input/keyboard/
	cp gpio_keys.ko /lib/modules/$(shell uname -r)/kernel/drivers/input/keyboard/
	chown root:root /lib/modules/$(shell uname -r)/kernel/drivers/input/keyboard/gpio_keys.ko
	depmod -a