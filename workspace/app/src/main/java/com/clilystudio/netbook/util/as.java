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
    private static XmPlayerManager c;
    private static boolean d;

    static {
        c = XmPlayerManager.getInstance(MyApplication.a());
        d = false;
    }

    private as() {
    }

    public static as a() {
        return a;
    }

    public static void a(int n) {
        c.seekTo(n);
    }

    public static void a(IXmPlayerStatusListener iXmPlayerStatusListener) {
        c.addPlayerStatusListener(iXmPlayerStatusListener);
    }

    public static CommonRequest b() {
        if (b == null) {
            CommonRequest commonRequest;
            b = commonRequest = CommonRequest.getInstanse();
            commonRequest.init(MyApplication.a(), "20680e0758e832acb8eb01342338cee5");
        }
        return b;
    }

    public static void b(IXmPlayerStatusListener iXmPlayerStatusListener) {
        c.removePlayerStatusListener(iXmPlayerStatusListener);
    }

    public static boolean c() {
        if (c != null && c.isPlaying()) {
            return true;
        }
        return false;
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
        if (!d) {
            c.init(1001, e.c());
        }
        d = true;
    }

    public final void a(List<Track> list, int n) {
        as.k();
        c.playList(list, n);
    }

    public final void d() {
        as.k();
        c.play();
    }
}
