package com.clilystudio.netbook.ui;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.api.ApiService;
import com.nostra13.universalimageloader.core.d.a;

public class SmartImageView
        extends MaskAbleImageView {
    public SmartImageView(Context context) {
        super(context);
    }

    public SmartImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SmartImageView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    protected com.nostra13.universalimageloader.core.b.a a() {
        return null;
    }

    public void setApiImageUrl(String string, int n) {
        this.setImageUrl(ApiService.a + string, n);
    }

    public void setImageUrl(String string) {
        this.setImageUrl(string, 0);
    }

    public void setImageUrl(String string, int n) {
        this.setImageUrl(string, n, null);
    }

    public void setImageUrl(String string, int n, a a2) {
        com.nostra13.universalimageloader.core.b.a a3;
        e e2 = new e().a(true).b(true);
        if (n != 0) {
            e2.a(n);
        }
        if ((a3 = this.a()) != null) {
            e2.a(a3);
        }
        d d2 = e2.a();
        if ("Official".equals("macServer") && string != null && string.contains("static")) {
            return;
        }
        f.a().a(string, this, d2, a2);
    }
}
