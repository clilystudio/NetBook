
package com.clilystudio.netbook.reader;

import android.content.res.Resources;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.ChineseAllPromRoot$Prom;
import com.clilystudio.netbook.model.TocSummary;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class bE extends com.clilystudio.netbook.a.e {

    bE(ReaderMixActivity ReaderMixActivity1, byte byte2)
    {
        this( ReaderMixActivity1 );
    }

    private ReaderMixActivity a;

    private bE(ReaderMixActivity ReaderMixActivity1)
    {
        a = ReaderMixActivity1;
    }

    private static transient Object[] a(String[] String_1darray1)
    {
        Object[] Object_1darray5;

        try
        {
            ApiService ApiService4;

            com.clilystudio.netbook.api.b.a();
            ApiService4 = com.clilystudio.netbook.api.b.b();
            Object_1darray5 = new Object[2];
            Object_1darray5[0] = ApiService4.d( String_1darray1[0] );
            Object_1darray5[1] = ApiService4.aa( String_1darray1[0] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return Object_1darray5;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object[] Object_1darray2 = (Object[]) Object1;

        if( Object_1darray2 != null )
        {
            Object Object3 = (List) Object_1darray2[0];

            if( Object3 != null )
            {
                if( !((List) Object3).isEmpty() )
                {
                    TextView TextView4;
                    Resources Resources5;
                    Object[] Object_1darray6;
                    Iterator Iterator7;
                    int int8;
                    int int12;

                    a.f();
                    TextView4 = (TextView) a.findViewById( 2131493880 );
                    Resources5 = a.getResources();
                    Object_1darray6 = new Object[1];
                    Object_1darray6[0] = Integer.valueOf( -1 + ((List) Object3).size() );
                    TextView4.setText( (CharSequence) Resources5.getString( 2131034520, Object_1darray6 ) );
                    Iterator7 = ((List) Object3).iterator();
                    for( int8 = 0; Iterator7.hasNext(); int8 = int12 )
                    {
                        TocSummary TocSummary11 = (TocSummary) Iterator7.next();

                        if( "zhuishuvip".equals( TocSummary11.getSource() ) )
                        {
                            ReaderMixActivity.a( a, TocSummary11 );
                            int12 = 1;
                        }
                        else
                            int12 = int8;
                    }
                    if( int8 != 0 )
                    {
                        ReaderMixActivity.e( a );
                        ((List) Object3).remove( ReaderMixActivity.f( a ) );
                    }
                    ReaderMixActivity.d( a ).a( (Collection) Object3 );
                    ReaderMixActivity.a( a, (ChineseAllPromRoot) Object_1darray2[1] );
                    if( ReaderMixActivity.g( a ) != null && ReaderMixActivity.g( a ).getProm() != null )
                    {
                        ReaderMixActivity.h( a ).setOnClickListener( (View$OnClickListener) new bF( a, ReaderMixActivity.g( a ) ) );
                        ReaderMixActivity.h( a ).setVisibility( 0 );
                    }
                    else
                    {
                        ReaderMixActivity.h( a ).setVisibility( 8 );
                        return;
                    }
                }
                else
                {
                    a.g();
                    return;
                }
            }
            else
            {
                a.h();
                return;
            }
        }
    }
}
