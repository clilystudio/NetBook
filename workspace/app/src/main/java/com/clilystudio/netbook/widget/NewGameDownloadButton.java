package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

import com.clilystudio.netbook.R$styleable;

public class NewGameDownloadButton
        extends GameDownloadButton {
    private final String a;

    public NewGameDownloadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.NewGameDownloadButton);
        this.a = typedArray.getString(0);
        typedArray.recycle();
    }

    @Override
    protected final void a() {
        this.c();
    }

    @Override
    protected final void b() {
        this.setText("\u4e0b\u8f7d\u4e2d");
        this.setTextColor(-9079435);
        this.setBackgroundResource(2130837729);
    }

    @Override
    protected void c() {
        this.setText("\u5b89\u88c5");
        this.setTextColor(-1);
        this.setBackgroundResource(2130837728);
    }

    @Override
    protected final void d() {
        this.setText("\u6253\u5f00");
        this.setTextColor(-14540254);
        this.setBackgroundResource(2130837731);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final void e() {
        super.e();
        if (this.h() == null) return;
        if ("promotion".equals(this.a)) {
            b.a(this.getContext(), "game_center_main_install_promotion", this.h().getName());
            return;
        }
        b.a(this.getContext(), "game_center_main_install", this.h().getName());
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setPadding(0, 0, 0, 0);
    }
}
