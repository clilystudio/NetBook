package com.clilystudio.netbook.reader;

import android.os.Bundle;

import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SynthesizerListener;

final class am implements SynthesizerListener {
    private /* synthetic */ ReaderActivity a;

    am(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onBufferProgress(int n, int n2, int n3, String string) {
    }

    @Override
    public final void onCompleted(SpeechError speechError) {
        if (ReaderActivity.G(this.a) < -1 + ReaderActivity.H(this.a).length) {
            ReaderActivity.K(this.a);
            ReaderActivity.c(this.a, false);
            return;
        }
        ReaderActivity.J(this.a);
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
        if (ReaderActivity.G(this.a) == -1 + ReaderActivity.H(this.a).length && n2 >= -1 + (Integer) ReaderActivity.I(this.a).get(0) && (Integer) ReaderActivity.I(this.a).get(0) < 100) {
            ReaderActivity.J(this.a);
        }
    }

    @Override
    public final void onSpeakResumed() {
    }
}
