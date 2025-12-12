dir = day1
in = input
ex = p1
srcs != find -iname "*.kk"
flags =

.PHONY: watch run all

%: %.kk $(srcs)
	koka -o $@ $<

watch:
	find -iname "*.kk" | entr make run

run: $(dir)/$(ex)
	chmod +x ./$<
	time ./$< $(dir)/$(in).in

all:
