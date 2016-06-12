
package com.clilystudio.netbook.util;

import android.app.Activity;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;

final class n extends com.clilystudio.netbook.a.a {

    public n(m m1, Activity Activity2, boolean boolean3)
    {
        super( Activity2, boolean3 );
        a = m1;
    }

    private m a;

    protected final void a()
    {
        e.a( m.a( a ), "\u83B7\u53D6\u8D44\u6E90\u7AD9\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
    }

    protected final void a(TocSourceRoot TocSourceRoot1)
    {
        if( b() != null )
        {
            TocSource[] TocSource_1darray2 = TocSourceRoot1.getSources();
            int int3 = TocSource_1darray2.length;
            int int4 = 5;
            int int5;

            for( int5 = 0; int5 < int3; ++int5 )
            {
                TocSource TocSource7 = TocSource_1darray2[int5];

                com.clilystudio.netbook.hpay100.a.a.a( TocSource7, m.b( a ) );
                if( TocSource7.isPriority() )
                {
                    String String8 = TocSource7.getSource();

                    if( "soso".equals( String8 ) )
                        int4 = 6;
                    else if( "sogou".equals( String8 ) )
                        int4 = 7;
                    else if( "leidian".equals( String8 ) )
                        int4 = 8;
                    else if( "easou".equals( String8 ) )
                        int4 = 3;
                    else
                        int4 = -1;
                }
            }
            if( m.c( a ) != null )
            {
                m.c( a ).setReadMode( int4 );
                m.c( a ).save();
            }
            else
                MyApplication.a().a( int4 );
            m.a( a, int4 );
        }
    }
}
