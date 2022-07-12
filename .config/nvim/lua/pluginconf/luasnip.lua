local luasnip = require("luasnip")

luasnip.config.set_config({
	-- You can jump back into snippets of you leave them
	history = true,

	updateevents = "TextChanged,TextChangedI",
})

require("luasnip.loaders.from_snipmate").load()
