package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.m;
import com.clilystudio.netbook.ui.BaseActivity;
import com.squareup.a.l;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.List;

public class FeedListActivity extends BaseActivity {
    private f a;
    private int b;

    static /* synthetic */ int a(FeedListActivity feedListActivity) {
        return feedListActivity.b;
    }

    private void a(int n) {
        final int n2 = a.d(n);
        int[] arrn = new int[]{R.id.feed_chapter_10, R.id.feed_chapter_20, R.id.feed_chapter_50, R.id.feed_chapter_100, R.id.feed_chapter_200};
        View view = this.getLayoutInflater().inflate(R.layout.feed_chapter_count_dialog, null, false);
        h h2 = new h(this);
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
                        int n = com.clilystudio.netbook.hpay100.a.a.e(finalJ);
                        MiStatInterface.recordCalculateEvent( "feed_chapter_count",null, n);
                        i.a().post(new m());
                    }
                }
            });
        }
        alertDialog.show();
    }

    private void b() {
        List<BookReadRecord> list = BookReadRecord.getAllFeedingOrderByCount();
        this.b = a.a((Context) this, "feed_chapter_count", 50);
        this.a.a(list);
    }

    @l
    public void onBookAddedEvent(com.clilystudio.netbook.event.l l2) {
        this.b();
    }

    @l
    public void onChapterCountEvent(m m2) {
        this.b();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_feed_list);
        this.b(R.string.feed);
        i.a().a(this);
        ListView listView = (ListView) this.findViewById(R.id.book_feed_list);
        this.a = new f(this, this.getLayoutInflater());
        listView.setAdapter(this.a);
        this.b();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        this.getMenuInflater().inflate(R.menu.abs_menu_feed_list, menu);
        return true;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 16908332: {
                this.onBackPressed();
                return true;
            }
            case R.id.action_menu_feed_add: {
                this.startActivity(new Intent(this, FeedAddActivity.class));
                return true;
            }
            case R.id.action_menu_feed_setting:
        }
        this.a(a.a((Context) this, "feed_chapter_count", 50));
        return true;
    }
}
