package com.clilystudio.netbook.ui.home;

import android.app.Activity;

import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.t;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

final class x
        implements IXmPlayerStatusListener {
    private /* synthetic */ HomeShelfFragment a;

    x(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    @Override
    public final void onBufferProgress(int n) {
    }

    @Override
    public final void onBufferingStart() {
        HomeShelfFragment.a(this.a, false);
        e.a((Activity) this.a.getActivity(), (String) "\u7f13\u51b2\u4e2d!");
    }

    @Override
    public final void onBufferingStop() {
        HomeShelfFragment.a(this.a, true);
    }

    @Override
    public final boolean onError(XmPlayerException xmPlayerException) {
        return false;
    }

    @Override
    public final void onPlayPause() {
        e.a((boolean) false);
        HomeShelfFragment.o(this.a);
        HomeShelfFragment.a(this.a, false);
    }

    @Override
    public final void onPlayProgress(int n2, int n3) {
        HomeShelfFragment.p(this.a).setText(t.b((long) n2) + "/" + t.b((long) n3));
        e.b((String) (t.b((long) n2) + "/" + t.b((long) n3)));
    }

    @Override
    public final void onPlayStart() {
        e.a((boolean) true);
        HomeShelfFragment.o(this.a);
        a.v(this.a.getActivity());
    }

    @Override
    public final void onPlayStop() {
        HomeShelfFragment.a(this.a, false);
    }

    @Override
    public final void onSoundPlayComplete() {
    }

    @Override
    public final void onSoundPrepared() {
    }

    @Override
    public final void onSoundSwitch(int n2, int n3, int n4) {
        HomeShelfFragment.d(this.a);
        Track track = as.j().get(n2);
        HomeShelfFragment.a(this.a, track);
    }
}
