package com.clilystudio.netbook.reader;

import android.widget.SeekBar;

final class ch
        implements SeekBar.OnSeekBarChangeListener {
    ch(ReaderTtsSetWidget paramReaderTtsSetWidget) {
    }

    public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    }

    public final void onStartTrackingTouch(SeekBar paramSeekBar) {
    }

    public final void onStopTrackingTouch(SeekBar paramSeekBar) {
        ReaderTtsSetWidget.a(this.a, false);
        ReaderTtsSetWidget.a(this.a).a(false);
        ReaderTtsSetWidget.a(this.a).a(paramSeekBar.getProgress());
        ReaderTtsSetWidget.a(this.a).a();
    }
}

