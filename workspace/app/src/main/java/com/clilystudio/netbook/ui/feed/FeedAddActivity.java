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
        this.setContentView(2130903097);
        this.a(2131034383, 2131034375, (aa) new a(this));
        this.b = (ListView) this.findViewById(2131493124);
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
        View view = this.findViewById(2131493122);
        View view2 = this.findViewById(2131493125);
        if (bl) {
            view.setVisibility(0);
            view2.setVisibility(8);
        } else {
            view.setVisibility(8);
            view2.setVisibility(0);
        }
        this.c.clear();
    }
}
