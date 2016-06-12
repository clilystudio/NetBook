
package com.clilystudio.netbook.reader;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class dd extends WebViewClient {

    dd(WebPageFragment WebPageFragment1)
    {
        a = WebPageFragment1;
    }

    private WebPageFragment a;

    public final void doUpdateVisitedHistory(WebView WebView1, String String2, boolean boolean3)
    {
        WebPageFragment.a( a );
    }

    public final void onPageFinished(WebView WebView1, String String2)
    {
        WebPageFragment.c( a );
        WebPageFragment.a( a );
    }

    public final void onPageStarted(WebView WebView1, String String2, Bitmap Bitmap3)
    {
        WebPageFragment.b( a );
    }

    public final boolean shouldOverrideUrlLoading(WebView WebView1, String String2)
    {
        if( !"semob://hidetypesetView".equals( String2 ) )
            WebView1.loadUrl( String2 );
        return true;
    }
}
