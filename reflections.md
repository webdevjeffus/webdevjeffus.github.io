# My Website - Reflections
### By Jeff George, 9.28.15, for DBC Phase 0

## Website URL:
http://webdevjeffus.github.io/index.html

Note that as of this writing, all images in the website are temporary placeholders, including the hero image on the "splash panel." Links may or may not connect to their ultimate targets. And I ran out of time before today's 1pm deadline to style my blog index and posts; I hope to have that done before the end of the evening on 9/28, though, so they may be complete by the time you read this reflection.

## Reflection Questions

#### What did you learn about CSS padding, borders, and margin by doing this challenge?

I was already pretty well up on the CSS box model before this week, so there wasn't alot new to me there, at least in how padding, borders, and the margin interact with one another. What I did do for the first time was use Chrome DevTools extensively to sleuth out where the extra pixels that so often pop up between elements in CSS are coming from. Using DevTools, it is possible to fairly quickly isolate which rule, tied to which selector, holds the declaration that is causing the problem.


#### What did you learn about CSS positioning?

Again, I had already worked with CSS positioning in the past, so I came in with a working familiarity of static, relative, fixed, and absolute positioning. What I learned this week related to positioning turned out to be a side-effect of adjusting line-height. I kept encountering a narrow band of empty pixels, about 7 pixels high, at the bottom edge of certain **section** or **div** elements, as if there were a bottom margin on the element. Checking those spaces with DevTools didn't solve the problem, because _Inspect Element_ showed the empty space as belonging to the underlying element, usually the **body** or .container **div**.

I mention this in a positioning question because I was able to hack a work-around using relative positioning on the **section** or **div** _below_ the blank pixels, to push it upwards to cover the blank space. But this didn't work perfectly, because when the page scaled for changes to screen width, the size of the blank space scaled also, but my re-positioning hack, declared in negative pixels, didn't scale.

Ultimately, I found that the culprit was changes to **line-height** on parent elements (specifically, the **html** element, in at least one case) that were being inherited by **sections** or **divs** that contained no text. By avoiding resetting line-height except on elements that actually contain text, I was able to eliminate the extra pixels.


#### What aspects of your design did you find easiest to implement? What was most difficult?

By far the biggest time-sink on this challenge was my grid system. I decided to create my own responsive grid, based very loosely on J Ky Marsh's Tiny Responsive Grid, to use on this and other websites. I lost track of how many hours I spent working on this project, but it was over 20. I created a separate repo (https://github.com/webdevjeffus/griddy) to work on the grid system - you can view it there, if you like. I was pleased with it, and although I am still finding bugs and kinks that need to be worked out, it overall works pretty much like I had hoped. Even so, it was a huge undertaking, and it threw my totally behind schedule on this challenge.

The easiest part of the whole thing, mostly because my grid system basically worked as planned in the end, was styling the site for tablet and computer-monitor screen-widths. The grid system was set up as a mobile-first system, so I started styling the site for a 320-400px wide screen. Once the basic styles were applied in this screen-width, it was relatively painless to expand the browser window and add whatever adjustments were necessary to the layout to take advantage of the new screen size and shape. Because I had built in scaling root font-sizes at every breakpoint, all the text (headings, paragraphs, etc.) scales automatically, minimizing the amount of work necessary to style for the larger screen widths.


#### What did you learn about adding and formatting elements with CSS in this challenge?

One of the tricks in setting up my grid system was planning for how gutters between side-by-side elements could be automatically inserted using padding and margins. In cases where the adjacent elements were not contained in boxes, it was simple enough to figure out how much space you want between the elements, divide it in two, and apply a .gutter style to add **padding-right** and **-left** to all elements in the column, and to the row containing those elements (so that the gutters on the outside edges match the ones between the column elements).

But this was complicated with one or more of the column elements in the row was contained in a box with a background or border (or both). Just adding the .gutter style, with the padding, padded the contents of the element from the edges of the box, but the box itself would be pressed against whatever other elements were next to it in the column. Obviously, margin was what I needed, to add space outside the border and padding, but the widths on the elements in the grid system _have_ to be set as percentages, not rems or pixels, so that they can scale smoothly. My .gutter styles use rems, so they scale automatically with the text, and this doesn't cause a problem, because their padding pushes _in_ on the contents, and doesn't change the exterior width of the element. But margins expand _out_ by definition, so a separate set of column-width styles had to be added for elements in boxes, which reduces the bordered area to allow room for the margin.

And there is the problem: if you use rems or pixels for margins, but set the width of the element with percentages, the system breaks because the margins don't scale smoothly with the rest of the elements. Eventually the margins plus the interior widths of all the elements in the row add up to more than 100% of row's width in the grid, and the last element wraps below the row.

The best solution I found was to calculate the rough equivalent of the padding created by the .gutters styles, which is measured in rems, and approximate that in percentages. The margins for boxed elements were then set to those percentages, and the border-box width of column elements in boxes were reduced by the total percentage of the margins.