package com.clilystudio.netbook.reader;

import android.widget.SeekBar;

final class ch
        implements SeekBar.OnSeekBarChangeListener {
    private /* synthetic */ ReaderTtsSetWidget a;

    ch(ReaderTtsSetWidget readerTtsSetWidget) {
        this.a = readerTtsSetWidget;
    }

    @Override
    public final void onProgressChanged(SeekBar seekBar, int n, boolean bl) {
    }

    @Override
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override
    public final void onStopTrackingTouch(SeekBar seekBar) {
        ReaderTtsSetWidget.a(this.a, false);
        ReaderTtsSetWidget.a(this.a).a(false);
        ReaderTtsSetWidget.a(this.a).a(seekBar.getProgress());
        ReaderTtsSetWidget.a(this.a).a();
    }
}
