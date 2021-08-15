/* http://www.tonguescraperusa.com/Oolitt-Tongue-Cleaner--Normal-Use-Pkg-of-6-_p_3.html
 * Patent US5217475A, granted 1993, expired */

function v3(s) = [s, s, s];

layerheight = 2; // TODO: should be 0.20 1st + 0.3 consecutive ?
scale_factor = 1 / 1400 * 200; // ~20cm

scale(v3(scale_factor))
linear_extrude(layerheight)
    import("tonguemask.svg");