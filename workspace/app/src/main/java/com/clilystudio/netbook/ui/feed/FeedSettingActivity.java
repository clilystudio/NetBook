package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.m;
import com.clilystudio.netbook.ui.BaseActivity;

public class FeedSettingActivity extends BaseActivity {
    private TextView a;
    private int b;

    static /* synthetic */ int a(FeedSettingActivity feedSettingActivity) {
        return feedSettingActivity.b;
    }

    static /* synthetic */ void a(FeedSettingActivity feedSettingActivity, int n) {
        final int n2 = a.d(n);
        int[] arrn = new int[]{R.id.feed_chapter_10, R.id.feed_chapter_20, R.id.feed_chapter_50, R.id.feed_chapter_100, R.id.feed_chapter_200};
        View view = feedSettingActivity.getLayoutInflater().inflate(R.layout.feed_chapter_count_dialog, null, false);
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h(feedSettingActivity);
        h2.d = "\u9009\u62e9\u517b\u80a5\u7ae0\u8282\u6570";
        final AlertDialog alertDialog = h2.a(view).b("\u53d6\u6d88", null).a();
        ((RadioGroup) view.findViewById(R.id.feed_group)).check(arrn[n2]);
        for (int j = 0; j < 5; ++j) {
            final int finalJ = j;
            ((RadioButton) view.findViewById(arrn[j])).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    alertDialog.dismiss();
                    if (finalJ != n2) {
                        FeedSettingActivity.b(FeedSettingActivity.this, finalJ);
                    }
               }
            });
        }
        alertDialog.show();
    }

    static /* synthetic */ void b(FeedSettingActivity feedSettingActivity, int n) {
        feedSettingActivity.b = a.e(n);
        TextView textView = feedSettingActivity.a;
        String string = feedSettingActivity.getString(R.string.book_feed_setting_limit);
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
        this.setContentView(R.layout.activity_feed_settings);
        this.b(R.string.feed_setting);
        this.b = bundle != null ? bundle.getInt("savedCurrentCount", 50) : a.a((Context) this, "feed_chapter_count", 50);
        View view = this.findViewById(R.id.book_feed_set_chapter);
        TextView textView = this.a = (TextView) this.findViewById(R.id.book_feed_set_chapter_count);
        String string = this.getString(R.string.book_feed_setting_limit);
        Object[] arrobject = new Object[]{this.b};
        textView.setText(String.format(string, arrobject));
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FeedSettingActivity.a(FeedSettingActivity.this, FeedSettingActivity.a(FeedSettingActivity.this));
            }
        });
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("savedCurrentCount", this.b);
    }
}
