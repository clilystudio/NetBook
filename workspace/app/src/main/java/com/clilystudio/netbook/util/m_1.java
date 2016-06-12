
package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.design.widget.am;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.reader.ReaderActivity;
import com.clilystudio.netbook.reader.ReaderResActivity;
import com.clilystudio.netbook.reader.ReaderWebActivity;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class m {

    public m(Activity Activity1)
    {
        a = Activity1;
        i.a().a( this );
    }

    private Activity a;
    private String b;
    private String c;
    private BookReadRecord d;
    private boolean e;
    private String f;

    static Activity a(m m1)
    {
        return m1.a;
    }

    private void a(int int1)
    {
        MyApplication.a().a( int1 );
        if( int1 == 5 )
            a( ReaderActivity.a( (Context) a, b, c, "MIX_TOC_ID", null, false ) );
        else if( int1 == 0 || int1 == 1 || int1 == 4 || int1 == 2 )
        {
            Intent Intent2 = ReaderResActivity.a( (Context) a, b, c, int1 );

            Intent2.putExtra( "SELECT_LAST", false );
            a( Intent2 );
        }
        else if( int1 == 10 && d != null )
        {
            String String11 = d.getTocId();

            a( ReaderActivity.a( (Context) a, b, c, String11, null, false ) );
        }
        else if( int1 == 9 )
        {
            if( d != null )
                f = d.getTocId();
            if( am.e() != null )
            {
                HashMap HashMap10 = com.clilystudio.netbook.hpay100.a.a.M( b );

                if( HashMap10 == null )
                    HashMap10 = new HashMap();
                a( ReaderActivity.a( (Context) a, b, c, f, null, false, HashMap10, e ) );
            }
            else
                a( ReaderActivity.a( (Context) a, b, c, f, null, false, e ) );
        }
        else
        {
            String String4 = com.clilystudio.netbook.hpay100.a.a.g( int1 );
            SourceRecord SourceRecord5 = SourceRecord.get( b, String4 );

            if( SourceRecord5 == null || SourceRecord5.getSourceId() == null )
                a( true );
            else
            {
                String String6 = SourceRecord5.getSourceId();
                String String7 = com.clilystudio.netbook.hpay100.a.a.a( b, int1, String6, null );

                if( com.clilystudio.netbook.hpay100.a.a.a( (Context) a, String4, false ) )
                {
                    Intent Intent8 = ReaderActivity.a( (Context) a, b, c, String7, String4, false );

                    Intent8.putExtra( "SOURCE_ID", String6 );
                    a( Intent8 );
                }
                else
                    a( ReaderWebActivity.a( (Context) a, b, c, String7, String6, int1 ) );
            }
        }
    }

    private void a(Intent Intent1)
    {
        Intent1.putExtra( "extra_force_online", false );
        a.startActivity( Intent1 );
    }

    static void a(m m1, int int2)
    {
        m1.a( int2 );
    }

    static void a(m m1, List List2)
    {
        Iterator Iterator3 = List2.iterator();
        int int4;

label_41:
        {
            while( Iterator3.hasNext() )
            {
                TocSummary TocSummary5 = (TocSummary) Iterator3.next();

                if( !"zhuishuvip".equals( TocSummary5.getSource() ) )
                    continue;
                if( m1.d != null )
                {
                    m1.d.setHave_cp( 1 );
                    m1.d.setTocId( TocSummary5.get_id() );
                    m1.d.setReadMode( 9 );
                    m1.d.save();
                }
                else
                    MyApplication.a().a( 9 );
                m1.f = TocSummary5.get_id();
                int4 = 1;
                break label_41;
            }
            int4 = 0;
        }
        if( int4 != 0 )
            m1.a( m1.d.getReadMode() );
    }

    private void a(boolean boolean1)
    {
        n n2 = new n( this, a, boolean1 );
        String[] String_1darray3 = new String[1];

        String_1darray3[0] = b;
        n2.b( String_1darray3 );
    }

    private void a(boolean boolean1, boolean boolean2)
    {
        o o3 = new o( this, a, boolean1, boolean2 );
        String[] String_1darray4 = new String[1];

        String_1darray4[0] = b;
        o3.b( String_1darray4 );
    }

    static boolean a(m m1, boolean boolean2)
    {
        m1.e = true;
        return true;
    }

    static String b(m m1)
    {
        return m1.b;
    }

    static void b(m m1, List List2)
    {
        Iterator Iterator3 = List2.iterator();
        TocSummary TocSummary4;

        do
        {
            if( !Iterator3.hasNext() )
                return;
            TocSummary4 = (TocSummary) Iterator3.next();
        }
        while( !"zhuishuvip".equals( TocSummary4.getSource() ) );
        MyApplication.a().a( 9 );
        m1.f = TocSummary4.get_id();
        m1.a( 9 );
    }

    static BookReadRecord c(m m1)
    {
        return m1.d;
    }

    public final void a(BookReadRecord BookReadRecord1)
    {
        int int2 = 5;
        int int3;

        d = BookReadRecord1;
        b = BookReadRecord1.getBookId();
        c = BookReadRecord1.getTitle();
        int3 = BookReadRecord1.getReadMode();
        if( BookReadRecord1.have_cp == 1 )
        {
            if( BookReadRecord1.getTocId() == null )
                a( true, true );
            else
                a( int3 );
        }
        else
        {
            int int4 = 0;

label_37:
            {
                if( int3 == -1 )
                {
                    long long5 = com.clilystudio.netbook.hpay100.a.a.c( (Context) a, "PREF_FIRST_LAUNCH_TIME", 0L );
                    int int7;

                    if( Calendar.getInstance().getTimeInMillis() - long5 >= 2592000000L )
                        int7 = 1;
                    else
                        int7 = 0;
                    int4 = 0;
                    if( int7 == 0 )
                    {
                        Account Account8 = am.e();

                        if( Account8 != null )
                        {
                            int int10 = Account8.getUser().getLv();

                            int4 = 0;
                            if( int10 >= int2 )
                                break label_37;
                        }
                        int4 = 1;
                    }
                }
            }
            if( int4 != 0 )
            {
                e.a( a, "\u6B63\u5728\u83B7\u53D6\u6765\u6E90" );
                a( true );
            }
            else
            {
                if( int3 == -1 )
                {
                    BookReadRecord1.setReadMode( int2 );
                    BookReadRecord1.save();
                }
                else
                    int2 = int3;
                a( int2 );
            }
        }
    }

    public final void a(BookInfo BookInfo1)
    {
        b = BookInfo1.getId();
        c = BookInfo1.getTitle();
        if( BookInfo1.isHasCp() )
            a( false, false );
        else
            a( false );
    }
}
