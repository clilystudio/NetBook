package com.clilystudio.netbook.util;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.ui.SplashActivity;

public class InsideLinkIntent extends Intent {

    private Context a;     // final access specifier removed
    private boolean b;
    public InsideLinkIntent(Context Context1, String String2, boolean boolean3) {
        b = true;
        a = Context1;
        new com.clilystudio.netbook.util.a.b();
        if (String2 == null)
            throw new UnImplementException("Not implement");
        a(com.clilystudio.netbook.util.a.b.a(String2));
    }

    public InsideLinkIntent(Context Context1, InsideLink InsideLink2) {
        a = Context1;
        a(InsideLink2);
    }

    public InsideLinkIntent(Context Context1, String String2) {
        a = Context1;
        new com.clilystudio.netbook.util.a.b();
        if (String2 == null)
            throw new UnImplementException("Not implement");
        a(com.clilystudio.netbook.util.a.b.a(String2));
    }

    private void a() {
        if (a instanceof SplashActivity)
            putExtra("from_splash", true);
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void a(InsideLink InsideLink1) {
    }
}
