
package com.clilystudio.netbook.umeng.update;

import android.app.Notification;
import android.app.Notification$BigTextStyle;
import android.app.Notification$Builder;
import android.app.Notification$Style;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build$VERSION;

final class p extends com.clilystudio.netbook.umeng.update.util.a {

    public p(o o1, Context Context2)
    {
        super( Context2 );
    }

    private String d = "";
    private String e = "";

    public final Notification a()
    {
        if( Build$VERSION.SDK_INT >= 16 )
            return c.build();
        else if( Build$VERSION.SDK_INT >= 14 )
            return c.getNotification();
        else
        {
            b.setLatestEventInfo( a, (CharSequence) d, (CharSequence) e, b.contentIntent );
            return b;
        }
    }

    public final p a(CharSequence CharSequence1)
    {
        if( Build$VERSION.SDK_INT >= 14 )
            c.setContentText( CharSequence1 );
        e = CharSequence1.toString();
        return this;
    }

    public final p b(CharSequence CharSequence1)
    {
        if( Build$VERSION.SDK_INT >= 14 )
            c.setContentTitle( CharSequence1 );
        d = CharSequence1.toString();
        return this;
    }

    public final p c(CharSequence CharSequence1)
    {
        if( Build$VERSION.SDK_INT >= 16 )
            c.setStyle( (Notification$Style) new Notification$BigTextStyle().bigText( CharSequence1 ) );
        return this;
    }
}
