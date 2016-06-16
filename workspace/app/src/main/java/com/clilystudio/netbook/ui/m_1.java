package com.clilystudio.netbook.ui;

import android.content.Context;

import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

final class m implements IXmPlayerStatusListener {
    private /* synthetic */ AudioBookPlayActivity a;

    m(AudioBookPlayActivity audioBookPlayActivity) {
        this.a = audioBookPlayActivity;
    }

    @Override
    public final void onBufferProgress(int n) {
    }

    @Override
    public final void onBufferingStart() {
    }

    @Override
    public final void onBufferingStop() {
        AudioBookPlayActivity.j(this.a);
    }

    @Override
    public final boolean onError(XmPlayerException xmPlayerException) {
        return false;
    }

    @Override
    public final void onPlayPause() {
        AudioBookPlayActivity.t(this.a).setImageResource(R.drawable.audiobook_play_selector);
        AudioBookPlayActivity.j(this.a);
    }

    @Override
    public final void onPlayProgress(int n, int n2) {
        AudioBookPlayActivity.a(this.a, AudioBookPlayActivity.g(this.a), n / 1000);
        AudioBookPlayActivity.a(this.a, AudioBookPlayActivity.v(this.a), n2 / 1000);
        AudioBookPlayActivity.e(this.a, true);
        AudioBookPlayActivity.w(this.a).setProgress(n * 100 / n2);
        AudioBookPlayActivity.e(this.a, false);
        if (AudioBookPlayActivity.i(this.a) != null && 1 + AudioBookPlayActivity.k(this.a) < AudioBookPlayActivity.i(this.a).size() && n >= n2 - 1000) {
            AudioBookPlayActivity.x(this.a);
            AudioBookPlayActivity.y(this.a);
        }
        AudioBookPlayActivity.j(this.a);
    }

    @Override
    public final void onPlayStart() {
        if (AudioBookPlayActivity.i(this.a).size() > AudioBookPlayActivity.k(this.a)) {
            AudioBookPlayActivity.b(this.a, true);
        }
        AudioBookPlayActivity.t(this.a).setImageResource(R.drawable.audiobook_pause_selector);
        AudioBookPlayActivity.j(this.a);
    }

    @Override
    public final void onPlayStop() {
        AudioBookPlayActivity.t(this.a).setImageResource(R.drawable.audiobook_play_selector);
        AudioBookPlayActivity.j(this.a);
    }

    @Override
    public final void onSoundPlayComplete() {
    }

    @Override
    public final void onSoundPrepared() {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onSoundSwitch(int n, int n2, int n3) {
        if (AudioBookPlayActivity.i(this.a) != null && AudioBookPlayActivity.k(this.a) < AudioBookPlayActivity.i(this.a).size()) {
            AudioBookPlayActivity.a(this.a, (Track) AudioBookPlayActivity.i(this.a).get(AudioBookPlayActivity.k(this.a)));
            if (AudioBookPlayActivity.u(this.a)) {
                AudioBookPlayActivity.d(this.a, false);
            } else {
                AudioBookPlayActivity.p(this.a);
            }
        }
        AudioBookPlayActivity.l(this.a);
        AudioBookPlayActivity.j(this.a);
        if (AudioBookPlayActivity.k(this.a) == -1 + AudioBookPlayActivity.i(this.a).size()) {
            AudioBookPlayActivity.h(this.a);
        }
        AudioBookPlayActivity.d(this.a, 1 + AudioBookPlayActivity.k(this.a));
        e.a((Context) this.a, AudioBookPlayActivity.d(this.a), 1 + AudioBookPlayActivity.k(this.a));
    }
}
