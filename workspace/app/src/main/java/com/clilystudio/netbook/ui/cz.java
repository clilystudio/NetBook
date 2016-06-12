
package com.clilystudio.netbook.ui;

import android.webkit.WebView;

final class cz implements Runnable {

    cz(cw cw1, String String2)
    {
        b = cw1;
        a = String2;
    }

    private String a;
    private cw b;

    public final void run()
    {
        cw.c( b ).loadUrl( new StringBuilder( "javascript:ZssqJsApiOnShared('" ).append( a ).append( "')" ).toString() );
    }
}
