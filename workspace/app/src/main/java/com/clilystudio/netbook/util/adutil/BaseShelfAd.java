package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.Advert;

public class BaseShelfAd extends Advert {
    public int showCount;
    protected Object response;

    public String getDownloadTitle(Context paramContext) {
        return null;
    }

    public boolean isApk() {
        return false;
    }

    public void onAdClick(View paramView) {
    }

    public void processClick(View paramView) {
        Context localContext = paramView.getContext();
        if (isApk()) {
            h localh = new h(localContext);
            localh.e = getDownloadTitle(localContext);
            localh.a(true).a("确认", new j(this, paramView, localContext)).b("取消", new i(this)).b();
        }
        while (true) {
            recordClick(paramView);
            return;
            onAdClick(paramView);
        }
    }

    public void recordClick(View paramView) {
    }

    public void recordDownload(Context paramContext) {
    }

    public void recordShow(Context paramContext) {
    }

    public void setResponse(Object paramObject) {
        this.response = paramObject;
    }
}

