
package com.clilystudio.netbook.ui;

import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class d extends WebChromeClient {

    d(AdWebViewActivity AdWebViewActivity1)
    {
        a = AdWebViewActivity1;
    }

    private AdWebViewActivity a;

    public final void onReceivedTitle(WebView WebView1, String String2)
    {
        super.onReceivedTitle( WebView1, String2 );
        if( !android.text.TextUtils.isEmpty( (CharSequence) String2 ) )
        {
            AdWebViewActivity.c( a, String2 );
            a.d( String2 );
        }
    }
}
