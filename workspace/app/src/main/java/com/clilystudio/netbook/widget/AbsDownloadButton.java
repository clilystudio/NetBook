package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.util.e;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public abstract class AbsDownloadButton extends Button {
    private AppItem a;

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

    public final AppItem a() {
        return this.a;
    }

    public final void a(int n) {
        if (this.a == null) {
            return;
        }
        switch (n) {
            default: {
                this.setOnClickListener(new OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        AbsDownloadButton.a(AbsDownloadButton.this);
                    }
                });
                this.setText("\u4e0b\u8f7d");
                this.setBackgroundResource(R.drawable.red_round_button);
                return;
            }
            case 32: {
                this.setText("\u5df2\u5b89\u88c5");
                this.setBackgroundResource(R.drawable.gray_round_button);
                this.setOnClickListener(null);
                return;
            }
            case 1:
            case 2: {
                this.setText("\u4e0b\u8f7d\u4e2d");
                this.setBackgroundResource(R.drawable.gray_round_button);
                this.setOnClickListener(null);
                return;
            }
            case 8: {
                this.e();
                this.setOnClickListener(new OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        AbsDownloadButton.this.d();
                    }
                });
                return;
            }
            case 4: {
                this.setBackgroundResource(R.color.transparent);
                this.setTextColor(Color.parseColor("#AAAAAA"));
                this.setText("\u5df2\u6682\u505c");
                this.setOnClickListener(new OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        AbsDownloadButton.this.c();
                    }
                });
                return;
            }
            case 64:
        }
        this.e();
        this.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                AbsDownloadButton.this.d();
            }
        });
    }

    protected abstract void b();

    protected abstract void c();

    protected abstract void d();

    public void setAppItem(AppItem appItem) {
        this.a = appItem;
    }
}
