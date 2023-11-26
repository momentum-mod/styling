TTF, WOFF2 and [TTX](https://github.com/fonttools/fonttools) files for our customized version of Bebas Neue.

Bebas Neue is complicated, with multiple SIL versions and some more recent paid stuff.
Of the free (SIL Open Font License) versions there's

- 2010: Original version by Dharma Type (Ryoichi Tsunekawa), single weight, based off of "Bebas".
- 2014: Additional weights added to 2010 version by Font Fabric.
- 2018: Version 2.0 of Bebas Neue, by Dharma Type. Single weight. This is the version on Google Fonts and similar sites.
- See https://github.com/dharmatype/Bebas-Neue for a more info.

2018 is arguably better, but the differences are subtle, and there's only one weight. Since we
want the multiple weights, very few people can tell the difference, and we don't want to
co-mingle the two versions, we use the 2014 font everywhere. This repo contains the Bold, Regular and
Light version, we don't bother with the Thin version. Note that the Bold version corresponds to the
Regular 2018 version.

On top of all that, both versions have really bad vertical spacing. All alphanumeric glyphs have
the same height, yet the vertical metrics are a mess, with a different vertical spacing between
the top and bottom of the glyph. This is a total nightmare for our UI. As such we've modified
vertical spacing using techniques in [this guide](https://www.maxkohler.com/posts/2022-02-19-fixing-vertical-metrics/), and changing the `ascent` and `descent` values in `hhea` to given equal spacings at the top and bottom
of every glyph. Not that I (Tom/fingerprince) am not very experienced with fonts and very likely didn't do
this perfectly.

Finally, the O and 0 glyphs are not distinguishly, so the 0 glyph has been modified using FontForge to
add a diagonal bar in the middle.

The `<namerecord>`s of each file have then been modified to rename each font to "Bebas Neue Momentum", and
the version reset to 1.000.

The existing copyrights have not been modified, and remain under the SIL Open Font License 1.1, included in LICENSE.md
