package com.clilystudio.netbook.model;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;
import com.clilystudio.netbook.util.y;

public class MyApkAdvert extends BaseShelfAd {

    public String getDownloadTitle(Context Context1) {
        String String2 = com.clilystudio.netbook.hpay100.a.a.c(getApkSize());

        if (com.clilystudio.netbook.hpay100.a.a.r((Context) MyApplication.a()) == 1) {
            String String5 = MyApplication.a().getString(2131034503);
            Object[] Object_1darray6 = new Object[2];

            Object_1darray6[0] = getTitle();
            Object_1darray6[1] = String2;
            return String.format(String5, Object_1darray6);
        } else {
            String String3 = MyApplication.a().getString(2131034502);
            Object[] Object_1darray4 = new Object[2];

            Object_1darray4[0] = getTitle();
            Object_1darray4[1] = String2;
            return String.format(String3, Object_1darray4);
        }
    }

    public boolean isApk() {
        return true;
    }

    public void onAdClick(View View1) {
        AppItem AppItem2 = new AppItem((Advert) this);

        new y(View1.getContext(), AppItem2).a();
    }

    public void recordClick(View View1) {
        com.clilystudio.netbook.hpay100.a.a.b(View1.getContext(), (Advert) this);
    }

    public void recordDownload(Context Context1) {
        if (this != null)
            com.clilystudio.netbook.umeng.a.b.a(Context1, new StringBuilder("zssq_ad_download_").append(((Advert) this).getPosition()).toString(), ((Advert) this).getTitle());
    }

    public void recordShow(Context Context1) {
        com.clilystudio.netbook.hpay100.a.a.a(Context1, (Advert) this);
    }
}
