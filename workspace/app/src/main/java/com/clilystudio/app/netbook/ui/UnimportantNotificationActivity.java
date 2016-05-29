package com.clilystudio.app.netbook.ui;

import android.os.Bundle;

import com.clilystudio.app.netbook.util.J;

public class UnimportantNotificationActivity extends BaseActivity {
    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903139);
        b("通知");
    }

    public void onPause() {
        super.onPause();
        J.a(this).d();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.UnimportantNotificationActivity
 * JD-Core Version:    0.6.2
 */