package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.hpay100.a.a;

public class BaiduShelfAdContainer$BaiduAdvert extends BaseShelfAd {
    public void baiduRecord(View view) {
        k.a(BaiduShelfAdContainer.a(), "recordImpression", View.class, this.response, view);
    }

    @Override
    public String getDownloadTitle(Context context) {
        String string = (String) k.a(BaiduShelfAdContainer.a(), "getTitle", null, this.response, new Object[0]);
        if (a.s(context)) {
            return String.format(context.getString(2131034507), string);
        }
        return String.format(context.getString(2131034506), string);
    }

    @Override
    public String getFullImg() {
        return this.getImg();
    }

    @Override
    public boolean isApk() {
        return (Boolean) k.a(BaiduShelfAdContainer.a(), "isDownloadApp", null, this.response, new Object[0]);
    }

    @Override
    public void onAdClick(View view) {
        k.a(BaiduShelfAdContainer.a(), "handleClick", View.class, this.response, view);
    }

    @Override
    public void recordClick(View view) {
        b.a(view.getContext(), "ad_baidu_shelf_confirm", this.getPosition());
    }

    @Override
    public void recordDownload(Context context) {
        b.a(context, "ad_baidu_shelf_download", this.getPosition());
    }

    @Override
    public void recordShow(Context context) {
        b.a(context, "ad_baidu_shelf_show", this.getPosition());
    }
}
