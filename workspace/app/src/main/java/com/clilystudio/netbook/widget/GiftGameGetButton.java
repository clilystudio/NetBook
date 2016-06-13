package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

public class GiftGameGetButton
        extends GiftGameGameButton {
    private a a;

    public GiftGameGetButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected final void a() {
        this.setText("\u4e0b\u8f7d");
        this.setBackgroundResource(2131427379);
    }

    @Override
    protected final void b() {
        this.setText("\u4e0b\u8f7d\u4e2d");
        this.setBackgroundResource(2131427377);
    }

    @Override
    protected final void c() {
        this.setText("\u5b89\u88c5");
        this.setBackgroundResource(2131427378);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    protected final void d() {
        if (this.g() == null) {
            return;
        }
        e.a((Activity) ((Activity) this.getContext()), (String) "\u5f00\u59cb\u4e0b\u8f7d...");
        this.e();
        try {
            if (this.a == null) return;
            this.a.dismiss();
            return;
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
            return;
        }
    }

    public void setBottomDialog(a a2) {
        this.a = a2;
    }
}
