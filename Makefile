dir = day1
in = test
ex = 1
srcs != find -iname "*.kk"
flags =


%: %.kk $(srcs)
	koka -o $@ $<

.PHONY: watch
watch:
	find -iname "*.kk" | entr make run

.PHONY: run
run: $(dir)/$(ex)
	chmod +x ./$<
	time ./$< $(dir)/$(in)

