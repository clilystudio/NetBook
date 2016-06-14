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

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.m;
import com.clilystudio.netbook.ui.BaseActivity;
import com.squareup.a.l;

import java.util.List;

public class FeedListActivity extends BaseActivity {
    private f a;
    private int b;

    static /* synthetic */ int a(FeedListActivity feedListActivity) {
        return feedListActivity.b;
    }

    private void a(int n) {
        int n2 = a.d(n);
        int[] arrn = new int[]{2131493425, 2131493426, 2131493427, 2131493428, 2131493429};
        View view = this.getLayoutInflater().inflate(2130903206, null, false);
        h h2 = new h(this);
        h2.d = "\u9009\u62e9\u517b\u80a5\u7ae0\u8282\u6570";
        AlertDialog alertDialog = h2.a(view).b("\u53d6\u6d88", null).a();
        ((RadioGroup) view.findViewById(2131493424)).check(arrn[n2]);
        for (int j = 0; j < 5; ++j) {
            ((RadioButton) view.findViewById(arrn[j])).setOnClickListener(new e(this, alertDialog, j, n2));
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
        this.setContentView(2130903099);
        this.b(2131034374);
        i.a().a(this);
        ListView listView = (ListView) this.findViewById(2131493127);
        this.a = new f(this, this.getLayoutInflater());
        listView.setAdapter(this.a);
        this.b();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        this.getMenuInflater().inflate(2131558400, menu);
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
            case 2131494054: {
                this.startActivity(new Intent(this, FeedAddActivity.class));
                return true;
            }
            case 2131494055:
        }
        this.a(a.a((Context) this, "feed_chapter_count", 50));
        return true;
    }
}
