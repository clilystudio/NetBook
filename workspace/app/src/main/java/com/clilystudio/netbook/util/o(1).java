package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSummary;

import java.util.List;

final class o extends c<String, List<TocSummary>> {
    private boolean a;

    public o(m paramm, Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2) {
        super(paramActivity, 2131034218, paramBoolean1);
        this.a = paramBoolean2;
    }

    private static List<TocSummary> a(String[] paramArrayOfString) {
        try {
            b.a();
            List localList = b.b().d(paramArrayOfString[0]);
            return localList;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}
