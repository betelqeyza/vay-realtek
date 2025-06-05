obj-m += snd-hda-codec-realtek.o

snd-hda-codec-realtek-objs := src/patch_realtek.o

all:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean