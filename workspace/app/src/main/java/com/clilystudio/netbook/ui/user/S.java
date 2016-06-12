
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.clilystudio.netbook.model.PayConsumeRecord$Order;
import com.clilystudio.netbook.model.PayConsumeRecord$PayType;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PayRecordCollapseItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

final class S extends BaseAdapter {

    public S(PayConsumeActivity PayConsumeActivity1, LayoutInflater LayoutInflater2)
    {
        a = PayConsumeActivity1;
        b = LayoutInflater2;
        c = (List) new ArrayList();
        d = new boolean[0];
    }

    PayConsumeActivity a;     // final access specifier removed
    private LayoutInflater b;
    private List c;
    private boolean[] d;

    static void a(S S1, PayConsumeRecord$Order Order2, View View3, View View4, int int5)
    {
        View View6 = S1.b.inflate( 2130903347, null );
        PopupWindow PopupWindow7 = new PopupWindow( View6, S1.a.getResources().getDimensionPixelSize( 2131099902 ), -2 );
        View View8;
        View View9;
        View View10;
        TextView TextView11;
        Object Object12;

        PopupWindow7.setFocusable( true );
        PopupWindow7.setOutsideTouchable( true );
        PopupWindow7.setBackgroundDrawable( (Drawable) new ColorDrawable( 0 ) );
        PopupWindow7.getContentView().setFocusableInTouchMode( true );
        PopupWindow7.getContentView().setFocusable( true );
        View8 = View6.findViewById( 2131493835 );
        View9 = View6.findViewById( 2131493836 );
        View10 = View6.findViewById( 2131493837 );
        TextView11 = (TextView) View10;
        if( S1.d[int5] )
            Object12 = "\u6536\u8D77\u8BE6\u60C5";
        else
            Object12 = "\u5C55\u5F00\u8BE6\u60C5";
        TextView11.setText( (CharSequence) Object12 );
        View8.setOnClickListener( (View$OnClickListener) new V( S1, Order2, PopupWindow7 ) );
        View10.setOnClickListener( (View$OnClickListener) new W( S1, int5, PopupWindow7 ) );
        if( Order2.getPayType() == PayConsumeRecord$PayType.MULTIPLE_CHAPTERS )
        {
            View9.setVisibility( 0 );
            View10.setVisibility( 0 );
        }
        else
        {
            View9.setVisibility( 8 );
            View10.setVisibility( 8 );
        }
        if( com.clilystudio.netbook.hpay100.a.a.i() )
            PopupWindow7.showAsDropDown( View3, com.clilystudio.netbook.hpay100.a.a.a( (Context) S1.a, 0.0F ), 0, 53 );
        else
            PopupWindow7.showAsDropDown( View3, com.clilystudio.netbook.hpay100.a.a.a( (Context) S1.a, 160.0F ), 0 );
    }

    static boolean[] a(S S1)
    {
        return S1.d;
    }

    public final void a(List List1)
    {
        c.clear();
        c.addAll( (Collection) List1 );
        d = new boolean[c.size()];
        notifyDataSetChanged();
    }

    public final int getCount()
    {
        return c.size();
    }

    public final Object getItem(int int1)
    {
        return c.get( int1 );
    }

    public final long getItemId(int int1)
    {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3)
    {
        Object Object4;
        View View5;
        PayConsumeRecord$Order Order6;
        PayConsumeRecord$PayType PayType7;
        Object Object8;
        ImageView ImageView9;

        if( View2 == null )
        {
            View5 = b.inflate( 2130903249, ViewGroup3, false );
            Object4 = new Y( this );
            ((Y) Object4).a = (TextView) View5.findViewById( 2131493639 );
            ((Y) Object4).b = (TextView) View5.findViewById( 2131493640 );
            ((Y) Object4).c = (TextView) View5.findViewById( 2131493641 );
            ((Y) Object4).d = (TextView) View5.findViewById( 2131493642 );
            ((Y) Object4).e = (TextView) View5.findViewById( 2131493644 );
            ((Y) Object4).f = (TextView) View5.findViewById( 2131493646 );
            ((Y) Object4).g = View5.findViewById( 2131493645 );
            ((Y) Object4).h = View5.findViewById( 2131493578 );
            ((Y) Object4).i = (ImageView) View5.findViewById( 2131493643 );
            View5.setTag( Object4 );
        }
        else
        {
            Object4 = (Y) View2.getTag();
            View5 = View2;
        }
        Order6 = (PayConsumeRecord$Order) c.get( int1 );
        PayType7 = Order6.getPayType();
        Object8 = Order6.getBookName();
        if( ((String) Object8).length() > 8 )
            Object8 = new StringBuilder().append( ((String) Object8).substring( 0, 8 ) ).append( "..." ).toString();
        ((Y) Object4).a.setText( (CharSequence) Object8 );
        ((Y) Object4).e.setText( (CharSequence) new StringBuilder().append( Order6.getUseCurrency() ).toString() );
        if( Order6.getUseVoucher() > 0 )
        {
            ((Y) Object4).g.setVisibility( 0 );
            ((Y) Object4).f.setText( (CharSequence) new StringBuilder().append( Order6.getUseVoucher() ).toString() );
        }
        else
            ((Y) Object4).g.setVisibility( 8 );
        ((Y) Object4).d.setText( (CharSequence) t.e( Order6.getCreated() ) );
        ((Y) Object4).c.setText( (CharSequence) Order6.getPayTypeString() );
        if( PayType7 == PayConsumeRecord$PayType.WHOLE_BOOK || PayType7 == PayConsumeRecord$PayType.MULTIPLE_CHAPTERS )
            ((Y) Object4).b.setVisibility( 8 );
        else
        {
            ((Y) Object4).b.setVisibility( 0 );
            if( PayType7 == PayConsumeRecord$PayType.VIP_SERVICE )
            {
                ((Y) Object4).a.setText( (CharSequence) Order6.getBookName() );
                ((Y) Object4).c.setText( (CharSequence) Order6.getChapterTitle() );
                ((Y) Object4).b.setText( (CharSequence) "" );
                ((Y) Object4).d.setText( (CharSequence) "" );
            }
            else
            {
                Object Object12;

                ((Y) Object4).a.setVisibility( 0 );
                Object12 = Order6.getChapterTitle();
                if( ((String) Object12).length() > 10 )
                    Object12 = new StringBuilder().append( ((String) Object12).substring( 0, 10 ) ).append( "..." ).toString();
                ((Y) Object4).b.setText( (CharSequence) Object12 );
            }
        }
        if( PayType7 == PayConsumeRecord$PayType.MULTIPLE_CHAPTERS )
        {
            View View10;
            int int11;

            ((PayRecordCollapseItem) View5).a( Order6.getTitles(), int1 );
            View10 = ((Y) Object4).h;
            if( d[int1] )
                int11 = 0;
            else
                int11 = 8;
            View10.setVisibility( int11 );
        }
        else
            ((Y) Object4).h.setVisibility( 8 );
        ImageView9 = ((Y) Object4).i;
        ImageView9.setOnClickListener( (View$OnClickListener) new T( this, int1, Order6, ImageView9, View5 ) );
        return View5;
    }
}
