package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.Button;

import com.clilystudio.netbook.model.AppItem;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public abstract class AbsDownloadButton
        extends Button {
    private AppItem a;

    public AbsDownloadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(AbsDownloadButton absDownloadButton) {
        String string = absDownloadButton.a.getName();
        MiStatInterface.recordCountEvent("mystery_app_download", string);
        if (com.clilystudio.netbook.hpay100.a.a.r(absDownloadButton.getContext()) == 1) {
            new k(absDownloadButton.getContext()).a("\u786e\u8ba4\u4e0b\u8f7d").b("\u5373\u5c06\u5f00\u59cb\u4e0b\u8f7d\u300a" + string + "\u300b\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f").a(2131034424, (DialogInterface.OnClickListener) ((Object) new a(absDownloadButton))).b(2131034129, null).b().show();
            return;
        }
        k k2 = new k(absDownloadButton.getContext()).a("\u6d41\u91cf\u63d0\u9192");
        Resources resources = absDownloadButton.getResources();
        Object[] arrobject = new Object[]{absDownloadButton.a.getFormatedSize()};
        k2.b(resources.getString(2131034304, arrobject)).a(2131034424, (DialogInterface.OnClickListener) ((Object) new b(absDownloadButton))).b(2131034129, null).b().show();
    }

    private void e() {
        this.setText("\u5b89\u88c5");
        this.setBackgroundResource(2130837819);
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
                this.setOnClickListener(new e(this, 0));
                this.setText("\u4e0b\u8f7d");
                this.setBackgroundResource(2130838100);
                return;
            }
            case 32: {
                this.setText("\u5df2\u5b89\u88c5");
                this.setBackgroundResource(2130837817);
                this.setOnClickListener(null);
                return;
            }
            case 1:
            case 2: {
                this.setText("\u4e0b\u8f7d\u4e2d");
                this.setBackgroundResource(2130837817);
                this.setOnClickListener(null);
                return;
            }
            case 8: {
                this.e();
                this.setOnClickListener(new c(this, 0));
                return;
            }
            case 4: {
                this.setBackgroundResource(2131427542);
                this.setTextColor(Color.parseColor("#AAAAAA"));
                this.setText("\u5df2\u6682\u505c");
                this.setOnClickListener(new d(this, 0));
                return;
            }
            case 64:
        }
        this.e();
        this.setOnClickListener(new c(this, 0));
    }

    protected abstract void b();

    protected abstract void c();

    protected abstract void d();

    public void setAppItem(AppItem appItem) {
        this.a = appItem;
    }
}
