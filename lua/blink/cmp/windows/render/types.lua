--- @class blink.cmp.Draw
--- @field align_to_component? string | 'none' Align the window to the component with the given name
--- @field padding number | number[] Padding on the left and right of the grid
--- @field gap number Gap between columns
--- @field columns { [number]: string, gap?: number }[] Components to render, grouped by column
--- @field components table<string, blink.cmp.DrawComponent> Component definitions
---
--- @class blink.cmp.DrawHighlight
--- @field [number] number Start and end index of the highlight
--- @field group? string Highlight group
--- @field params? table Additional parameters passed as the `params` field of the highlight
---
--- @class blink.cmp.DrawWidth
--- @field fixed? number Fixed width
--- @field fill? boolean Fill the remaining space
--- @field min? number Minimum width
--- @field max? number Maximum width
---
--- @class blink.cmp.DrawComponent
--- @field width? blink.cmp.DrawWidth
--- @field ellipsis? boolean Whether to add an ellipsis when truncating the text
--- @field text fun(ctx: blink.cmp.DrawItemContext): string Renders the text of the component
--- @field highlight? string | fun(ctx: blink.cmp.DrawItemContext, text: string): string | blink.cmp.DrawHighlight[] Renders the highlights of the component
