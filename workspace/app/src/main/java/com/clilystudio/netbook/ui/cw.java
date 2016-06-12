
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.webkit.WebView;
import cn.sharesdk.framework.PlatformActionListener;
import com.clilystudio.netbook.util.T;

public final class cw {

    public cw(Activity Activity1, WebView WebView2)
    {
        a = Activity1;
        b = WebView2;
    }

    private Activity a;
    private WebView b;
    private PlatformActionListener c = new cx( this );

    static Activity a(cw cw1)
    {
        return cw1.a;
    }

    static void a(cw cw1, String String2)
    {
        cw1.a.runOnUiThread( (Runnable) new cz( cw1, String2 ) );
    }

    static PlatformActionListener b(cw cw1)
    {
        return cw1.c;
    }

    static WebView c(cw cw1)
    {
        return cw1.b;
    }

    public final void shareAll(String String1, String String2, String String3)
    {
        shareAll( "\u8FFD\u4E66\u795E\u5668", String1, String2, String3 );
    }

    public final void shareAll(String String1, String String2, String String3, String String4)
    {
        new com.clilystudio.netbook.view.c( a, (cd) new cy( this, String1, String2, String3, String4 ) ).a().show();
    }

    public final void shareQZone(String String1, String String2, String String3)
    {
        shareQZone( "\u8FFD\u4E66\u795E\u5668", String1, String2, String3 );
    }

    public final void shareQZone(String String1, String String2, String String3, String String4)
    {
        T.a( (Context) a, String1, String2, String3, String4, 4, c );
    }

    public final void shareWeibo(String String1, String String2, String String3)
    {
        shareWeibo( "\u8FFD\u4E66\u795E\u5668", String1, String2, String3 );
    }

    public final void shareWeibo(String String1, String String2, String String3, String String4)
    {
        T.a( (Context) a, String1, String2, String3, String4, 0, c );
    }

    public final void shareWeixin(String String1, String String2, String String3)
    {
        shareWeixin( "\u8FFD\u4E66\u795E\u5668", String1, String2, String3 );
    }

    public final void shareWeixin(String String1, String String2, String String3, String String4)
    {
        T.a( (Context) a, String1, String2, String3, String4, 2, c );
    }
}
