package com.clilystudio.netbook.model;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;
import com.clilystudio.netbook.util.y;
import com.umeng.a.b;

public class MyApkAdvert extends BaseShelfAd {
    @Override
    public String getDownloadTitle(Context context) {
        String string = a.c(this.getApkSize());
        if (a.r(MyApplication.a()) == 1) {
            String string2 = MyApplication.a().getString(2131034503);
            Object[] arrobject = new Object[]{this.getTitle(), string};
            return String.format(string2, arrobject);
        }
        String string3 = MyApplication.a().getString(2131034502);
        Object[] arrobject = new Object[]{this.getTitle(), string};
        return String.format(string3, arrobject);
    }

    @Override
    public boolean isApk() {
        return true;
    }

    @Override
    public void onAdClick(View view) {
        AppItem appItem = new AppItem(this);
        new y(view.getContext(), appItem).a();
    }

    @Override
    public void recordClick(View view) {
        a.b(view.getContext(), this);
    }

    @Override
    public void recordDownload(Context context) {
        if (this != null) {
            b.a(context, "zssq_ad_download_" + this.getPosition(), this.getTitle());
        }
    }

    @Override
    public void recordShow(Context context) {
        a.a(context, this);
    }
}
