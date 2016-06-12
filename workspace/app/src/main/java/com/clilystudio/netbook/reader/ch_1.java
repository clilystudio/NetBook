package com.clilystudio.netbook.reader;

import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;

final class ch implements SeekBar$OnSeekBarChangeListener {

    private ReaderTtsSetWidget a;

    ch(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        a = ReaderTtsSetWidget1;
    }

    public final void onProgressChanged(SeekBar SeekBar1, int int2, boolean boolean3) {
    }

    public final void onStartTrackingTouch(SeekBar SeekBar1) {
    }

    public final void onStopTrackingTouch(SeekBar SeekBar1) {
        ReaderTtsSetWidget.a(a, false);
        ReaderTtsSetWidget.a(a).a(false);
        ReaderTtsSetWidget.a(a).a(SeekBar1.getProgress());
        ReaderTtsSetWidget.a(a).a();
    }
}
