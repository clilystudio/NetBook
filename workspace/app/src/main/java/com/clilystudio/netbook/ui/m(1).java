package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

final class m
        implements IXmPlayerStatusListener {
    m(AudioBookPlayActivity paramAudioBookPlayActivity) {
    }

    public final void onBufferProgress(int paramInt) {
    }

    public final void onBufferingStart() {
    }

    public final void onBufferingStop() {
        AudioBookPlayActivity.j(this.a);
    }

    public final boolean onError(XmPlayerException paramXmPlayerException) {
        return false;
    }

    public final void onPlayPause() {
        AudioBookPlayActivity.t(this.a).setImageResource(2130837601);
        AudioBookPlayActivity.j(this.a);
    }

    public final void onPlayProgress(int paramInt1, int paramInt2) {
        AudioBookPlayActivity.a(this.a, AudioBookPlayActivity.g(this.a), paramInt1 / 1000);
        AudioBookPlayActivity.a(this.a, AudioBookPlayActivity.v(this.a), paramInt2 / 1000);
        AudioBookPlayActivity.e(this.a, true);
        AudioBookPlayActivity.w(this.a).setProgress(paramInt1 * 100 / paramInt2);
        AudioBookPlayActivity.e(this.a, false);
        if ((AudioBookPlayActivity.i(this.a) != null) && (1 + AudioBookPlayActivity.k(this.a) < AudioBookPlayActivity.i(this.a).size()) && (paramInt1 >= paramInt2 - 1000)) {
            AudioBookPlayActivity.x(this.a);
            AudioBookPlayActivity.y(this.a);
        }
        AudioBookPlayActivity.j(this.a);
    }

    public final void onPlayStart() {
        if (AudioBookPlayActivity.i(this.a).size() > AudioBookPlayActivity.k(this.a))
            AudioBookPlayActivity.b(this.a, true);
        AudioBookPlayActivity.t(this.a).setImageResource(2130837596);
        AudioBookPlayActivity.j(this.a);
    }

    public final void onPlayStop() {
        AudioBookPlayActivity.t(this.a).setImageResource(2130837601);
        AudioBookPlayActivity.j(this.a);
    }

    public final void onSoundPlayComplete() {
    }

    public final void onSoundPrepared() {
    }

    public final void onSoundSwitch(int paramInt1, int paramInt2, int paramInt3) {
        if ((AudioBookPlayActivity.i(this.a) != null) && (AudioBookPlayActivity.k(this.a) < AudioBookPlayActivity.i(this.a).size())) {
            AudioBookPlayActivity.a(this.a, (Track) AudioBookPlayActivity.i(this.a).get(AudioBookPlayActivity.k(this.a)));
            if (!AudioBookPlayActivity.u(this.a))
                break label166;
            AudioBookPlayActivity.d(this.a, false);
        }
        while (true) {
            AudioBookPlayActivity.l(this.a);
            AudioBookPlayActivity.j(this.a);
            if (AudioBookPlayActivity.k(this.a) == -1 + AudioBookPlayActivity.i(this.a).size())
                AudioBookPlayActivity.h(this.a);
            AudioBookPlayActivity.d(this.a, 1 + AudioBookPlayActivity.k(this.a));
            e.a(this.a, AudioBookPlayActivity.d(this.a), 1 + AudioBookPlayActivity.k(this.a));
            return;
            label166:
            AudioBookPlayActivity.p(this.a);
        }
    }
}

