
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.PayChargeRecord$Order;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

public class PayChargeActivity extends BaseLoadingActivity {

    private M a;
    private View b;
    private ScrollLoadListView c;
    private String g;
    private List e = new ArrayList();
    private List f = new ArrayList();
    private av h = new L( this );

    private transient int a(int int1, String String2, Date[] Date_1darray3)
    {
        if( int1 >= f.size() )
            int1 = 2147483647;
        else
        {
            if( t.a( ((PayChargeRecord$Order) f.get( int1 )).getCreated(), Date_1darray3 ) )
            {
                Object Object4 = new PayChargeRecord$Order();

                ((PayChargeRecord$Order) Object4).setPayType( "time_flag" );
                ((PayChargeRecord$Order) Object4).setTimeflag( String2 );
                f.add( int1, Object4 );
                ++int1;
            }
            while( int1 < f.size() && t.a( ((PayChargeRecord$Order) f.get( int1 )).getCreated(), Date_1darray3 ) )
                ++int1;
        }
        return int1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3)
    {
    }

    static List a(PayChargeActivity PayChargeActivity1)
    {
        return PayChargeActivity1.e;
    }

    static View b(PayChargeActivity PayChargeActivity1)
    {
        return PayChargeActivity1.b;
    }

    static void c(PayChargeActivity PayChargeActivity1)
    {
        if( PayChargeActivity1.e != null && PayChargeActivity1.e.size() != 0 )
        {
            Date Date3;
            Date[] Date_1darray4;
            int int5;
            Date[] Date_1darray6;
            int int7;
            Date[] Date_1darray8;
            int int9;
            Date[] Date_1darray10;
            int int11;
            Date[] Date_1darray12;

            PayChargeActivity1.f.clear();
            PayChargeActivity1.f.addAll( (Collection) PayChargeActivity1.e );
            Date3 = new Date();
            Date_1darray4 = new Date[2];
            Date_1darray4[0] = new Date( Date3.getTime() - 518400000L );
            Date_1darray4[1] = Date3;
            int5 = PayChargeActivity1.a( 0, "\u4E00\u5468\u5185", Date_1darray4 );
            Date_1darray6 = new Date[2];
            Date_1darray6[0] = new Date( Date3.getTime() - 2505600000L );
            Date_1darray6[1] = new Date( Date3.getTime() - 604800000L );
            int7 = PayChargeActivity1.a( int5, "\u4E00\u5468\u524D", Date_1darray6 );
            Date_1darray8 = new Date[2];
            Date_1darray8[0] = new Date( Date3.getTime() - 15465600000L );
            Date_1darray8[1] = new Date( Date3.getTime() - 2592000000L );
            int9 = PayChargeActivity1.a( int7, "\u4E00\u6708\u524D", Date_1darray8 );
            Date_1darray10 = new Date[2];
            Date_1darray10[0] = new Date( Date3.getTime() - 31449600000L );
            Date_1darray10[1] = new Date( Date3.getTime() - 15552000000L );
            int11 = PayChargeActivity1.a( int9, "\u534A\u5E74\u524D", Date_1darray10 );
            Date_1darray12 = new Date[2];
            Date_1darray12[0] = new Date( 0L );
            Date_1darray12[1] = new Date( Date3.getTime() - 31536000000L );
            PayChargeActivity1.a( int11, "\u4E00\u5E74\u524D", Date_1darray12 );
        }
    }

    static List d(PayChargeActivity PayChargeActivity1)
    {
        return PayChargeActivity1.f;
    }

    static M e(PayChargeActivity PayChargeActivity1)
    {
        return PayChargeActivity1.a;
    }

    static ScrollLoadListView f(PayChargeActivity PayChargeActivity1)
    {
        return PayChargeActivity1.c;
    }

    static av g(PayChargeActivity PayChargeActivity1)
    {
        return PayChargeActivity1.h;
    }

    static String h(PayChargeActivity PayChargeActivity1)
    {
        return PayChargeActivity1.g;
    }

    protected final void b()
    {
        O O1;
        String[] String_1darray2;

        i();
        O1 = new O( this, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = g;
        O1.b( String_1darray2 );
    }

    public void onCreate(Bundle Bundle1)
    {
        TextView TextView2;

        super.onCreate( Bundle1 );
        a( 2130903386 );
        TextView2 = (TextView) findViewById( 2131493104 );
        TextView2.setGravity( 1 );
        TextView2.setText( (CharSequence) "\u60A8\u8FD8\u6CA1\u6709\u5145\u503C\u8BB0\u5F55" );
        TextView2.setCompoundDrawablesWithIntrinsicBounds( null, getResources().getDrawable( 2130838029 ), null, null );
        TextView2.setTextSize( 2, getResources().getDimension( 2131099793 ) / 3.0F );
        TextView2.setCompoundDrawablePadding( (int) getResources().getDimension( 2131099721 ) );
        b( getIntent().getStringExtra( "title_key" ) );
        g = getIntent().getStringExtra( "token_key" );
        b = LayoutInflater.from( (Context) this ).inflate( 2130903325, null );
        b.setVisibility( 8 );
        c = (ScrollLoadListView) findViewById( 2131493981 );
        c.addFooterView( b );
        c.setDividerHeight( 0 );
        c.setOnItemClickListener( (AdapterView$OnItemClickListener) new K( this ) );
        a = new M( this, e );
        c.setAdapter( (ListAdapter) a );
        b();
    }
}
