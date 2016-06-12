package com.clilystudio.netbook.umeng.update.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

import com.clilystudio.netbook.umeng.update.util.DeltaUpdate;

import java.io.File;

import u.a.g;

final class t extends AsyncTask {

    private int a;
    private String b;
    private k c;
    private Context d;
    private NotificationManager e;
    private p f;
    public t(p p1, Context Context2, int int3, k k4, String String5) {
        f = p1;
        d = Context2.getApplicationContext();
        e = (NotificationManager) d.getSystemService("notification");
        a = int3;
        c = k4;
        b = String5;
    }

    protected final transient Object doInBackground(Object[] Object_1darray1) {
        String[] String_1darray2 = (String[]) Object_1darray1;
        int int3 = 1 + DeltaUpdate.a(String_1darray2[0], String_1darray2[1], String_1darray2[2]);

        new File(String_1darray2[2]).delete();
        if (int3 == 1) {
            if (!u.a.g.a(new File(String_1darray2[1])).equalsIgnoreCase(c.e)) {
                u.a.b.a(p.a(), "file patch error");
                return Integer.valueOf(0);
            } else
                u.a.b.a(p.a(), "file patch success");
        } else
            u.a.b.a(p.a(), "file patch error");
        return Integer.valueOf(int3);
    }

    protected final void onPostExecute(Object Object1) {
        if (((Integer) Object1).intValue() == 1) {
            Notification Notification6;
            Intent Intent7;
            PendingIntent PendingIntent10;
            Bundle Bundle11;
            Message Message12;

            w.a(b, 39);
            Notification6 = new Notification(17301634, (CharSequence) d.getString(com.alipay.sdk.b.b.j(d)), System.currentTimeMillis());
            Intent7 = new Intent("android.intent.action.VIEW");
            Intent7.addFlags(268435456);
            Intent7.setDataAndType(Uri.fromFile(new File(b)), "application/vnd.android.package-archive");
            PendingIntent10 = PendingIntent.getActivity(d, 0, Intent7, 134217728);
            Notification6.setLatestEventInfo(d, (CharSequence) u.a.a.h(d), (CharSequence) d.getString(com.alipay.sdk.b.b.j(d)), PendingIntent10);
            Notification6.flags = 16;
            e.notify(1 + a, Notification6);
            if (p.a(d) && !c.h) {
                e.cancel(1 + a);
                d.startActivity(Intent7);
            }
            Bundle11 = new Bundle();
            Bundle11.putString("filename", b);
            Message12 = Message.obtain();
            Message12.what = 5;
            Message12.arg1 = 1;
            Message12.arg2 = a;
            Message12.setData(Bundle11);
            try {
                if (p.a(f).get(c) != null)
                    ((Messenger) p.a(f).get(c)).send(Message12);
                f.a(d, a);
            } catch (RemoteException RemoteException13) {
                f.a(d, a);
                return;
            }
        } else {
            Bundle Bundle2;
            Message Message3;

            e.cancel(1 + a);
            Bundle2 = new Bundle();
            Bundle2.putString("filename", b);
            Message3 = Message.obtain();
            Message3.what = 5;
            Message3.arg1 = 3;
            Message3.arg2 = a;
            Message3.setData(Bundle2);
            try {
                if (p.a(f).get(c) != null)
                    ((Messenger) p.a(f).get(c)).send(Message3);
                f.a(d, a);
            } catch (RemoteException RemoteException4) {
                f.a(d, a);
                return;
            }
        }
    }

    protected final void onPreExecute() {
        super.onPreExecute();
    }
}
