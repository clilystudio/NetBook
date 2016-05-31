package com.clilystudio.app.netbook.ui;

import android.widget.SeekBar;

import com.clilystudio.app.netbook.util.as;

final class i
        implements SeekBar.OnSeekBarChangeListener {
    i(AudioBookPlayActivity paramAudioBookPlayActivity) {
    }

    public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
        if (AudioBookPlayActivity.d_setRight(this.a))
            return;
        as.a(10 * (paramInt * AudioBookPlayActivity.f_setTitle(this.a)));
        AudioBookPlayActivity.b_initContentView(this.a).d();
        AudioBookPlayActivity.a_initContentView(this.a, AudioBookPlayActivity.g(this.a), paramInt * AudioBookPlayActivity.f_setTitle(this.a) / 100);
    }

    public final void onStartTrackingTouch(SeekBar paramSeekBar) {
    }

    public final void onStopTrackingTouch(SeekBar paramSeekBar) {
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.i
 * JD-Core Version:    0.6.2
 */