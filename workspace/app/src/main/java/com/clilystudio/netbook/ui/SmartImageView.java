package com.clilystudio.netbook.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

import com.clilystudio.netbook.api.ApiService;

public class SmartImageView extends MaskAbleImageView {

    public SmartImageView(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
    }

    public SmartImageView(Context Context1) {
        super(Context1);
    }

    public SmartImageView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    protected com.nostra13.universalimageloader.core.b.a a() {
        return null;
    }

    public void setApiImageUrl(String String1, int int2) {
        setImageUrl(new StringBuilder().append(ApiService.a).append(String1).toString(), int2);
    }

    public void setImageUrl(String String1) {
        setImageUrl(String1, 0);
    }

    public void setImageUrl(String String1, int int2) {
        setImageUrl(String1, int2, null);
    }

    public void setImageUrl(String String1, int int2, d.a a3) {
        e e4 = new e().a(true).b(true);
        com.nostra13.universalimageloader.core.b.a a5;
        d d6;

        if (int2 != 0)
            e4.a(int2);
        a5 = a();
        if (a5 != null)
            e4.a(a5);
        d6 = e4.a();
        if (!"Official".equals("macServer") || String1 == null || !String1.contains((CharSequence) "static"))
            f.a().a(String1, (ImageView) this, d6, a3);
    }
}
