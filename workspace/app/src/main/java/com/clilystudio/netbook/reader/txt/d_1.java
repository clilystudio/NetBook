package com.clilystudio.netbook.reader.txt;

import android.os.Bundle;

import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SynthesizerListener;

final class d implements SynthesizerListener {
    private /* synthetic */ ReaderTxtActivity a;

    d(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onBufferProgress(int n, int n2, int n3, String string) {
    }

    @Override
    public final void onCompleted(SpeechError speechError) {
        if (ReaderTxtActivity.w(this.a) < -1 + ReaderTxtActivity.x(this.a).length) {
            ReaderTxtActivity.A(this.a);
            ReaderTxtActivity.c(this.a, false);
            return;
        }
        ReaderTxtActivity.z(this.a);
    }

    @Override
    public final void onEvent(int n2, int n3, int n4, Bundle bundle) {
    }

    @Override
    public final void onSpeakBegin() {
    }

    @Override
    public final void onSpeakPaused() {
    }

    @Override
    public final void onSpeakProgress(int n2, int n3, int n4) {
        if (ReaderTxtActivity.w(this.a) == -1 + ReaderTxtActivity.x(this.a).length && n2 >= -1 + (Integer) ReaderTxtActivity.y(this.a).get(0) && (Integer) ReaderTxtActivity.y(this.a).get(0) < 100) {
            ReaderTxtActivity.z(this.a);
        }
    }

    @Override
    public final void onSpeakResumed() {
    }
}
