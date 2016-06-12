package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;

import com.clilystudio.netbook.ui.BaseActivity;

public class HomeParentActivity extends BaseActivity {

    static void a(HomeParentActivity HomeParentActivity1, String String2) {
        if (!HomeParentActivity1.isFinishing())
            new android.support.v7.app.k((Context) HomeParentActivity1).a((CharSequence) "\u901A\u77E5").b((CharSequence) String2).a((CharSequence) "\u786E\u5B9A", null).c();
    }

    private boolean b() {
        int int2;
        int int3;
        boolean boolean4;

        try {
            int2 = Integer.parseInt(com.clilystudio.netbook.umeng.a.b.b((Context) this, "force_update_until_version"));
            int3 = am.f((Context) this);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return false;
        }
        boolean4 = false;
        if (int2 > int3)
            boolean4 = true;
        return boolean4;
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        com.clilystudio.netbook.umeng.update.b.a((Context) this);
        if (b())
            com.clilystudio.netbook.umeng.update.b.a((com.clilystudio.netbook.umeng.update.a) new k(this));
    }
}
