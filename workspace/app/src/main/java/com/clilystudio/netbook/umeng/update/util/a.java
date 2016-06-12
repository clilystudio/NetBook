package com.clilystudio.netbook.umeng.update.util;

import android.app.Notification;
import android.app.Notification$Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build$VERSION;
import android.widget.RemoteViews;

public class a {

    protected Context a;
    protected Notification$Builder c;
    protected Notification b = new Notification();
    public a(Context Context1) {
        a = Context1.getApplicationContext();
        if (Build$VERSION.SDK_INT >= 14)
            c = new Notification$Builder(Context1);
    }

    public final a a(int int1) {
        if (Build$VERSION.SDK_INT >= 14)
            c.setSmallIcon(int1);
        b.icon = int1;
        return this;
    }

    public final a a(long long1) {
        if (Build$VERSION.SDK_INT >= 14)
            c.setWhen(long1);
        b.when = long1;
        return this;
    }

    public final a a(PendingIntent PendingIntent1) {
        if (Build$VERSION.SDK_INT >= 14)
            c.setContentIntent(PendingIntent1);
        b.contentIntent = PendingIntent1;
        return this;
    }

    public final a a(boolean boolean1) {
        if (Build$VERSION.SDK_INT >= 14)
            c.setOngoing(boolean1);
        if (boolean1) {
            Notification Notification3 = b;

            Notification3.flags = 0x2 | Notification3.flags;
        } else {
            Notification Notification2 = b;

            Notification2.flags = 0xFFFFFFFD & Notification2.flags;
        }
        return this;
    }

    public final a b(RemoteViews RemoteViews1) {
        if (Build$VERSION.SDK_INT < 16 && Build$VERSION.SDK_INT >= 14)
            c.setContent(RemoteViews1);
        b.contentView = RemoteViews1;
        return this;
    }

    public final a b(boolean boolean1) {
        if (Build$VERSION.SDK_INT >= 14)
            c.setAutoCancel(boolean1);
        if (boolean1) {
            Notification Notification3 = b;

            Notification3.flags = 0x10 | Notification3.flags;
        } else {
            Notification Notification2 = b;

            Notification2.flags = 0xFFFFFFEF & Notification2.flags;
        }
        return this;
    }

    public final a d(CharSequence CharSequence1) {
        if (Build$VERSION.SDK_INT >= 14)
            c.setTicker(CharSequence1);
        b.tickerText = CharSequence1;
        return this;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void e() {
    }
}
