package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ListView;

import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.d;

public class AuthorBooksActivity extends BaseLoadingActivity {
    private ListView a;
    private E b;
    private String c;

    public static Intent a(Context context, String string) {
        return new d().a(context, AuthorBooksActivity.class).a("keyword", string).a();
    }

    static /* synthetic */ ListView a(AuthorBooksActivity authorBooksActivity) {
        return authorBooksActivity.a;
    }

    static /* synthetic */ E b(AuthorBooksActivity authorBooksActivity) {
        return authorBooksActivity.b;
    }

    @Override
    protected final void b() {
        this.i();
        H h = new H(this, 0);
        String[] arrstring = new String[]{this.c};
        h.b(arrstring);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(2130903322);
        this.c = this.getIntent().getStringExtra("keyword");
        this.b(this.c);
        this.a = (ListView) this.findViewById(2131493185);
        this.b = new E(LayoutInflater.from(this));
        this.a.setAdapter(this.b);
        this.a.setOnItemClickListener(new G(this));
        this.b();
    }
}
