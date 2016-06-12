
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.clilystudio.netbook.db.PostUsefulRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.model.ReviewHelpful;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.post.AbsPostActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

public class PostUsefulView extends LinearLayout implements View$OnClickListener {

    public PostUsefulView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        if( !( Context1 instanceof AbsPostActivity ) )
            throw new IllegalStateException( "PostUsefulView must be used at post detail" );
        d = (Activity) (AbsPostActivity) Context1;
    }

    private Review a;
    private View b;
    private View c;
    private Activity d;
    private boolean e;

    private void a(int int1, boolean boolean2)
    {
        int int7;
        TextView TextView8;
        int int9;
        int int10;
        TextView TextView11;

        if( int1 == 1 )
        {
            int int12 = a.getHelpful().getYes();
            TextView TextView13 = (TextView) findViewById( 2131493354 );
            TextView TextView14 = (TextView) findViewById( 2131493355 );
            int int15 = getResources().getColor( 2131427510 );

            int7 = 2130838115;
            TextView8 = TextView14;
            int9 = int15;
            int10 = int12;
            TextView11 = TextView13;
        }
        else
        {
            int int3 = a.getHelpful().getNo();
            TextView TextView4 = (TextView) findViewById( 2131493357 );
            TextView TextView5 = (TextView) findViewById( 2131493358 );
            int int6 = getResources().getColor( 2131427509 );

            int7 = 2130838113;
            TextView8 = TextView5;
            int9 = int6;
            int10 = int3;
            TextView11 = TextView4;
        }
        if( boolean2 )
            ++int10;
        TextView11.setText( (CharSequence) new StringBuilder().append( int10 ).toString() );
        TextView11.setTextColor( int9 );
        TextView8.setTextColor( int9 );
        TextView8.setCompoundDrawablesWithIntrinsicBounds( int7, 0, 0, 0 );
        b.setEnabled( false );
        c.setEnabled( false );
    }

    static void a(PostUsefulView PostUsefulView1, int int2)
    {
        Account Account3 = am.e();

        if( Account3 != null )
            PostUsefulRecord.create( Account3.getUser().getId(), PostUsefulView1.a.get_id(), int2 );
    }

    static void a(PostUsefulView PostUsefulView1, int int2, boolean boolean3)
    {
        PostUsefulView1.a( int2, true );
    }

    static boolean a(PostUsefulView PostUsefulView1)
    {
        return PostUsefulView1.e;
    }

    static Activity b(PostUsefulView PostUsefulView1)
    {
        return PostUsefulView1.d;
    }

    public void onClick(View View1)
    {
        Account Account2 = am.e();

        if( Account2 == null )
        {
            com.clilystudio.netbook.util.e.a( d, "\u8BF7\u767B\u5F55\u540E\u518D\u64CD\u4F5C" );
            d.startActivity( AuthLoginActivity.a( (Context) d ) );
            Account2 = null;
        }
        switch( View1.getId() )
        {
            case 489:
                if( Account2 != null )
                {
                    as as6;
                    String[] String_1darray7;

                    e = true;
                    as6 = new as( this, (byte) 0 );
                    String_1darray7 = new String[3];
                    String_1darray7[0] = Account2.getToken();
                    String_1darray7[1] = a.get_id();
                    String_1darray7[2] = "yes";
                    as6.b( String_1darray7 );
                    return;
                }
                break;
            case 492:
                if( Account2 != null )
                {
                    as as3;
                    String[] String_1darray4;

                    e = false;
                    as3 = new as( this, (byte) 0 );
                    String_1darray4 = new String[3];
                    String_1darray4[0] = Account2.getToken();
                    String_1darray4[1] = a.get_id();
                    String_1darray4[2] = "no";
                    as3.b( String_1darray4 );
                    return;
                }
                break;
            case 490:
            case 491:
            default:
                break;
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        b = findViewById( 2131493353 );
        c = findViewById( 2131493356 );
        b.setOnClickListener( this );
        c.setOnClickListener( this );
    }

    public void setPost(Review Review1)
    {
        Account Account2;

        a = Review1;
        ((TextView) findViewById( 2131493354 )).setText( (CharSequence) new StringBuilder().append( a.getHelpful().getYes() ).toString() );
        ((TextView) findViewById( 2131493357 )).setText( (CharSequence) new StringBuilder().append( a.getHelpful().getNo() ).toString() );
        Account2 = am.e();
        if( Account2 != null )
        {
            PostUsefulRecord PostUsefulRecord3 = PostUsefulRecord.get( Account2.getUser().getId(), a.get_id() );

            if( PostUsefulRecord3 != null && PostUsefulRecord3.type != 0 )
                a( PostUsefulRecord3.type, false );
        }
    }
}
