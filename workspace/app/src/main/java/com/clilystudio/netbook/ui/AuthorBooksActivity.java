
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.d;

public class AuthorBooksActivity extends BaseLoadingActivity {

    private ListView a;
    private E b;
    private String c;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2)
    {
    }

    static ListView a(AuthorBooksActivity AuthorBooksActivity1)
    {
        return AuthorBooksActivity1.a;
    }

    static E b(AuthorBooksActivity AuthorBooksActivity1)
    {
        return AuthorBooksActivity1.b;
    }

    protected final void b()
    {
        H H1;
        String[] String_1darray2;

        i();
        H1 = new H( this, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = c;
        H1.b( String_1darray2 );
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        a( 2130903322 );
        c = getIntent().getStringExtra( "keyword" );
        b( c );
        a = (ListView) findViewById( 2131493185 );
        b = new E( LayoutInflater.from( (Context) this ) );
        a.setAdapter( (ListAdapter) b );
        a.setOnItemClickListener( (AdapterView$OnItemClickListener) new G( this ) );
        b();
    }
}
