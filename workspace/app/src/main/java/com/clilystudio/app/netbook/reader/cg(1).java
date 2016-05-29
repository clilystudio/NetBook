package com.clilystudio.app.netbook.reader;

import android.view.View;

import com.iflytek.cloud.SpeechUtility;

final class cg
        implements View.OnClickListener {
    cg(ReaderTtsSetWidget paramReaderTtsSetWidget) {
    }

    public final void onClick(View paramView) {
        this.a.setVisibility(8);
        ReaderTtsSetWidget.a(this.a).b();
        SpeechUtility.getUtility().openEngineSettings("tts");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cg
 * JD-Core Version:    0.6.2
 */