package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ListView;

import com.clilystudio.app.netbook.adapter.E;
import com.clilystudio.app.netbook.d_IntentFactory;

public class AuthorBooksActivity extends BaseLoadingActivity {
    private ListView a;
    private E b;
    private String c;

    public static Intent a(Context paramContext, String paramString) {
        return new d_IntentFactory().a_setClass(paramContext, AuthorBooksActivity.class).a_putExtra("keyword", paramString).a();
    }

    protected final void b() {
        i();
        H localH = new H(this, (byte) 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.c;
        localH.b(arrayOfString);
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        a(2130903322);
        this.c = getIntent().getStringExtra("keyword");
        b_initContentView(this.c);
        this.a = ((ListView) findViewById(2131493185));
        this.b = new E(LayoutInflater.from(this));
        this.a.setAdapter(this.b);
        this.a.setOnItemClickListener(new G(this));
        b();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AuthorBooksActivity
 * JD-Core Version:    0.6.2
 */