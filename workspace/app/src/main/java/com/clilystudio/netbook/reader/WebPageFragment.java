package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;

public abstract class WebPageFragment extends Fragment
        implements View.OnClickListener {
    private WebView a;
    private View b;
    private View c;
    private View d;

    protected abstract String a();

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case 2131494050:
                this.a.goBack();
                return;
            case 2131494051:
                this.a.goForward();
                return;
            case 2131494052:
        }
        this.a.reload();
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        return paramLayoutInflater.inflate(2130903420, paramViewGroup, false);
    }

    public void onViewCreated(View paramView, Bundle paramBundle) {
        super.onViewCreated(paramView, paramBundle);
        this.b = paramView.findViewById(2131493085);
        this.a = ((WebView) paramView.findViewById(2131494048));
        this.c = paramView.findViewById(2131494050);
        this.d = paramView.findViewById(2131494051);
        View localView = paramView.findViewById(2131494052);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        localView.setOnClickListener(this);
        this.a.setVerticalScrollBarEnabled(false);
        WebSettings localWebSettings = this.a.getSettings();
        localWebSettings.setJavaScriptEnabled(true);
        localWebSettings.setDomStorageEnabled(true);
        localWebSettings.setAppCacheEnabled(true);
        this.a.setWebViewClient(new dd(this));
        this.a.setOnKeyListener(new de(this));
        this.a.loadUrl(a());
    }
}

