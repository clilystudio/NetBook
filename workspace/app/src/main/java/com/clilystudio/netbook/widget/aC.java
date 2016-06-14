package com.clilystudio.netbook.widget;

final class aC implements ah {
    private /* synthetic */ ThemeLoadingView a;

    aC(ThemeLoadingView themeLoadingView) {
        this.a = themeLoadingView;
    }

    @Override
    public final void a() {
        this.a.setVisibility(View.GONE);
        ThemeLoadingView.a(this.a, true);
    }
}
