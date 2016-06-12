
package com.clilystudio.netbook.hpay100.web;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build$VERSION;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class i extends WebViewClient {

    i(HPayWebView HPayWebView1)
    {
        a = HPayWebView1;
    }

    private HPayWebView a;

    public final void onFormResubmission(WebView WebView1, Message Message2, Message Message3)
    {
        Message3.sendToTarget();
    }

    public final void onPageFinished(WebView WebView1, String String2)
    {
        Object Object3 = WebView1.getTitle();
        HPayWebView HPayWebView4;

        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "onPageFinished:" ).append( (String) Object3 ).toString() );
        if( !android.text.TextUtils.isEmpty( (CharSequence) Object3 ) && ((String) Object3).startsWith( "wap.dm.10086.cn" ) )
            Object3 = "\u5145\u503C";
        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "onPageFinished url:" ).append( String2 ).toString() );
        HPayWebView4 = a;
        HPayWebView.a( HPayWebView4, -1 + HPayWebView.b( HPayWebView4 ) );
        if( HPayWebView.a( a ) != null )
            HPayWebView.a( a ).a( 4, Object3 );
        if( !com.clilystudio.netbook.hpay100.web.HPayWebView.c( a ) )
            HPayWebView.a( a ).a( 6, String2 );
        if( HPayWebView.c( a ) && HPayWebView.b( a ) == 0 )
        {
            HPayWebView.a( a ).a( 0, Integer.valueOf( -1 ) );
            HPayWebView.a( a, false );
        }
        HPayWebView.a( a ).a( 3, String2 );
        super.onPageFinished( WebView1, String2 );
        try
        {
            HPayWebView.a( a, String2 );
        }
        catch( Exception Exception5 )
        {
            Exception5.printStackTrace();
            return;
        }
    }

    public final void onPageStarted(WebView WebView1, String String2, Bitmap Bitmap3)
    {
        HPayWebView HPayWebView4;

        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "onPageStarted:" ).append( String2 ).toString() );
        if( HPayWebView.b( a ) < 0 )
            HPayWebView.a( a, 0 );
        HPayWebView4 = a;
        HPayWebView.a( HPayWebView4, 1 + HPayWebView.b( HPayWebView4 ) );
        if( HPayWebView.a( a ) != null )
            HPayWebView.a( a ).a( 1, String2 );
        super.onPageStarted( WebView1, String2, Bitmap3 );
    }

    public final void onReceivedError(WebView WebView1, int int2, String String3, String String4)
    {
        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "onReceivedError:" );
        HPayWebView.a( a, true );
        WebView1.stopLoading();
        WebView1.clearView();
        if( Integer.valueOf( Build$VERSION.SDK ).intValue() < 14 && HPayWebView.b( a ) == 0 )
            HPayWebView.a( a, 2 );
        if( Integer.valueOf( Build$VERSION.SDK ).intValue() < 14 && HPayWebView.b( a ) > 0 )
        {
            HPayWebView HPayWebView5 = a;

            HPayWebView.a( HPayWebView5, -1 + HPayWebView.b( HPayWebView5 ) );
        }
    }

    public final void onReceivedSslError(WebView WebView1, SslErrorHandler SslErrorHandler2, SslError SslError3)
    {
        SslErrorHandler2.proceed();
        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "onReceivedSslError:" );
    }

    public final boolean shouldOverrideUrlLoading(WebView WebView1, String String2)
    {
        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "shouldOverrideUrlLoading:" ).append( String2 ).toString() );
        WebView1.loadUrl( String2 );
        if( HPayWebView.a( a ) != null )
            HPayWebView.a( a ).a( 8, String2 );
        return true;
    }
}
