package com.clilystudio.netbook.ui.home;

import android.support.v7.app.AlertDialog;

import com.clilystudio.netbook.ui.BaseActivity;

public class HomeParentActivity extends BaseActivity {
    static /* synthetic */ void a(HomeParentActivity homeParentActivity, String string) {
        if (!homeParentActivity.isFinishing()) {
            new AlertDialog.Builder(homeParentActivity).setTitle("通知").setMessage(string).setPositiveButton("确定", null).show();
        }
    }
}
