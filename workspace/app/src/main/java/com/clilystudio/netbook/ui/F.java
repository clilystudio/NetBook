package com.clilystudio.netbook.ui;

import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

final class F implements IXmPlayerStatusListener {
    private /* synthetic */ AudiobookInfoActivity a;

    F(AudiobookInfoActivity audiobookInfoActivity) {
        this.a = audiobookInfoActivity;
    }

    @Override
    public final void onBufferProgress(int n) {
    }

    @Override
    public final void onBufferingStart() {
    }

    @Override
    public final void onBufferingStop() {
    }

    @Override
    public final boolean onError(XmPlayerException xmPlayerException) {
        return false;
    }

    @Override
    public final void onPlayPause() {
    }

    @Override
    public final void onPlayProgress(int n, int n2) {
    }

    @Override
    public final void onPlayStart() {
    }

    @Override
    public final void onPlayStop() {
    }

    @Override
    public final void onSoundPlayComplete() {
    }

    @Override
    public final void onSoundPrepared() {
    }

    @Override
    public final void onSoundSwitch(int n, int n2, int n3) {
        if (AudiobookInfoActivity.q(this.a)) {
            AudiobookInfoActivity.h(this.a).setPlayButtonDefault(AudiobookInfoActivity.m(this.a));
            AudiobookInfoActivity.c(this.a, 1 + AudiobookInfoActivity.m(this.a));
            AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.m(this.a), true);
            AudiobookInfoActivity.r(this.a);
            return;
        }
        AudiobookInfoActivity.f(this.a, true);
    }
}
