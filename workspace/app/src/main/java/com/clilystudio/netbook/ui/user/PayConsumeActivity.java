
package com.clilystudio.netbook.ui.user;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView$OnScrollListener;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.clilystudio.netbook.model.PayConsumeRecord$Order;
import com.clilystudio.netbook.model.PayConsumeRecord$PayType;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PayConsumeActivity extends BaseLoadingActivity {

    private S a;
    private View b;
    private RelativeLayout c;
    private ScrollLoadListView e;
    private String g;
    private List f = new ArrayList();
    private av h = new Q( this );
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3)
    {
    }

    static ScrollLoadListView a(PayConsumeActivity PayConsumeActivity1)
    {
        return PayConsumeActivity1.e;
    }

    static void a(PayConsumeActivity PayConsumeActivity1, PayConsumeRecord$Order Order2)
    {
        ClipboardManager ClipboardManager3 = (ClipboardManager) PayConsumeActivity1.getSystemService( "clipboard" );
        StringBuffer StringBuffer4 = new StringBuffer();

        StringBuffer4.append( new StringBuilder().append( Order2.getBookName() ).append( ", " ).toString() );
        switch( R.a[Order2.getPayType().ordinal()] )
        {
            case 1:
                String[] String_1darray13 = Order2.getTitles();
                int int14 = String_1darray13.length;
                int int15;

                for( int15 = 0; int15 < int14; ++int15 )
                {
                    String String16 = String_1darray13[int15];

                    StringBuffer4.append( new StringBuilder().append( String16 ).append( ", " ).toString() );
                }
                break;
            case 3:
            case 2:
                StringBuffer4.append( new StringBuilder().append( Order2.getChapterTitle() ).append( ", " ).toString() );
                break;
            default:
                break;
        }
        StringBuffer4.append( new StringBuilder().append( Order2.getUseCurrency() ).append( "\u8FFD\u4E66\u5E01" ).toString() );
        if( Order2.getUseVoucher() > 0 )
            StringBuffer4.append( new StringBuilder( "+" ).append( Order2.getUseVoucher() ).append( "\u8FFD\u4E66\u5238, " ).toString() );
        else
            StringBuffer4.append( ", " );
        StringBuffer4.append( new StringBuilder().append( t.d( Order2.getCreated() ) ).append( ", " ).toString() );
        StringBuffer4.append( new StringBuilder().append( Order2.getPayTypeString() ).append( ", " ).toString() );
        StringBuffer4.append( new StringBuilder( "\u8BA2\u5355\u53F7 " ).append( Order2.get_id() ).toString() );
        ClipboardManager3.setPrimaryClip( ClipData.newPlainText( (CharSequence) "simple text", (CharSequence) StringBuffer4.toString() ) );
    }

    static RelativeLayout b(PayConsumeActivity PayConsumeActivity1)
    {
        return PayConsumeActivity1.c;
    }

    static List c(PayConsumeActivity PayConsumeActivity1)
    {
        return PayConsumeActivity1.f;
    }

    static View d(PayConsumeActivity PayConsumeActivity1)
    {
        return PayConsumeActivity1.b;
    }

    static S e(PayConsumeActivity PayConsumeActivity1)
    {
        return PayConsumeActivity1.a;
    }

    static av f(PayConsumeActivity PayConsumeActivity1)
    {
        return PayConsumeActivity1.h;
    }

    static String g(PayConsumeActivity PayConsumeActivity1)
    {
        return PayConsumeActivity1.g;
    }

    protected final void b()
    {
        Z Z1;
        String[] String_1darray2;

        i();
        Z1 = new Z( this, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = g;
        Z1.b( String_1darray2 );
    }

    public void onCreate(Bundle Bundle1)
    {
        TextView TextView2;
        LayoutInflater LayoutInflater3;

        super.onCreate( Bundle1 );
        a( 2130903386 );
        c = (RelativeLayout) findViewById( 2131493136 );
        TextView2 = (TextView) findViewById( 2131493104 );
        TextView2.setGravity( 1 );
        TextView2.setText( (CharSequence) "\u60A8\u8FD8\u6CA1\u6709\u6D88\u8D39\u8BB0\u5F55" );
        TextView2.setCompoundDrawablesWithIntrinsicBounds( null, getResources().getDrawable( 2130838029 ), null, null );
        TextView2.setTextSize( 2, getResources().getDimension( 2131099793 ) / 3.0F );
        TextView2.setCompoundDrawablePadding( (int) getResources().getDimension( 2131099721 ) );
        b( getIntent().getStringExtra( "title_key" ) );
        g = getIntent().getStringExtra( "token_key" );
        LayoutInflater3 = LayoutInflater.from( (Context) this );
        b = LayoutInflater3.inflate( 2130903325, null );
        b.setVisibility( 8 );
        e = (ScrollLoadListView) findViewById( 2131493981 );
        e.addFooterView( b );
        e.setDividerHeight( 0 );
        e.setOnScrollListener( (AbsListView$OnScrollListener) new P( this ) );
        a = new S( this, LayoutInflater3 );
        e.setAdapter( (ListAdapter) a );
        b();
    }
}
