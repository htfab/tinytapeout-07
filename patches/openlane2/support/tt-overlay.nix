new: old: {

  netgen = old.netgen.overrideAttrs(finalAttrs: previousAttrs: {
    patches = (previousAttrs.patches or []) ++ [
        ./tt-patches/netgen/0001.patch
        ./tt-patches/netgen/0002.patch
        ./tt-patches/netgen/0003.patch
        ./tt-patches/netgen/0004.patch
        ./tt-patches/netgen/0005.patch
        ./tt-patches/netgen/0006.patch
        ./tt-patches/netgen/0007.patch
        ./tt-patches/netgen/0008.patch
        ./tt-patches/netgen/0009.patch
    ];
  });

  opensta = old.opensta.overrideAttrs(finalAttrs: previousAttrs: {
    patches = (previousAttrs.patches or []) ++ [
        ./tt-patches/opensta/0001.patch
    ];
  });

}
