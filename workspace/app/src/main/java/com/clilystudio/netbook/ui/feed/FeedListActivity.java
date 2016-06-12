package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.l;
import com.clilystudio.netbook.event.m;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.Collection;

public class FeedListActivity extends BaseActivity {

    private f a;
    private int b;

    static int a(FeedListActivity FeedListActivity1) {
        return FeedListActivity1.b;
    }

    private void a(int int1) {
        int int2 = 0;
        int int3 = com.clilystudio.netbook.hpay100.a.a.d(int1);
        int[] int_1darray4 = {2131493425, 2131493426, 2131493427, 2131493428, 2131493429};
        View View5 = getLayoutInflater().inflate(2130903206, null, false);
        h h6 = new h((Context) this);
        AlertDialog AlertDialog7;

        h6.d = "\u9009\u62E9\u517B\u80A5\u7AE0\u8282\u6570";
        AlertDialog7 = h6.a(View5).b("\u53D6\u6D88", null).a();
        ((RadioGroup) View5.findViewById(2131493424)).check(int_1darray4[int3]);
        while (int2 < 5) {
            ((RadioButton) View5.findViewById(int_1darray4[int2])).setOnClickListener((View$OnClickListener) new e(this, AlertDialog7, int2, int3));
            ++int2;
        }
        AlertDialog7.show();
    }

    private void b() {
        Object Object1 = BookReadRecord.getAllFeedingOrderByCount();

        b = com.clilystudio.netbook.hpay100.a.a.a((Context) this, "feed_chapter_count", 50);
        a.a((Collection) Object1);
    }

    public void onBookAddedEvent(l l1) {
        b();
    }

    public void onChapterCountEvent(m m1) {
        b();
    }

    public void onCreate(Bundle Bundle1) {
        ListView ListView2;

        super.onCreate(Bundle1);
        setContentView(2130903099);
        b(2131034374);
        i.a().a(this);
        ListView2 = (ListView) findViewById(2131493127);
        a = new f(this, getLayoutInflater());
        ListView2.setAdapter((ListAdapter) a);
        b();
    }

    public boolean onCreateOptionsMenu(Menu Menu1) {
        getMenuInflater().inflate(2131558400, Menu1);
        return true;
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public boolean onOptionsItemSelected(MenuItem MenuItem1) {
    }
}
