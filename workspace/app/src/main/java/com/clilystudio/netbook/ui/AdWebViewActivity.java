
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.DownloadManager$Query;
import android.app.DownloadManager$Request;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnKeyListener;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.ui.home.HomeActivity;
import java.util.List;

public class AdWebViewActivity extends BaseActivity implements View$OnClickListener {

    private WebView a;
    private View b;
    private View c;
    private View e;
    private String f;
    private DownloadManager g = null;

    static DownloadManager a(AdWebViewActivity AdWebViewActivity1)
    {
        return AdWebViewActivity1.g;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3)
    {
    }

    static void a(AdWebViewActivity AdWebViewActivity1, String String2)
    {
        DownloadManager$Query Query3 = new DownloadManager$Query();
        Cursor Cursor4 = AdWebViewActivity1.g.query( Query3 );
        int int5;

label_38:
        {
            if( Cursor4 != null )
            {
                while( Cursor4.moveToNext() )
                {
                    String String9 = Cursor4.getString( Cursor4.getColumnIndex( "uri" ) );
                    int int10 = Cursor4.getInt( Cursor4.getColumnIndex( "status" ) );

                    if( !String9.equals( String2 ) || int10 != 1 && int10 != 2 )
                        continue;
                    int5 = 1;
                    break label_38;
                }
            }
            int5 = 0;
        }
        if( int5 == 0 )
        {
            if( !AdWebViewActivity1.isFinishing() )
            {
                String String6;
                uk.me.lewisdeane.ldialogs.h h7;

                if( com.clilystudio.netbook.hpay100.a.a.r( (Context) AdWebViewActivity1 ) == 1 )
                    String6 = "\u54C7\uFF0C\u4F60\u6B63\u5904\u5728 Wi-Fi \u7F51\u7EDC\u4E0B\uFF0C\u4E0B\u8F7D\u65E0\u9700\u6D41\u91CF :)";
                else
                    String6 = "\u5F53\u524D\u7F51\u7EDC\u4E0B\u8F7D\u9700\u6D88\u8017\u6D41\u91CF\uFF0C\u8BF7\u5C0F\u5FC3\u786E\u8BA4";
                h7 = new uk.me.lewisdeane.ldialogs.h( (Context) AdWebViewActivity1 ).a( 2131034371 );
                h7.e = String6;
                h7.a( 2131034424, (DialogInterface$OnClickListener) new e( AdWebViewActivity1, String2 ) ).b( 2131034129, null ).b();
            }
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) AdWebViewActivity1, "\u5DF2\u7ECF\u5728\u4E0B\u8F7D\u961F\u5217\u4E2D" );
    }

    static void a(AdWebViewActivity AdWebViewActivity1, String String2, String String3)
    {
        DownloadManager$Request Request4 = new DownloadManager$Request( Uri.parse( String2 ) );

        Request4.setTitle( (CharSequence) AdWebViewActivity1.f );
        if( com.clilystudio.netbook.hpay100.a.a.g() )
        {
            Request4.allowScanningByMediaScanner();
            Request4.setNotificationVisibility( 1 );
        }
        Request4.setDestinationInExternalPublicDir( Environment.DIRECTORY_DOWNLOADS, String3 );
        try
        {
        }
        catch( Exception Exception7 )
        {
            Exception7.printStackTrace();
        }
        MyApplication.a().h().add( String2 );
    }

    static void b(AdWebViewActivity AdWebViewActivity1)
    {
        boolean boolean2 = true;
        View View3 = AdWebViewActivity1.c;
        boolean boolean4;
        View View5;

        if( AdWebViewActivity1.a != null && AdWebViewActivity1.a.canGoBack() )
            boolean4 = boolean2;
        else
            boolean4 = false;
        View3.setEnabled( boolean4 );
        View5 = AdWebViewActivity1.e;
        if( AdWebViewActivity1.a == null || !AdWebViewActivity1.a.canGoForward() )
            boolean2 = false;
        View5.setEnabled( boolean2 );
    }

    static void b(AdWebViewActivity AdWebViewActivity1, String String2)
    {
        am.a( (Activity) AdWebViewActivity1, String2, null );
    }

    static String c(AdWebViewActivity AdWebViewActivity1, String String2)
    {
        AdWebViewActivity1.f = String2;
        return String2;
    }

    static void c(AdWebViewActivity AdWebViewActivity1)
    {
        AdWebViewActivity1.b.setVisibility( 0 );
    }

    static void d(AdWebViewActivity AdWebViewActivity1)
    {
        AdWebViewActivity1.b.setVisibility( 8 );
    }

    static WebView e(AdWebViewActivity AdWebViewActivity1)
    {
        return AdWebViewActivity1.a;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onBackPressed()
    {
    }

    public void onClick(View View1)
    {
        switch( View1.getId() )
        {
            default:
                return;
            case 1186:
                a.goBack();
                return;
            case 1187:
                a.goForward();
                return;
            case 1188:
                a.reload();
                return;
        }
    }

    protected void onCreate(Bundle Bundle1)
    {
        View View2;
        WebSettings WebSettings3;
        String String4;

        super.onCreate( Bundle1 );
        setContentView( 2130903420 );
        f = getIntent().getStringExtra( "extra_title" );
        c( f );
        g = (DownloadManager) getSystemService( "download" );
        a = (WebView) findViewById( 2131494048 );
        b = findViewById( 2131493085 );
        c = findViewById( 2131494050 );
        e = findViewById( 2131494051 );
        View2 = findViewById( 2131494052 );
        a.getSettings().setUseWideViewPort( true );
        a.getSettings().setLoadWithOverviewMode( true );
        a.setVerticalScrollBarEnabled( false );
        WebSettings3 = a.getSettings();
        WebSettings3.setJavaScriptEnabled( true );
        WebSettings3.setDomStorageEnabled( true );
        WebSettings3.setAppCacheEnabled( true );
        a.setDownloadListener( (DownloadListener) new a( this ) );
        a.setWebViewClient( (WebViewClient) new b( this ) );
        a.setOnKeyListener( (View$OnKeyListener) new c( this ) );
        a.setWebChromeClient( (WebChromeClient) new d( this ) );
        a.addJavascriptInterface( new cw( (Activity) this, a ), "ZssqAndroidApi" );
        c.setOnClickListener( this );
        e.setOnClickListener( this );
        View2.setOnClickListener( this );
        String4 = getIntent().getStringExtra( "extra_url" );
        a.loadUrl( String4 );
    }
}
