
package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnKeyListener;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public abstract class WebPageFragment extends Fragment implements View$OnClickListener {

    private WebView a;
    private View b;
    private View c;
    private View d;

    static void a(WebPageFragment WebPageFragment1)
    {
        boolean boolean2 = true;
        View View3 = WebPageFragment1.c;
        boolean boolean4;
        View View5;

        if( WebPageFragment1.a != null && WebPageFragment1.a.canGoBack() )
            boolean4 = boolean2;
        else
            boolean4 = false;
        View3.setEnabled( boolean4 );
        View5 = WebPageFragment1.d;
        if( WebPageFragment1.a == null || !WebPageFragment1.a.canGoForward() )
            boolean2 = false;
        View5.setEnabled( boolean2 );
    }

    static void b(WebPageFragment WebPageFragment1)
    {
        WebPageFragment1.b.setVisibility( 0 );
    }

    static void c(WebPageFragment WebPageFragment1)
    {
        WebPageFragment1.b.setVisibility( 8 );
    }

    static WebView d(WebPageFragment WebPageFragment1)
    {
        return WebPageFragment1.a;
    }

    protected abstract String a();

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

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        return LayoutInflater1.inflate( 2130903420, ViewGroup2, false );
    }

    public void onViewCreated(View View1, Bundle Bundle2)
    {
        View View3;
        WebSettings WebSettings4;

        super.onViewCreated( View1, Bundle2 );
        b = View1.findViewById( 2131493085 );
        a = (WebView) View1.findViewById( 2131494048 );
        c = View1.findViewById( 2131494050 );
        d = View1.findViewById( 2131494051 );
        View3 = View1.findViewById( 2131494052 );
        c.setOnClickListener( this );
        d.setOnClickListener( this );
        View3.setOnClickListener( this );
        a.setVerticalScrollBarEnabled( false );
        WebSettings4 = a.getSettings();
        WebSettings4.setJavaScriptEnabled( true );
        WebSettings4.setDomStorageEnabled( true );
        WebSettings4.setAppCacheEnabled( true );
        a.setWebViewClient( (WebViewClient) new dd( this ) );
        a.setOnKeyListener( (View$OnKeyListener) new de( this ) );
        a.loadUrl( a() );
    }
}
