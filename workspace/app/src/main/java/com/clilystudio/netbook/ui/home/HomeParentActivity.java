package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.os.Bundle;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.ui.BaseActivity;
import com.umeng.a.b;
import com.umeng.update.a;

public class HomeParentActivity extends BaseActivity {
    static /* synthetic */ void a(HomeParentActivity homeParentActivity, String string) {
        if (!homeParentActivity.isFinishing()) {
            new android.support.v7.app.k(homeParentActivity).a("通知").b(string).a("确定", null).c();
        }
    }
}
