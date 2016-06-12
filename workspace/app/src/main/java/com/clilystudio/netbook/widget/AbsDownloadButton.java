package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View$OnClickListener;
import android.widget.Button;

import com.clilystudio.netbook.model.AppItem;

public abstract class AbsDownloadButton extends Button {

    private AppItem a;

    public AbsDownloadButton(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static void a(AbsDownloadButton AbsDownloadButton1) {
        String String2 = AbsDownloadButton1.a.getName();

        com.clilystudio.netbook.umeng.a.b.a(AbsDownloadButton1.getContext(), "mystery_app_download", String2);
        if (com.clilystudio.netbook.hpay100.a.a.r(AbsDownloadButton1.getContext()) == 1)
            new k(AbsDownloadButton1.getContext()).a((CharSequence) "\u786E\u8BA4\u4E0B\u8F7D").b((CharSequence) new StringBuilder("\u5373\u5C06\u5F00\u59CB\u4E0B\u8F7D\u300A").append(String2).append("\u300B\uFF0C\u662F\u5426\u4E0B\u8F7D\uFF1F").toString()).a(2131034424, (DialogInterface$OnClickListener) new a(AbsDownloadButton1)).b(2131034129, null).b().show();
        else {
            k k3 = new k(AbsDownloadButton1.getContext()).a((CharSequence) "\u6D41\u91CF\u63D0\u9192");
            Resources Resources4 = AbsDownloadButton1.getResources();
            Object[] Object_1darray5 = new Object[1];

            Object_1darray5[0] = AbsDownloadButton1.a.getFormatedSize();
            k3.b((CharSequence) Resources4.getString(2131034304, Object_1darray5)).a(2131034424, (DialogInterface$OnClickListener) new b(AbsDownloadButton1)).b(2131034129, null).b().show();
        }
    }

    private void e() {
        setText((CharSequence) "\u5B89\u88C5");
        setBackgroundResource(2130837819);
    }

    public final AppItem a() {
        return a;
    }

    public final void a(int int1) {
        if (a == null)
            return;
        else {
            switch (int1) {
                default:
                    setOnClickListener((View$OnClickListener) new e(this, (byte) 0));
                    setText((CharSequence) "\u4E0B\u8F7D");
                    setBackgroundResource(2130838100);
                    return;
                case 32:
                    setText((CharSequence) "\u5DF2\u5B89\u88C5");
                    setBackgroundResource(2130837817);
                    setOnClickListener(null);
                    return;
                case 1:
                case 2:
                    setText((CharSequence) "\u4E0B\u8F7D\u4E2D");
                    setBackgroundResource(2130837817);
                    setOnClickListener(null);
                    return;
                case 8:
                    e();
                    setOnClickListener((View$OnClickListener) new c(this, (byte) 0));
                    return;
                case 4:
                    setBackgroundResource(2131427542);
                    setTextColor(Color.parseColor("#AAAAAA"));
                    setText((CharSequence) "\u5DF2\u6682\u505C");
                    setOnClickListener((View$OnClickListener) new d(this, (byte) 0));
                    return;
                case 64:
                    e();
                    setOnClickListener((View$OnClickListener) new c(this, (byte) 0));
                    return;
            }
        }
    }

    protected abstract void b();

    protected abstract void c();

    protected abstract void d();

    public void setAppItem(AppItem AppItem1) {
        a = AppItem1;
    }
}
