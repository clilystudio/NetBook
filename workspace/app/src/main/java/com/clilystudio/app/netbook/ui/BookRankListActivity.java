package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.adapter.BookRankAdapter;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.k;
import com.clilystudio.app.netbook.event.x;
import com.clilystudio.app.netbook.model.BookRankSummary;

public class BookRankListActivity extends BaseActivity {
    private View a;
    private View b;
    private BookRankAdapter c;
    private ListView e;
    private Handler f;

    private void a(int paramInt) {
        switch (paramInt) {
            default:
                return;
            case 1:
                this.a.setVisibility(8);
                this.b.setVisibility(8);
                return;
            case 0:
                this.a.setVisibility(0);
                this.b.setVisibility(8);
                return;
            case 2:
        }
        this.a.setVisibility(8);
        this.b.setVisibility(0);
    }

    private void b() {
        a(0);
        new aO(this, (byte) 0).b(new Void[0]);
    }

    @l
    public void clickListItem(x paramx) {
        BookRankSummary localBookRankSummary = paramx.b();
        String str1;
        if (paramx.a()) {
            str1 = "male";
            if ((localBookRankSummary.isCollapse()) || (!a.r(this, "rank_revision_switch")))
                break label95;
        }
        label95:
        for (Intent localIntent = BookRankMainActivity.a(this, localBookRankSummary.getIds(), localBookRankSummary.getTitle(), str1); ; localIntent = BookRankDetailActivity.a(this, localBookRankSummary.get_id(), localBookRankSummary.getTitle())) {
            startActivity(localIntent);
            String str2 = localBookRankSummary.getTitle();
            AppProperties.getInstance(this).setProperties("book_rank_list_item", str2 + "_" + str1);
            return;
            str1 = "female";
            break;
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(2130903088);
        b_initContentView(2131034450);
        this.f = new Handler();
        this.e = ((ListView) findViewById(2131493101));
        this.a = findViewById(2131493102);
        this.b = findViewById(2131493103);
        this.b.setOnClickListener(new aM(this));
        this.c = new BookRankAdapter(getLayoutInflater());
        this.e.setAdapter(this.c);
        b();
    }

    @l
    public void onExpand(k paramk) {
        if ((!a.g()) || (a.k())) ;
        while (paramk.a() != this.e.getLastVisiblePosition())
            return;
        this.f.postDelayed(new aN(this, paramk), 50L);
    }

    public void onPause() {
        super.onPause();
        i.a().b(this);
    }

    public void onResume() {
        super.onResume();
        i.a().a(this);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookRankListActivity
 * JD-Core Version:    0.6.2
 */