package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;

import com.clilystudio.netbook.model.Advert;

public class BaseShelfAd
        extends Advert {
    public int showCount;
    protected Object response;

    public String getDownloadTitle(Context context) {
        return null;
    }

    @Override
    public boolean isApk() {
        return false;
    }

    public void onAdClick(View view) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void processClick(View view) {
        Context context = view.getContext();
        if (this.isApk()) {
            h h2 = new h(context);
            h2.e = this.getDownloadTitle(context);
            h2.a(true).a("\u786e\u8ba4", (DialogInterface.OnClickListener) new j(this, view, context)).b("\u53d6\u6d88", (DialogInterface.OnClickListener) new i(this)).b();
        } else {
            this.onAdClick(view);
        }
        this.recordClick(view);
    }

    @Override
    public void recordClick(View view) {
    }

    public void recordDownload(Context context) {
    }

    @Override
    public void recordShow(Context context) {
    }

    public void setResponse(Object object) {
        this.response = object;
    }
}
