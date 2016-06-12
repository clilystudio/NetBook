package com.clilystudio.netbook.widget;

public final class ThemeLoadingView$Mode extends Enum {

    public static final ThemeLoadingView$Mode LIGHT = new ThemeLoadingView$Mode("LIGHT", 0);
    public static final ThemeLoadingView$Mode DARK = new ThemeLoadingView$Mode("DARK", 1);
    private static ThemeLoadingView$Mode[] a;     // final access specifier removed

    static {
        ThemeLoadingView$Mode[] Mode_1darray1 = new ThemeLoadingView$Mode[2];

        Mode_1darray1[0] = LIGHT;
        Mode_1darray1[1] = DARK;
        a = Mode_1darray1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    private ThemeLoadingView$Mode(String String1, int int2) {
        super(String1, int2);
    }

    public static ThemeLoadingView$Mode valueOf(String String1) {
    }

    public static ThemeLoadingView$Mode[] values() {
        return (ThemeLoadingView$Mode[]) a.clone();
    }
}
