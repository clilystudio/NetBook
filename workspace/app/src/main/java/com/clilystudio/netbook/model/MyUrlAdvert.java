package com.clilystudio.netbook.model;

import android.content.Context;
import android.view.View;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.ui.AdWebViewActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;

public class MyUrlAdvert extends BaseShelfAd {
    private void launchAdWebView(Context paramContext) {
        paramContext.startActivity(AdWebViewActivity.a(paramContext, getTitle(), getUrl()));
    }

    public boolean isApk() {
        return false;
    }

    public void onAdClick(View paramView) {
        try {
            paramView.getContext().startActivity(new InsideLinkIntent(paramView.getContext(), getInsideLink()));
            return;
        } catch (Exception localException) {
            launchAdWebView(paramView.getContext());
        }
    }

    public void recordClick(View paramView) {
        a.b(paramView.getContext(), this);
    }

    public void recordShow(Context paramContext) {
        a.a(paramContext, this);
    }
}

