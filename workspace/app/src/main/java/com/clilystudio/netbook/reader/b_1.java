package com.clilystudio.netbook.reader;

import android.view.animation.Animation;
import android.view.animation.Transformation;

final class b extends Animation {
    private /* synthetic */ AutoReaderTextView a;

    b(AutoReaderTextView autoReaderTextView) {
        this.a = autoReaderTextView;
    }

    @Override
    protected final void applyTransformation(float f, Transformation transformation) {
        if (!AutoReaderTextView.a(this.a)) {
            AutoReaderTextView.b((AutoReaderTextView) this.a).height = AutoReaderTextView.c(this.a) - (int) (f * (float) AutoReaderTextView.c(this.a));
            this.a.setLayoutParams(AutoReaderTextView.b(this.a));
        }
    }
}
