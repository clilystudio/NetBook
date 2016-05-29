package com.clilystudio.app.netbook.reader;

import android.os.Bundle;

import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SynthesizerListener;

final class am
        implements SynthesizerListener {
    am(ReaderActivity paramReaderActivity) {
    }

    public final void onBufferProgress(int paramInt1, int paramInt2, int paramInt3, String paramString) {
    }

    public final void onCompleted(SpeechError paramSpeechError) {
        if (ReaderActivity.G(this.a) < -1 + ReaderActivity.H(this.a).length) {
            ReaderActivity.K(this.a);
            ReaderActivity.c(this.a, false);
            return;
        }
        ReaderActivity.J(this.a);
    }

    public final void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle) {
    }

    public final void onSpeakBegin() {
    }

    public final void onSpeakPaused() {
    }

    public final void onSpeakProgress(int paramInt1, int paramInt2, int paramInt3) {
        if ((ReaderActivity.G(this.a) == -1 + ReaderActivity.H(this.a).length) && (paramInt1 >= -1 + ((Integer) ReaderActivity.I(this.a).get(0)).intValue()) && (((Integer) ReaderActivity.I(this.a).get(0)).intValue() < 100))
            ReaderActivity.J(this.a);
    }

    public final void onSpeakResumed() {
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.am
 * JD-Core Version:    0.6.2
 */