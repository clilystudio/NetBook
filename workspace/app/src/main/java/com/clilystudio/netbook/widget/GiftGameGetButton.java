package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;

public class GiftGameGetButton extends GiftGameGameButton {

    private com.clilystudio.netbook.view.a a;

    public GiftGameGetButton(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    protected final void a() {
        setText((CharSequence) "\u4E0B\u8F7D");
        setBackgroundResource(2131427379);
    }

    protected final void b() {
        setText((CharSequence) "\u4E0B\u8F7D\u4E2D");
        setBackgroundResource(2131427377);
    }

    protected final void c() {
        setText((CharSequence) "\u5B89\u88C5");
        setBackgroundResource(2131427378);
    }

    protected final void d() {
        if (g() != null) {
            com.clilystudio.netbook.util.e.a((Activity) getContext(), "\u5F00\u59CB\u4E0B\u8F7D...");
            e();
            try {
                if (a == null)
                    return;
                a.dismiss();
            } catch (Exception Exception1) {
                Exception1.printStackTrace();
                return;
            }
            return;
        }
    }

    public void setBottomDialog(com.clilystudio.netbook.view.a a1) {
        a = a1;
    }
}
