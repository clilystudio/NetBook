package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class ThemeLoadingView extends FrameLayout {
    private LoadingProgressView a;
    private LoadingProgressView b;
    private ThemeLoadingView$Mode c = ThemeLoadingView$Mode.LIGHT;
    private boolean d = true;

    public ThemeLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ boolean a(ThemeLoadingView themeLoadingView, boolean bl) {
        themeLoadingView.d = true;
        return true;
    }

    private void c() {
        if (this.c == ThemeLoadingView$Mode.LIGHT) {
            this.setBackgroundResource(2130837696);
            return;
        }
        this.setBackgroundResource(2130837695);
    }

    private LoadingProgressView d() {
        if (this.c == ThemeLoadingView$Mode.LIGHT) {
            return this.a;
        }
        return this.b;
    }

    public final void a() {
        LoadingProgressView loadingProgressView = this.d();
        if (this.d) {
            this.d = false;
            this.setVisibility(0);
            loadingProgressView.a();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl) {
        ThemeLoadingView$Mode themeLoadingView$Mode = bl ? ThemeLoadingView$Mode.DARK : ThemeLoadingView$Mode.LIGHT;
        this.c = themeLoadingView$Mode;
        if (this.c == ThemeLoadingView$Mode.LIGHT) {
            this.a.setVisibility(0);
            this.b.setVisibility(8);
        } else {
            this.b.setVisibility(0);
            this.a.setVisibility(8);
        }
        this.c();
        if (this.d().b()) {
            return;
        }
        boolean bl2 = true;
        if (bl2) {
            this.a();
        }
    }

    public final void b() {
        LoadingProgressView loadingProgressView = this.d();
        if (!this.d) {
            loadingProgressView.a(new aC(this));
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        int n = this.getResources().getDimensionPixelSize(2131099927);
        this.setPadding(n, n, n, n);
        this.a = (LoadingProgressView) this.findViewById(2131493168);
        this.b = (LoadingProgressView) this.findViewById(2131493169);
        this.c();
    }
}
