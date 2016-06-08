package com.clilystudio.netbook.util;

import com.clilystudio.netbook.MyApplication;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.XmPlayerManager;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.List;

public final class as {
    private static as a = new as();
    private static CommonRequest b;
    private static XmPlayerManager c = XmPlayerManager.getInstance(MyApplication.a());
    private static boolean d = false;

    public static as a() {
        return a;
    }

    public static void a(int paramInt) {
        c.seekTo(paramInt);
    }

    public static void a(IXmPlayerStatusListener paramIXmPlayerStatusListener) {
        c.addPlayerStatusListener(paramIXmPlayerStatusListener);
    }

    public static CommonRequest b() {
        if (b == null) {
            CommonRequest localCommonRequest = CommonRequest.getInstanse();
            b = localCommonRequest;
            localCommonRequest.init(MyApplication.a(), "20680e0758e832acb8eb01342338cee5");
        }
        return b;
    }

    public static void b(IXmPlayerStatusListener paramIXmPlayerStatusListener) {
        c.removePlayerStatusListener(paramIXmPlayerStatusListener);
    }

    public static boolean c() {
        return (c != null) && (c.isPlaying());
    }

    public static PlayableModel e() {
        return c.getCurrSound();
    }

    public static void f() {
        c.playPre();
    }

    public static void g() {
        c.playNext();
    }

    public static void h() {
        c.pause();
    }

    public static void i() {
        c.release();
    }

    public static List<Track> j() {
        return c.getPlayList();
    }

    private static void k() {
        if (!d)
            c.init(1001, e.c());
        d = true;
    }

    public final void a(List<Track> paramList, int paramInt) {
        k();
        c.playList(paramList, paramInt);
    }

    public final void d() {
        k();
        c.play();
    }
}

