package com.clilystudio.netbook.ui;

import android.content.Context;

import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

final class m implements IXmPlayerStatusListener {

    private AudioBookPlayActivity a;

    m(AudioBookPlayActivity AudioBookPlayActivity1) {
        a = AudioBookPlayActivity1;
    }

    public final void onBufferProgress(int int1) {
    }

    public final void onBufferingStart() {
    }

    public final void onBufferingStop() {
        AudioBookPlayActivity.j(a);
    }

    public final boolean onError(XmPlayerException XmPlayerException1) {
        return false;
    }

    public final void onPlayPause() {
        AudioBookPlayActivity.t(a).setImageResource(2130837601);
        AudioBookPlayActivity.j(a);
    }

    public final void onPlayProgress(int int1, int int2) {
        AudioBookPlayActivity.a(a, AudioBookPlayActivity.g(a), int1 / 1000);
        AudioBookPlayActivity.a(a, AudioBookPlayActivity.v(a), int2 / 1000);
        AudioBookPlayActivity.e(a, true);
        AudioBookPlayActivity.w(a).setProgress(int1 * 100 / int2);
        AudioBookPlayActivity.e(a, false);
        if (AudioBookPlayActivity.i(a) != null && 1 + AudioBookPlayActivity.k(a) < AudioBookPlayActivity.i(a).size() && int1 >= int2 - 1000) {
            AudioBookPlayActivity.x(a);
            AudioBookPlayActivity.y(a);
        }
        AudioBookPlayActivity.j(a);
    }

    public final void onPlayStart() {
        if (AudioBookPlayActivity.i(a).size() > AudioBookPlayActivity.k(a))
            AudioBookPlayActivity.b(a, true);
        AudioBookPlayActivity.t(a).setImageResource(2130837596);
        AudioBookPlayActivity.j(a);
    }

    public final void onPlayStop() {
        AudioBookPlayActivity.t(a).setImageResource(2130837601);
        AudioBookPlayActivity.j(a);
    }

    public final void onSoundPlayComplete() {
    }

    public final void onSoundPrepared() {
    }

    public final void onSoundSwitch(int int1, int int2, int int3) {
        if (AudioBookPlayActivity.i(a) != null && AudioBookPlayActivity.k(a) < AudioBookPlayActivity.i(a).size()) {
            AudioBookPlayActivity.a(a, (Track) AudioBookPlayActivity.i(a).get(AudioBookPlayActivity.k(a)));
            if (AudioBookPlayActivity.u(a))
                AudioBookPlayActivity.d(a, false);
            else
                AudioBookPlayActivity.p(a);
        }
        AudioBookPlayActivity.l(a);
        AudioBookPlayActivity.j(a);
        if (AudioBookPlayActivity.k(a) == -1 + AudioBookPlayActivity.i(a).size())
            AudioBookPlayActivity.h(a);
        AudioBookPlayActivity.d(a, 1 + AudioBookPlayActivity.k(a));
        com.clilystudio.netbook.util.e.a((Context) a, AudioBookPlayActivity.d(a), 1 + AudioBookPlayActivity.k(a));
    }
}
