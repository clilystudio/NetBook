package com.clilystudio.netbook.ui.home;

import android.os.Bundle;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.ui.BaseActivity;

public class HomeParentActivity extends BaseActivity {
    private boolean b() {
        try {
            int i = Integer.parseInt(com.clilystudio.netbook.umeng.a_Pack.b.b(this, "force_update_until_version"));
            int j = am.f(this);
            int k = 0;
            if (i > j)
                k = 1;
            return k;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        com.clilystudio.netbook.umeng.update.b.a(this);
        if (b())
            com.clilystudio.netbook.umeng.update.b.a(new k(this));
    }
}

