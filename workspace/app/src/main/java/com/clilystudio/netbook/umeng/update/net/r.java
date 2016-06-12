
package com.clilystudio.netbook.umeng.update.net;

import android.app.Notification;
import android.app.Notification$Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build$VERSION;
import android.support.design.widget.am;
import android.widget.RemoteViews;

final class r extends com.clilystudio.netbook.umeng.update.util.a {

    public r(Context Context1)
    {
        super( Context1 );
    }

    public final r a()
    {
        b.contentView.setViewVisibility( am.y( a ), 8 );
        b.contentView.setViewVisibility( am.z( a ), 8 );
        return this;
    }

    public final r a(int int1, int int2, boolean boolean3)
    {
        if( Build$VERSION.SDK_INT >= 14 )
            c.setProgress( 100, int2, false );
        b.contentView.setProgressBar( am.w( a ), 100, int2, false );
        return this;
    }

    public final r a(PendingIntent PendingIntent1, PendingIntent PendingIntent2)
    {
        b.contentView.setOnClickPendingIntent( am.y( a ), PendingIntent1 );
        b.contentView.setViewVisibility( am.y( a ), 0 );
        b.contentView.setViewVisibility( am.z( a ), 0 );
        b.contentView.setOnClickPendingIntent( am.z( a ), PendingIntent2 );
        return this;
    }

    public final r a(RemoteViews RemoteViews1)
    {
        b.contentView = RemoteViews1;
        return this;
    }

    public final r a(CharSequence CharSequence1)
    {
        if( Build$VERSION.SDK_INT >= 14 )
            c.setContentText( CharSequence1 );
        b.contentView.setTextViewText( am.u( a ), CharSequence1 );
        return this;
    }

    public final void a(int int1, String String2, PendingIntent PendingIntent3)
    {
        if( Build$VERSION.SDK_INT >= 16 )
            c.addAction( int1, (CharSequence) String2, PendingIntent3 );
    }

    public final r b()
    {
        int int1 = am.y( a );

        b.contentView.setTextViewText( int1, (CharSequence) a.getResources().getString( com.alipay.sdk.b.b.g( a.getApplicationContext() ) ) );
        b.contentView.setInt( int1, "setBackgroundResource", u.a.c.a( a ).b( "umeng_common_gradient_green" ) );
        return this;
    }

    public final r b(CharSequence CharSequence1)
    {
        if( Build$VERSION.SDK_INT >= 14 )
            c.setContentTitle( CharSequence1 );
        b.contentView.setTextViewText( am.x( a ), CharSequence1 );
        return this;
    }

    public final r c()
    {
        int int1 = am.y( a );

        b.contentView.setTextViewText( int1, (CharSequence) a.getResources().getString( com.alipay.sdk.b.b.f( a.getApplicationContext() ) ) );
        b.contentView.setInt( int1, "setBackgroundResource", u.a.c.a( a ).b( "umeng_common_gradient_orange" ) );
        return this;
    }

    public final Notification d()
    {
        if( Build$VERSION.SDK_INT >= 16 )
            return c.build();
        else if( Build$VERSION.SDK_INT >= 14 )
            return c.getNotification();
        else
            return b;
    }
}
