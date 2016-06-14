package com.clilystudio.netbook.reader;

import android.widget.SeekBar;

final class cV implements SeekBar.OnSeekBarChangeListener {
    private /* synthetic */ SettingWidget a;

    cV(SettingWidget settingWidget) {
        this.a = settingWidget;
    }

    @Override
    public final void onProgressChanged(SeekBar seekBar, int n, boolean bl) {
        if (bl) {
            if (n < 15) {
                n = 15;
            }
            SettingWidget.b(this.a).b(n);
        }
    }

    @Override
    public final void onStartTrackingTouch(SeekBar seekBar) {
        SettingWidget.c(this.a).setChecked(false);
    }

    @Override
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
