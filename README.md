# RC_HTML_Parser
**A simple, yet effective, way to extract data from websites through breaking down their HTML**

#BETA

This is a very effective way to strip data from websites, but there are a few issues known and being resolved. The Parser does not work properly with the following conditions present:
 - Identical, nested tags.
 - Tags that do not close immediately following their base keyword.
 
 Examples: 
    -     ✅: `<div> some stuff.. </div>` .
    -     ✅: `<div>A</div> some stuff...<div>B</div>`
    -     ❌: `<div class id="someID"> some stuff.. </div>` -> Notice how there is syntax after the div keyword in the opening tag
    -     ❌: `<div> <div>A</div> some stuff...<div>B</div> </div>` -> Notice the nested div tags

