package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.FeedSettingChangedEvent;
import com.clilystudio.netbook.ui.BaseActivity;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class FeedSettingActivity extends BaseActivity {
    private TextView a;
    private int b;

    static /* synthetic */ int a(FeedSettingActivity feedSettingActivity) {
        return feedSettingActivity.b;
    }

    static /* synthetic */ void a(final FeedSettingActivity feedSettingActivity, int n) {
        final int n2 = com.clilystudio.netbook.util.a.d(n);
        int[] arrn = new int[]{R.id.feed_chapter_10, R.id.feed_chapter_20, R.id.feed_chapter_50, R.id.feed_chapter_100, R.id.feed_chapter_200};
        View view = feedSettingActivity.getLayoutInflater().inflate(R.layout.feed_chapter_count_dialog, (ViewGroup)feedSettingActivity.getWindow().getDecorView(), false);
        BaseDialog.Builder h2 = new BaseDialog.Builder(feedSettingActivity);
        h2.setTitle("选择养肥章节数");
        final AlertDialog alertDialog = h2.setView(view).setNegativeButton("取消", null).create();
        ((RadioGroup) view.findViewById(R.id.feed_group)).check(arrn[n2]);
        for (int j = 0; j < 5; ++j) {
            final int finalJ = j;
            view.findViewById(arrn[j]).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    alertDialog.dismiss();
                    if (finalJ != n2) {
                        FeedSettingActivity.b(feedSettingActivity, finalJ);
                    }
               }
            });
        }
        alertDialog.show();
    }

    static /* synthetic */ void b(FeedSettingActivity feedSettingActivity, int n) {
        feedSettingActivity.b = com.clilystudio.netbook.util.a.e(n);
        TextView textView = feedSettingActivity.a;
        String string = feedSettingActivity.getString(R.string.book_feed_setting_limit);
        Object[] arrobject = new Object[]{feedSettingActivity.b};
        textView.setText(String.format(string, arrobject));
        com.clilystudio.netbook.util.a.b(feedSettingActivity, "feed_chapter_count", feedSettingActivity.b);
        BusProvider.getInstance().post(new FeedSettingChangedEvent());
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_feed_settings);
        this.b(R.string.feed_setting);
        this.b = bundle != null ? bundle.getInt("savedCurrentCount", 50) : com.clilystudio.netbook.util.a.getIntPref(this, "feed_chapter_count", 50);
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
