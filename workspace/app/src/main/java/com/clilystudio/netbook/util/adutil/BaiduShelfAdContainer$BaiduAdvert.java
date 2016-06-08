package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;

public class BaiduShelfAdContainer$BaiduAdvert extends BaseShelfAd {
    public void baiduRecord(View paramView) {
        k.a(BaiduShelfAdContainer.a(), "recordImpression", View.class, this.response, new Object[]{paramView});
    }

    public String getDownloadTitle(Context paramContext) {
        String str = (String) k.a(BaiduShelfAdContainer.a(), "getTitle", null, this.response, new Object[0]);
        if (a.s(paramContext))
            return String.format(paramContext.getString(2131034507), new Object[]{str});
        return String.format(paramContext.getString(2131034506), new Object[]{str});
    }

    public String getFullImg() {
        return getImg();
    }

    public boolean isApk() {
        return ((Boolean) k.a(BaiduShelfAdContainer.a(), "isDownloadApp", null, this.response, new Object[0])).booleanValue();
    }

    public void onAdClick(View paramView) {
        k.a(BaiduShelfAdContainer.a(), "handleClick", View.class, this.response, new Object[]{paramView});
    }

    public void recordClick(View paramView) {
        b.a(paramView.getContext(), "ad_baidu_shelf_confirm", getPosition());
    }

    public void recordDownload(Context paramContext) {
        b.a(paramContext, "ad_baidu_shelf_download", getPosition());
    }

    public void recordShow(Context paramContext) {
        b.a(paramContext, "ad_baidu_shelf_show", getPosition());
    }
}

