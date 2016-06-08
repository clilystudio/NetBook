package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

public class GiftGameGetButton extends GiftGameGameButton {
    private a a;

    public GiftGameGetButton(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected final void a() {
        setText("下载");
        setBackgroundResource(2131427379);
    }

    protected final void b() {
        setText("下载中");
        setBackgroundResource(2131427377);
    }

    protected final void c() {
        setText("安装");
        setBackgroundResource(2131427378);
    }

    protected final void d() {
        if (g() == null) ;
        while (true) {
            return;
            e.a((Activity) getContext(), "开始下载...");
            e();
            try {
                if (this.a == null)
                    continue;
                this.a.dismiss();
                return;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        }
    }

    public void setBottomDialog(a parama) {
        this.a = parama;
    }
}

