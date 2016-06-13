package com.clilystudio.netbook.model;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.ui.AdWebViewActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;

public class MyUrlAdvert
        extends BaseShelfAd {
    private void launchAdWebView(Context context) {
        context.startActivity(AdWebViewActivity.a(context, this.getTitle(), this.getUrl()));
    }

    @Override
    public boolean isApk() {
        return false;
    }

    @Override
    public void onAdClick(View view) {
        try {
            view.getContext().startActivity(new InsideLinkIntent(view.getContext(), this.getInsideLink()));
            return;
        } catch (Exception var2_2) {
            this.launchAdWebView(view.getContext());
            return;
        }
    }

    @Override
    public void recordClick(View view) {
        a.b(view.getContext(), this);
    }

    @Override
    public void recordShow(Context context) {
        a.a(context, this);
    }
}
