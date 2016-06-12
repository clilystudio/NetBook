package com.clilystudio.netbook.umeng.update.net;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

final class j implements ServiceConnection {

    private i a;

    j(i i1) {
        a = i1;
    }

    public final void onServiceConnected(ComponentName ComponentName1, IBinder IBinder2) {
        u.a.b.c(i.b(), "ServiceConnection.onServiceConnected");
        i.a(a, new Messenger(IBinder2));
        try {
            Message Message4 = Message.obtain(null, 4);
            k k5 = new k(i.a(a), i.b(a), i.c(a));
            Bundle Bundle6;

            k5.d = i.d(a);
            k5.e = i.e(a);
            k5.f = i.f(a);
            k5.g = i.g(a);
            k5.h = i.h(a);
            k5.i = i.i(a);
            Bundle6 = new Bundle();
            Bundle6.putString("mComponentName", k5.a);
            Bundle6.putString("mTitle", k5.b);
            Bundle6.putString("mUrl", k5.c);
            Bundle6.putString("mMd5", k5.d);
            Bundle6.putString("mTargetMd5", k5.e);
            Bundle6.putStringArray("reporturls", k5.f);
            Bundle6.putBoolean("rich_notification", k5.g);
            Bundle6.putBoolean("mSilent", k5.h);
            Bundle6.putBoolean("mWifiOnly", k5.i);
            Message4.setData(Bundle6);
            Message4.replyTo = a.a;
            i.j(a).send(Message4);
        } catch (RemoteException RemoteException3) {
            return;
        }
    }

    public final void onServiceDisconnected(ComponentName ComponentName1) {
        u.a.b.c(i.b(), "ServiceConnection.onServiceDisconnected");
        i.a(a, null);
    }
}
