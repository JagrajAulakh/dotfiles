require("luasnip").config.set_config({
	updateevents = "TextChanged,TextChangedI",
})

require("luasnip.loaders.from_snipmate").load()
