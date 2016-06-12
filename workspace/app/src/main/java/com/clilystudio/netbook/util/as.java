package com.clilystudio.netbook.util;

import android.content.Context;

import com.clilystudio.netbook.MyApplication;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.player.XmPlayerManager;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.List;

public final class as {

    private static CommonRequest b;
    private static as a = new as();
    private static XmPlayerManager c = XmPlayerManager.getInstance((Context) MyApplication.a());
    private static boolean d = false;

    public static as a() {
        return a;
    }

    public static void a(int int1) {
        c.seekTo(int1);
    }

    public static void a(IXmPlayerStatusListener IXmPlayerStatusListener1) {
        c.addPlayerStatusListener(IXmPlayerStatusListener1);
    }

    public static CommonRequest b() {
        if (b == null) {
            CommonRequest CommonRequest1 = CommonRequest.getInstanse();

            b = CommonRequest1;
            CommonRequest1.init((Context) MyApplication.a(), "20680e0758e832acb8eb01342338cee5");
        }
        return b;
    }

    public static void b(IXmPlayerStatusListener IXmPlayerStatusListener1) {
        c.removePlayerStatusListener(IXmPlayerStatusListener1);
    }

    public static boolean c() {
        if (c != null && c.isPlaying())
            return true;
        else
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

    public static List j() {
        return c.getPlayList();
    }

    private static void k() {
        if (!d)
            c.init(1001, e.c());
        d = true;
    }

    public final void a(List List1, int int2) {
        k();
        c.playList(List1, int2);
    }

    public final void d() {
        k();
        c.play();
    }
}
