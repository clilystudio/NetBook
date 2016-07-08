package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.FeedAddedEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.FeedSettingChangedEvent;
import com.clilystudio.netbook.event.FeedRemovedEvent;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.List;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class FeedListActivity extends BaseActivity {
    private W<BookReadRecord> a;
    private int b;

    static /* synthetic */ int a(FeedListActivity feedListActivity) {
        return feedListActivity.b;
    }

    private void a(int n) {
        final int n2 = com.clilystudio.netbook.hpay100.a.a.d(n);
        int[] arrn = new int[]{R.id.feed_chapter_10, R.id.feed_chapter_20, R.id.feed_chapter_50, R.id.feed_chapter_100, R.id.feed_chapter_200};
        View view = this.getLayoutInflater().inflate(R.layout.feed_chapter_count_dialog, (ViewGroup)getWindow().getDecorView(), false);
        BaseDialog.Builder h2 = new BaseDialog.Builder(this);
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
                        int n = com.clilystudio.netbook.hpay100.a.a.e(finalJ);
                        MiStatInterface.recordCalculateEvent( "feed_chapter_count",null, n);
                        BusProvider.getInstance().post(new FeedSettingChangedEvent());
                    }
                }
            });
        }
        alertDialog.show();
    }

    private void b() {
        List<BookReadRecord> list = BookReadRecord.getAllFeedingOrderByCount();
        this.b = com.clilystudio.netbook.hpay100.a.a.a(this, "feed_chapter_count", 50);
        this.a.a(list);
    }

    @Subscribe
    public void onFeedAdded(FeedAddedEvent l2) {
        this.b();
    }

    @Subscribe
    public void onFeedSettingChanged(FeedSettingChangedEvent m2) {
        this.b();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_feed_list);
        this.b(R.string.feed);
        BusProvider.getInstance().register(this);
        ListView listView = (ListView) this.findViewById(R.id.book_feed_list);
        this.a = new W<BookReadRecord>(this.getLayoutInflater(), R.layout.list_item_feed_list){

            @Override
            protected void a(int var1, final BookReadRecord bookReadRecord) {
                this.a(0, CoverView.class).setImageUrl(bookReadRecord.getFullCover(), R.drawable.cover_default);
                this.a(1, bookReadRecord.getTitle());
                int n2 = bookReadRecord.getChapterCount() - bookReadRecord.getChapterCountAtFeed();
                int n3 = 0;
                if (n2 >= 0) {
                    n3 = n2;
                }
                this.a(2, "养了 " + n3 + " 章未读");
                final TextView textView = this.a(3, TextView.class);
                if (bookReadRecord.isFeeding()) {
                    textView.setEnabled(true);
                    textView.setText("\u79fb\u56de");
                    if (n3 >= FeedListActivity.a(FeedListActivity.this)) {
                        textView.setBackgroundResource(R.drawable.feed_list_remove_red);
                        textView.setTextColor(FeedListActivity.this.getResources().getColor(android.R.color.white));
                    } else {
                        textView.setBackgroundResource(R.drawable.feed_list_remove_light);
                        textView.setTextColor(FeedListActivity.this.getResources().getColor(R.color.feed_list_light));
                    }
                } else {
                    this.a(textView);
                }
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        textView.setEnabled(false);
                        textView.setText("\u5df2\u79fb\u56de");
                        textView.setBackgroundResource(R.color.transparent);
                        textView.setTextColor(FeedListActivity.this.getResources().getColor(R.color.feed_list_light));
                        bookReadRecord.setFeeding(false);
                        bookReadRecord.setFeedFat(false);
                        BookReadRecord.addAccountInfo(bookReadRecord);
                        bookReadRecord.save();
                        BusProvider.getInstance().post(new FeedRemovedEvent(bookReadRecord.getBookId()));
                    }
                });
           }

            @Override
            protected int[] a() {
                return new int[]{R.id.book_feed_list_cover, R.id.book_feed_list_title, R.id.book_feed_list_chapter, R.id.book_feed_list_remove};
            }
        };
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
        BusProvider.getInstance().unregister(this);
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
        this.a(com.clilystudio.netbook.hpay100.a.a.a(this, "feed_chapter_count", 50));
        return true;
    }
}
