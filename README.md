## Description
A simple script to use an item to apply chameleon paint to vehicles in fivem. I haven't seen much discussion about the chameleon paint affects added in a recent DLC, so thought I would make very simple script to show how these new vehicle color indexes are applied. I have added a simple inventory icon for this item, and you must move `spraypaint.ogg` to your `interactsound` resource. I'm sure more can be done with this like adding indexes to `qb-customs` or adding job dependancy, but I will leave that to all of you to do. Hope this helps. This version has been changed to only use ox resources.

The meta and texture files found in the `data` and `stream` folders must be present for this to work.

## Credit
- [MrZedo](https://github.com/MrZedo/Cameleon-Color) Used information and assets found in this repo to implement the primary effect.

## Dependencies
- [ox-lib]
- [ox-inventory]
- For the colors to work you must be in GameBuild 2699

## Preview
https://streamable.com/oes8d9

## Shared items example
```lua
	['chameleonpaint_161'] = {
		label = 'Monochrome Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 223,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_162'] = {
		label = 'Night & Day Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 224,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_163'] = {
		label = 'The Verlierer Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 225,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_164'] = {
		label = 'Sprunk Extreme Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 226,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_165'] = {
		label = 'Vice City Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 227,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_166'] = {
		label = 'Synthwave Nights Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 228,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_167'] = {
		label = 'Four Seasons Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 229,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_168'] = {
		label = 'Maisonette 9 Throwback Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 230 ,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_169'] = {
		label = 'Bubblegum Spray',
		weight = 1,
		consume = 1,
		stack = true,
		close = true,
		description = 231,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_170'] = {
		label = 'Full Rainbow Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 232,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_171'] = {
		label = 'Sunset Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 233,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_172'] = {
		label = 'The Seven Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 234,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_173'] = {
		label = 'Kamen Rider Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 235,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_174'] = {
		label = 'Chromatic Aberration Sprayool',
		weight = 1,
		stack = true,
		close = true,
		description = 236,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_175'] = {
		label = 'Its Christmas! Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 237,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_176'] = {
		label = 'Temperature Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 238,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
```

## Discord
https://www.discord.gg/projectsloth
