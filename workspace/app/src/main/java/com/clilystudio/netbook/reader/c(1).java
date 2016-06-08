package com.clilystudio.netbook.reader;

import android.view.animation.Animation;

final class c
        implements Animation.AnimationListener {
    c(AutoReaderTextView paramAutoReaderTextView) {
    }

    public final void onAnimationEnd(Animation paramAnimation) {
        if ((AutoReaderTextView.d(this.a) != null) && (this.a.getMeasuredHeight() <= 5)) {
            AutoReaderTextView.a(this.a, true);
            AutoReaderTextView.d(this.a).d();
        }
    }

    public final void onAnimationRepeat(Animation paramAnimation) {
    }

    public final void onAnimationStart(Animation paramAnimation) {
    }
}

