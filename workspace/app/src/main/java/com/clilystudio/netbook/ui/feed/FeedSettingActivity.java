package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.event.m;
import com.clilystudio.netbook.ui.BaseActivity;

public class FeedSettingActivity extends BaseActivity {
    private TextView a;
    private int b;

    static /* synthetic */ int a(FeedSettingActivity feedSettingActivity) {
        return feedSettingActivity.b;
    }

    static /* synthetic */ void a(FeedSettingActivity feedSettingActivity, int n) {
        int n2 = a.d(n);
        int[] arrn = new int[]{2131493425, 2131493426, 2131493427, 2131493428, 2131493429};
        View view = feedSettingActivity.getLayoutInflater().inflate(2130903206, null, false);
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h(feedSettingActivity);
        h2.d = "\u9009\u62e9\u517b\u80a5\u7ae0\u8282\u6570";
        AlertDialog alertDialog = h2.a(view).b("\u53d6\u6d88", null).a();
        ((RadioGroup) view.findViewById(2131493424)).check(arrn[n2]);
        for (int j = 0; j < 5; ++j) {
            ((RadioButton) view.findViewById(arrn[j])).setOnClickListener(new i(feedSettingActivity, alertDialog, j, n2));
        }
        alertDialog.show();
    }

    static /* synthetic */ void b(FeedSettingActivity feedSettingActivity, int n) {
        feedSettingActivity.b = a.e(n);
        TextView textView = feedSettingActivity.a;
        String string = feedSettingActivity.getString(2131034327);
        Object[] arrobject = new Object[]{feedSettingActivity.b};
        textView.setText(String.format(string, arrobject));
        a.b((Context) feedSettingActivity, "feed_chapter_count", feedSettingActivity.b);
        com.clilystudio.netbook.event.i.a().c(new m());
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903100);
        this.b(2131034384);
        this.b = bundle != null ? bundle.getInt("savedCurrentCount", 50) : a.a((Context) this, "feed_chapter_count", 50);
        View view = this.findViewById(2131493128);
        TextView textView = this.a = (TextView) this.findViewById(2131493130);
        String string = this.getString(2131034327);
        Object[] arrobject = new Object[]{this.b};
        textView.setText(String.format(string, arrobject));
        view.setOnClickListener(new h(this));
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("savedCurrentCount", this.b);
    }
}
