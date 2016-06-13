package com.clilystudio.netbook.reader;

import android.view.animation.Animation;

final class c
        implements Animation.AnimationListener {
    private /* synthetic */ AutoReaderTextView a;

    c(AutoReaderTextView autoReaderTextView) {
        this.a = autoReaderTextView;
    }

    @Override
    public final void onAnimationEnd(Animation animation) {
        if (AutoReaderTextView.d(this.a) != null && this.a.getMeasuredHeight() <= 5) {
            AutoReaderTextView.a(this.a, true);
            AutoReaderTextView.d(this.a).d();
        }
    }

    @Override
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override
    public final void onAnimationStart(Animation animation) {
    }
}
