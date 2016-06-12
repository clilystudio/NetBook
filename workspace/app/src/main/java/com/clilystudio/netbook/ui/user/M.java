
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.model.PayChargeRecord$Order;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

final class M extends BaseAdapter {

    public M(PayChargeActivity PayChargeActivity1, List List2)
    {
        b = PayChargeActivity1;
        a = List2;
    }

    List a;
    private PayChargeActivity b;

    private static String a(Date Date1, String String2)
    {
        if( Date1 == null )
            return "";
        else
            return new SimpleDateFormat( String2 ).format( Date1 );
    }

    public final int getCount()
    {
        return a.size();
    }

    public final Object getItem(int int1)
    {
        return a.get( int1 );
    }

    public final long getItemId(int int1)
    {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3)
    {
        PayChargeRecord$Order Order4 = (PayChargeRecord$Order) a.get( int1 );
        Object Object6;

        if( View2 == null )
        {
            Object Object5 = new N( this );

            View2 = LayoutInflater.from( (Context) b ).inflate( 2130903294, null );
            ((N) Object5).a = View2.findViewById( 2131493721 );
            ((N) Object5).b = (ImageView) View2.findViewById( 2131493722 );
            ((N) Object5).c = (TextView) View2.findViewById( 2131493725 );
            ((N) Object5).e = (TextView) View2.findViewById( 2131493724 );
            ((N) Object5).f = (TextView) View2.findViewById( 2131493723 );
            ((N) Object5).d = (TextView) View2.findViewById( 2131493726 );
            ((N) Object5).g = (TextView) View2.findViewById( 2131493720 );
            View2.setTag( Object5 );
            Object6 = Object5;
        }
        else
            Object6 = (N) View2.getTag();
        if( Order4.getPayType().equals( "time_flag" ) )
        {
            ((N) Object6).a.setVisibility( 8 );
            ((N) Object6).g.setVisibility( 0 );
            ((N) Object6).g.setText( (CharSequence) Order4.getTimeflag() );
        }
        else
        {
            TextView TextView7;
            StringBuilder StringBuilder8;
            float float9;
            int int10;
            String String11;
            int int12;

            ((N) Object6).a.setVisibility( 0 );
            ((N) Object6).g.setVisibility( 8 );
            ((N) Object6).e.setText( (CharSequence) Order4.getChargeString() );
            TextView7 = ((N) Object6).f;
            StringBuilder8 = new StringBuilder();
            float9 = Order4.getPrice();
            TextView7.setText( (CharSequence) StringBuilder8.append( new DecimalFormat( "0.00" ).format( (double) float9 ) ).append( "\u5143" ).toString() );
            int10 = 2130838030;
            String11 = Order4.getPayType();
label_138:
            {
                switch( String11.hashCode() )
                {
                    case -1414960566:
                        if( String11.equals( "alipay" ) )
                        {
                            int12 = 0;
                            break label_138;
                        }
                        break;
                    case 1825929990:
                        if( String11.equals( "weixinpay" ) )
                        {
                            int12 = 1;
                            break label_138;
                        }
                        break;
                    case -199281814:
                        if( String11.equals( "youyifupay" ) )
                        {
                            int12 = 2;
                            break label_138;
                        }
                        break;
                    default:
                        break;
                }
                int12 = -1;
            }
            switch( int12 )
            {
                case 0:
                    int10 = 2130838031;
                    break;
                case 1:
                    int10 = 2130838045;
                    break;
                case 2:
                    int10 = 2130838040;
                    break;
                default:
                    break;
            }
            ((N) Object6).c.setText( (CharSequence) a( Order4.getCreated(), "MM-dd" ) );
            ((N) Object6).d.setText( (CharSequence) a( Order4.getCreated(), "mm:ss" ) );
            ((N) Object6).b.setImageResource( int10 );
        }
        return View2;
    }
}
