package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;

public abstract class WebPageFragment extends Fragment implements View.OnClickListener {
    private WebView a;
    private View b;
    private View c;
    private View d;

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(WebPageFragment webPageFragment) {
        boolean bl = true;
        View view = webPageFragment.c;
        boolean bl2 = webPageFragment.a != null && webPageFragment.a.canGoBack() ? bl : false;
        view.setEnabled(bl2);
        View view2 = webPageFragment.d;
        if (webPageFragment.a == null || !webPageFragment.a.canGoForward()) {
            bl = false;
        }
        view2.setEnabled(bl);
    }

    static /* synthetic */ void b(WebPageFragment webPageFragment) {
        webPageFragment.b.setVisibility(View.VISIBLE);
    }

    static /* synthetic */ void c(WebPageFragment webPageFragment) {
        webPageFragment.b.setVisibility(View.GONE);
    }

    static /* synthetic */ WebView d(WebPageFragment webPageFragment) {
        return webPageFragment.a;
    }

    protected abstract String a();

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131494050: {
                this.a.goBack();
                return;
            }
            case 2131494051: {
                this.a.goForward();
                return;
            }
            case 2131494052:
        }
        this.a.reload();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2130903420, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b = view.findViewById(2131493085);
        this.a = (WebView) view.findViewById(2131494048);
        this.c = view.findViewById(2131494050);
        this.d = view.findViewById(2131494051);
        View view2 = view.findViewById(2131494052);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        view2.setOnClickListener(this);
        this.a.setVerticalScrollBarEnabled(false);
        WebSettings webSettings = this.a.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setAppCacheEnabled(true);
        this.a.setWebViewClient(new dd(this));
        this.a.setOnKeyListener(new de(this));
        this.a.loadUrl(this.a());
    }
}
