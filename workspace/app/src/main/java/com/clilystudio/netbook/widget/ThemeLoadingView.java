package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

public class ThemeLoadingView extends FrameLayout {
    private LoadingProgressView a;
    private LoadingProgressView b;
    private ThemeLoadingView.Mode c = ThemeLoadingView.Mode.LIGHT;
    private boolean d = true;

    public ThemeLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ boolean a(ThemeLoadingView themeLoadingView, boolean bl) {
        themeLoadingView.d = true;
        return true;
    }

    private void c() {
        if (this.c == ThemeLoadingView.Mode.LIGHT) {
            this.setBackgroundResource(R.drawable.bg_theme_loading_light);
            return;
        }
        this.setBackgroundResource(R.drawable.bg_theme_loading_dark);
    }

    private LoadingProgressView d() {
        if (this.c == ThemeLoadingView.Mode.LIGHT) {
            return this.a;
        }
        return this.b;
    }

    public final void a() {
        LoadingProgressView loadingProgressView = this.d();
        if (this.d) {
            this.d = false;
            this.setVisibility(View.VISIBLE);
            loadingProgressView.a();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl) {
        ThemeLoadingView.Mode themeLoadingView$Mode = bl ? ThemeLoadingView.Mode.DARK : ThemeLoadingView.Mode.LIGHT;
        this.c = themeLoadingView$Mode;
        if (this.c == ThemeLoadingView.Mode.LIGHT) {
            this.a.setVisibility(View.VISIBLE);
            this.b.setVisibility(View.GONE);
        } else {
            this.b.setVisibility(View.VISIBLE);
            this.a.setVisibility(View.GONE);
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
            loadingProgressView.a(new ah() {
                @Override
                public void a() {
                    ThemeLoadingView.this.setVisibility(View.GONE);
                    ThemeLoadingView.this.d = true;
                }
            });
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        int n = this.getResources().getDimensionPixelSize(R.dimen.theme_loading_padding);
        this.setPadding(n, n, n, n);
        this.a = (LoadingProgressView) this.findViewById(R.id.light_loading);
        this.b = (LoadingProgressView) this.findViewById(R.id.dark_loading);
        this.c();
    }
    
    public enum Mode {
        LIGHT, DARK;
    }
}
