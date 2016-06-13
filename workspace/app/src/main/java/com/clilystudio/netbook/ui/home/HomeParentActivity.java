package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;

import com.clilystudio.netbook.ui.BaseActivity;
import com.umeng.a.b;
import com.umeng.update.a;

public class HomeParentActivity
        extends BaseActivity {
    static /* synthetic */ void a(HomeParentActivity homeParentActivity, String string) {
        if (!homeParentActivity.isFinishing()) {
            new android.support.v7.app.k(homeParentActivity).a("\u901a\u77e5").b(string).a("\u786e\u5b9a", null).c();
        }
    }

    private boolean b() {
        try {
            int n = Integer.parseInt(b.b(this, "force_update_until_version"));
            int n2 = am.f((Context) this);
            boolean bl = false;
            if (n > n2) {
                bl = true;
            }
            return bl;
        } catch (Exception var1_4) {
            var1_4.printStackTrace();
            return false;
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.umeng.update.b.a(this);
        if (this.b()) {
            com.umeng.update.b.a((a) ((Object) new k(this)));
        }
    }
}
