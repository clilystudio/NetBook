package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.Button;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.e;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public abstract class AbsDownloadButton extends Button {

    public AbsDownloadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(final AbsDownloadButton absDownloadButton) {
        String string = absDownloadButton.a.getName();
        MiStatInterface.recordCountEvent("mystery_app_download", string);
        if (com.clilystudio.netbook.hpay100.a.a.r(absDownloadButton.getContext()) == 1) {
            new k(absDownloadButton.getContext()).a("确认下载").b("即将开始下载《" + string + "》，是否下载？").a(R.string.ok, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    e.a((Activity) absDownloadButton.getContext(), "开始下载...");
                    absDownloadButton.b();
                }
            }).b(R.string.cancel, null).b().show();
            return;
        }
        k k2 = new k(absDownloadButton.getContext()).a("流量提醒");
        Resources resources = absDownloadButton.getResources();
        Object[] arrobject = new Object[]{absDownloadButton.a.getFormatedSize()};
        k2.b(resources.getString(R.string.alert_download_in_3g, arrobject)).a(R.string.ok,new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialog, int which) {
                absDownloadButton.b();
            }
        }).b(R.string.cancel, null).b().show();
    }

    private void e() {
        this.setText("\u5b89\u88c5");
        this.setBackgroundResource(R.drawable.green_round_button);
    }

    public final void a(int n) {
    }

    protected abstract void b();

    protected abstract void c();

    protected abstract void d();
}
