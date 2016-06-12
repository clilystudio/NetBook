package com.clilystudio.netbook.model;

import android.content.Context;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.AdWebViewActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;

public class MyUrlAdvert extends BaseShelfAd {

    private void launchAdWebView(Context Context1) {
        Context1.startActivity(AdWebViewActivity.a(Context1, getTitle(), getUrl()));
    }

    public boolean isApk() {
        return false;
    }

    public void onAdClick(View View1) {
        try {
            View1.getContext().startActivity((Intent) new InsideLinkIntent(View1.getContext(), getInsideLink()));
        } catch (Exception Exception2) {
            launchAdWebView(View1.getContext());
            return;
        }
    }

    public void recordClick(View View1) {
        com.clilystudio.netbook.hpay100.a.a.b(View1.getContext(), (Advert) this);
    }

    public void recordShow(Context Context1) {
        com.clilystudio.netbook.hpay100.a.a.a(Context1, (Advert) this);
    }
}
