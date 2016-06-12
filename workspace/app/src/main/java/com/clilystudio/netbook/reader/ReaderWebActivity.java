
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.db.SourceWebReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.mixtoc.SgTocChapter;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

public class ReaderWebActivity extends BaseReadActivity {

    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private ReaderWebActionBar g;
    private int h;

    static int a(ReaderWebActivity ReaderWebActivity1, int int2)
    {
        ReaderWebActivity1.h = int2;
        return int2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3, String String4, String String5, int int6)
    {
    }

    static SgTocChapter a(ReaderWebActivity ReaderWebActivity1, SgTocChapter[] SgTocChapter_1darray2, String String3)
    {
        int int4 = SgTocChapter_1darray2.length;
        int int5 = 0;

        while( int5 < int4 )
        {
            SgTocChapter SgTocChapter6 = SgTocChapter_1darray2[int5];

            if( String3.equals( SgTocChapter6.getCmd() ) )
                return SgTocChapter6;
            else
                ++int5;
        }
        return null;
    }

    static ReaderWebActionBar a(ReaderWebActivity ReaderWebActivity1)
    {
        return ReaderWebActivity1.g;
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void a(int int1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(ReaderWebActivity ReaderWebActivity1, int int2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(ReaderWebActivity ReaderWebActivity1, String String2, String String3, String String4, String String5)
    {
    }

    static void b(ReaderWebActivity ReaderWebActivity1)
    {
        String String2;
        boolean boolean3;
        Intent Intent4;

        com.clilystudio.netbook.hpay100.a.a.b( (Context) ReaderWebActivity1, ReaderWebActivity1.f, true );
        com.clilystudio.netbook.hpay100.a.a.b( (Context) ReaderWebActivity1, new StringBuilder().append( ReaderWebActivity1.f ).append( "source_web_alert" ).toString(), false );
        if( SourceRecord.get( ReaderWebActivity1.c, ReaderWebActivity1.f ) == null )
            SourceRecord.create( ReaderWebActivity1.c, ReaderWebActivity1.f, null );
        String2 = ReaderWebActivity1.getIntent().getStringExtra( "TOC_ID" );
        boolean3 = ReaderWebActivity1.getIntent().getBooleanExtra( "SELECT_LAST", false );
        Intent4 = ReaderActivity.a( (Context) ReaderWebActivity1, ReaderWebActivity1.c, ReaderWebActivity1.d, String2, ReaderWebActivity1.f, true );
        Intent4.putExtra( "SELECT_LAST", boolean3 );
        Intent4.putExtra( "SOURCE_ID", ReaderWebActivity1.e );
        ReaderWebActivity1.startActivity( Intent4 );
        ReaderWebActivity1.finish();
    }

    static void c(ReaderWebActivity ReaderWebActivity1)
    {
        if( com.clilystudio.netbook.hpay100.a.a.g() )
        {
            AlertDialog AlertDialog3 = new AlertDialog$Builder( (Context) ReaderWebActivity1 ).create();
            View View4 = LayoutInflater.from( (Context) ReaderWebActivity1 ).inflate( 2130903198, null );
            Button Button5 = (Button) View4.findViewById( 2131493417 );
            Button Button6 = (Button) View4.findViewById( 2131493418 );

            Button5.setOnClickListener( (View$OnClickListener) new cE( ReaderWebActivity1, AlertDialog3 ) );
            Button6.setOnClickListener( (View$OnClickListener) new cF( ReaderWebActivity1, AlertDialog3 ) );
            AlertDialog3.setCancelable( false );
            AlertDialog3.setView( View4 );
            AlertDialog3.show();
        }
        else
            new uk.me.lewisdeane.ldialogs.h( (Context) ReaderWebActivity1 ).b( 2131034463 ).a( false ).a( "\u8F6C\u7801\u9605\u8BFB", (DialogInterface$OnClickListener) new cH( ReaderWebActivity1 ) ).b( "\u539F\u7F51\u9875\u9605\u8BFB", (DialogInterface$OnClickListener) new cG( ReaderWebActivity1 ) ).b();
    }

    static int d(ReaderWebActivity ReaderWebActivity1)
    {
        return ReaderWebActivity1.h;
    }

    static String e(ReaderWebActivity ReaderWebActivity1)
    {
        return ReaderWebActivity1.c;
    }

    public final void a()
    {
        startActivity( ModeListActivity.a( (Context) this, c, d, b ) );
        overridePendingTransition( 2130968602, 2130968603 );
    }

    public final void b()
    {
        startActivity( BookPostTabActivity.a( (Context) this, c, d ) );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onCreate(Bundle Bundle1)
    {
    }

    protected void onDestroy()
    {
        super.onDestroy();
        i.a().b( this );
    }

    public void onModeChanged(v v1)
    {
        finish();
    }

    protected void onSaveInstanceState(Bundle Bundle1)
    {
        super.onSaveInstanceState( Bundle1 );
        Bundle1.putInt( "savedCurrentMode", b );
    }
}
