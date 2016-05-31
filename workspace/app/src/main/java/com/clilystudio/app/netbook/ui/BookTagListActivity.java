package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.av;

import java.util.ArrayList;
import java.util.List;

public class BookTagListActivity extends BaseLoadingActivity {
    private aW a;
    private aV b;
    private String c;
    private ScrollLoadListView e;
    private View f;
    private List<BookSummary> g = new ArrayList();
    private av h = new aU(this);

    public static Intent a(Context paramContext, String paramString) {
        return new d_IntentFactory().a_setClass(paramContext, BookTagListActivity.class).a_putExtra("TAG_LIST_KEY", paramString).a();
    }

    protected final void b() {
        i();
        new aX(this, (byte) 0).b(new String[0]);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        a(2130903386);
        this.c = getIntent().getStringExtra("TAG_LIST_KEY");
        b_initContentView(this.c);
        LayoutInflater localLayoutInflater = LayoutInflater.from(this);
        this.f = localLayoutInflater.inflate(2130903325, null);
        this.f.setVisibility(8);
        this.e = ((ScrollLoadListView) findViewById(2131493981));
        this.e.addFooterView(this.f);
        this.e.setOnItemClickListener(new aT(this));
        this.b = new aV(this, localLayoutInflater);
        this.e.setAdapter(this.b);
        b();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookTagListActivity
 * JD-Core Version:    0.6.2
 */