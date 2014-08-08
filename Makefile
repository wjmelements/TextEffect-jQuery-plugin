JS=textEffect.jquery.js
MINJS=$(JS:js=min.js)
MKDIRS=release
.PHONY: all clean
all: $(addprefix release/, $(MINJS))
clean:
	rm -rf $(MKDIRS)
release/%.min.js: %.js | release
	yui-compressor $< -o $@
$(MKDIRS):
	mkdir -p $@
