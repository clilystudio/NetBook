package com.clilystudio.netbook.ui.feed;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.l;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.List;

public class FeedAddActivity extends BaseActivity {
    private c a;
    private ListView b;
    private ArrayList<BookReadRecord> c = new ArrayList();

    static /* synthetic */ void a(FeedAddActivity feedAddActivity) {
        if (feedAddActivity.c.isEmpty()) {
            e.a((Activity) feedAddActivity, (String) "\u4f60\u8fd8\u6ca1\u6709\u9009\u62e9\u79fb\u5165\u7684\u4e66\u7c4d");
            return;
        }
        for (BookReadRecord bookReadRecord : feedAddActivity.c) {
            bookReadRecord.setFeeding(true);
            bookReadRecord.setChapterCountAtFeed(bookReadRecord.getChapterCount());
            bookReadRecord.save();
            i.a().c(new l(bookReadRecord));
        }
        Intent intent = new Intent(feedAddActivity, FeedListActivity.class);
        intent.addFlags(335544320);
        feedAddActivity.startActivity(intent);
    }

    static /* synthetic */ c b(FeedAddActivity feedAddActivity) {
        return feedAddActivity.a;
    }

    static /* synthetic */ ArrayList c(FeedAddActivity feedAddActivity) {
        return feedAddActivity.c;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_feed_add);
        this.a(R.string.feed_select_book, R.string.feed_add_ok, (aa) new a(this));
        this.b = (ListView) this.findViewById(R.id.book_feed_add_list);
        this.b.setOnItemClickListener(new b(this));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResume() {
        super.onResume();
        this.a = new c(this, this.getLayoutInflater());
        this.b.setAdapter(this.a);
        List<BookReadRecord> list = BookReadRecord.getAllWithTopNoFeed();
        this.a.a(list);
        boolean bl = !list.isEmpty();
        View view = this.findViewById(R.id.book_feed_add_content);
        View view2 = this.findViewById(R.id.book_feed_add_empty);
        if (bl) {
            view.setVisibility(View.VISIBLE);
            view2.setVisibility(View.GONE);
        } else {
            view.setVisibility(View.GONE);
            view2.setVisibility(View.VISIBLE);
        }
        this.c.clear();
    }
}
