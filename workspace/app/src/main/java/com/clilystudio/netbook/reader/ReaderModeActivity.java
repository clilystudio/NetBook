
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

public class ReaderModeActivity extends BaseActivity {

    protected int a;
    protected String b;
    protected String c;

    private String g(String String1)
    {
        if( getIntent() != null )
            return getIntent().getStringExtra( String1 );
        else
            return null;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ReaderWebPageFragment a(String String1)
    {
    }

    public final void a(int int1)
    {
        startActivity( BookPostTabActivity.a( (Context) this, b, c ) );
        BookTopicEnterRecord.updateCount( b, int1 );
    }

    public final void b()
    {
        startActivity( ModeListActivity.a( (Context) this, b, c, a ) );
        overridePendingTransition( 2130968602, 2130968603 );
    }

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        b = g( "BOOK_ID" );
        c = g( "BOOK_TITLE" );
        if( Bundle1 != null )
            a = Bundle1.getInt( "savedCurrentMode", 5 );
        else
            a = getIntent().getIntExtra( "BOOK_MODE", 5 );
        getIntent().getBooleanExtra( "SELECT_LAST", false );
    }

    protected void onSaveInstanceState(Bundle Bundle1)
    {
        super.onSaveInstanceState( Bundle1 );
        Bundle1.putInt( "savedCurrentMode", a );
    }
}
