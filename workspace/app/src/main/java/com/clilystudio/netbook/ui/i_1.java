package com.clilystudio.netbook.ui;

import android.widget.SeekBar;

import com.clilystudio.netbook.util.as;

final class i implements SeekBar.OnSeekBarChangeListener {
    private /* synthetic */ AudioBookPlayActivity a;

    i(AudioBookPlayActivity audioBookPlayActivity) {
        this.a = audioBookPlayActivity;
    }

    @Override
    public final void onProgressChanged(SeekBar seekBar, int n, boolean bl) {
        if (AudioBookPlayActivity.e(this.a)) {
            return;
        }
        as.a(10 * (n * AudioBookPlayActivity.f(this.a)));
        AudioBookPlayActivity.b(this.a).d();
        AudioBookPlayActivity.a(this.a, AudioBookPlayActivity.g(this.a), n * AudioBookPlayActivity.f(this.a) / 100);
    }

    @Override
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
