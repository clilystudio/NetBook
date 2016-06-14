package com.clilystudio.netbook.widget;

public final class ThemeLoadingView$Mode extends Enum<ThemeLoadingView$Mode> {
    public static final /* enum */ ThemeLoadingView$Mode DARK;
    public static final /* enum */ ThemeLoadingView$Mode LIGHT;
    private static final /* synthetic */ ThemeLoadingView$Mode[] a;

    static {
        LIGHT = new ThemeLoadingView$Mode();
        DARK = new ThemeLoadingView$Mode();
        ThemeLoadingView$Mode[] arrthemeLoadingView$Mode = new ThemeLoadingView$Mode[]{LIGHT, DARK};
        a = arrthemeLoadingView$Mode;
    }

    private ThemeLoadingView$Mode() {
        super(string, n);
    }

    public static ThemeLoadingView$Mode valueOf(String string) {
        return (ThemeLoadingView$Mode) ((Object) Enum.valueOf(ThemeLoadingView$Mode.class, string));
    }

    public static ThemeLoadingView$Mode[] values() {
        return (ThemeLoadingView$Mode[]) a.clone();
    }
}
