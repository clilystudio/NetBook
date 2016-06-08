package com.clilystudio.netbook.reader;

import android.widget.SeekBar;

final class cV
        implements SeekBar.OnSeekBarChangeListener {
    cV(SettingWidget paramSettingWidget) {
    }

    public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
        if (paramBoolean) {
            if (paramInt < 15)
                paramInt = 15;
            SettingWidget.b(this.a).b(paramInt);
        }
    }

    public final void onStartTrackingTouch(SeekBar paramSeekBar) {
        SettingWidget.c(this.a).setChecked(false);
    }

    public final void onStopTrackingTouch(SeekBar paramSeekBar) {
    }
}

