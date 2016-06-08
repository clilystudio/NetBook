package com.clilystudio.netbook.ui;

import android.widget.SeekBar;

import com.clilystudio.netbook.util.as;

final class i
        implements SeekBar.OnSeekBarChangeListener {
    i(AudioBookPlayActivity paramAudioBookPlayActivity) {
    }

    public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
        if (AudioBookPlayActivity.e(this.a))
            return;
        as.a(10 * (paramInt * AudioBookPlayActivity.f(this.a)));
        AudioBookPlayActivity.b(this.a).d();
        AudioBookPlayActivity.a(this.a, AudioBookPlayActivity.g(this.a), paramInt * AudioBookPlayActivity.f(this.a) / 100);
    }

    public final void onStartTrackingTouch(SeekBar paramSeekBar) {
    }

    public final void onStopTrackingTouch(SeekBar paramSeekBar) {
    }
}

