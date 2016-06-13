package com.clilystudio.netbook.widget;

import android.annotation.TargetApi;
import android.os.Build;
import android.text.StaticLayout;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;

final class ai
        implements ViewTreeObserver.OnGlobalLayoutListener {
    private /* synthetic */ String a;
    private /* synthetic */ String b;
    private /* synthetic */ MenuGameTitle c;

    ai(MenuGameTitle menuGameTitle, String string, String string2) {
        this.c = menuGameTitle;
        this.a = string;
        this.b = string2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 16)
    @Override
    public final void onGlobalLayout() {
        int n = 1;
        int n2 = StaticLayout.getDesiredWidth(this.a, this.c.mSlmReaderAppName.getPaint()) + StaticLayout.getDesiredWidth(this.b, this.c.mSlmReaderAppSize.getPaint()) > (float) this.c.getMeasuredWidth() ? n : 0;
        MenuGameTitle menuGameTitle = this.c;
        int n3 = n2 != 0 ? n : 0;
        menuGameTitle.setOrientation(n3);
        if (n2 != 0) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.topMargin = (int) MenuGameTitle.a(this.c, 3);
            this.c.mSlmReaderAppSize.setLayoutParams(layoutParams);
        }
        this.c.mSlmReaderAppName.setText(this.a);
        this.c.mSlmReaderAppSize.setText(this.b);
        ViewTreeObserver viewTreeObserver = this.c.getViewTreeObserver();
        if (Build.VERSION.SDK_INT < 16) {
            n = 0;
        }
        if (n != 0) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
            return;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this);
    }
}
