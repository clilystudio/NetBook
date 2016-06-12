package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.umeng.a.b;

public class GdtShelfAdContainer$GdtAdvert extends BaseShelfAd {
// Error: Internal #201: 
// The following method may not be correct.

    public void gdtRecord(View View1) {
    }

    public String getDownloadTitle(Context Context1) {
        String String2 = (String) k.a(GdtShelfAdContainer.a(), "getTitle", null, response, new Object[0]);

        if (com.clilystudio.netbook.hpay100.a.a.s(Context1))
            return String.format(Context1.getString(2131034507), new Object[]{String2});
        else
            return String.format(Context1.getString(2131034506), new Object[]{String2});
    }

    public String getFullImg() {
        return getImg();
    }

    public boolean isApk() {
        return ((Boolean) k.a(GdtShelfAdContainer.a(), "isAPP", null, response, new Object[0])).booleanValue();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onAdClick(View View1) {
    }

    public void recordClick(View View1) {
        b.a(View1.getContext(), "ad_gdt_shelf_confirm", getPosition());
    }

    public void recordDownload(Context Context1) {
        b.a(Context1, "ad_gdt_shelf_download", getPosition());
    }

    public void recordShow(Context Context1) {
        b.a(Context1, "ad_gdt_shelf_show", getPosition());
    }
}
