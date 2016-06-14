package com.clilystudio.netbook.reader;

import android.view.View;

import com.iflytek.cloud.SpeechUtility;

final class cg implements View.OnClickListener {
    private /* synthetic */ ReaderTtsSetWidget a;

    cg(ReaderTtsSetWidget readerTtsSetWidget) {
        this.a = readerTtsSetWidget;
    }

    @Override
    public final void onClick(View view) {
        this.a.setVisibility(8);
        ReaderTtsSetWidget.a(this.a).b();
        SpeechUtility.getUtility().openEngineSettings("tts");
    }
}
