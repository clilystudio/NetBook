
package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Book;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.Tweet$Post;
import com.clilystudio.netbook.model.Tweet$VoteOption;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.OtherUserActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.ui.post.TweetDetailActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.PostFlag;
import com.clilystudio.netbook.widget.RatingView;
import java.util.Date;

public class G extends u {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    public G(Activity Activity1, boolean boolean2, boolean boolean3)
    {
        TypedArray TypedArray4;

        a = (Context) Activity1;
        c = boolean2;
        b = boolean3;
        TypedArray4 = a.getTheme().obtainStyledAttributes( new int[] { 2130772004, 2130772003 } );
        TypedArray4.getResourceId( 0, 2130838193 );
        TypedArray4.getResourceId( 1, 2130838191 );
        TypedArray4.recycle();
        f = com.clilystudio.netbook.hpay100.a.a.r( a, "community_user_gender_icon_toggle" );
    }

    private Context a;
    private boolean b;
    private boolean c;
    private View d;
    private Tweet e;
    private boolean f = false;

    private int a(Tweet Tweet1)
    {
        for( ;; )
        {
            String String2 = Tweet1.getType();
            int int3 = -1;

            switch( String2.hashCode() )
            {
                case 80236113:
                    if( String2.equals( "TWEET" ) )
                    {
                        int3 = 0;
                        break;
                    }
                    break;
                case 1816505342:
                    if( String2.equals( "RETWEET" ) )
                    {
                        int3 = 1;
                        break;
                    }
                    break;
                case -1881019560:
                    if( String2.equals( "REVIEW" ) )
                    {
                        int3 = 2;
                        break;
                    }
                    break;
                case -14395178:
                    if( String2.equals( "ARTICLE" ) )
                    {
                        int3 = 3;
                        break;
                    }
                    break;
                default:
                    break;
            }
            switch( int3 )
            {
                case 0:
                default:
                    return 0;
                case 1:
                    Tweet1 = Tweet1.getRefTweet();
                    continue;
                case 2:
                    return 1;
                case 3:
                    return 2;
            }
        }
    }

    static Context a(G G1)
    {
        return G1.a;
    }

    private View a(View View1, int int2, ViewGroup ViewGroup3, int int4)
    {
        if( View1 == null )
        {
            switch( int2 )
            {
                default:
                    break;
                case 0:
                    View View7 = LayoutInflater.from( ViewGroup3.getContext() ).inflate( 2130903313, ViewGroup3, false );

                    View7.setTag( new R( this, View7 ) );
                    return View7;
                case 1:
                    View View6 = LayoutInflater.from( ViewGroup3.getContext() ).inflate( 2130903315, ViewGroup3, false );

                    View6.findViewById( 2131493348 ).setVisibility( 0 );
                    View6.setTag( new R( this, View6 ) );
                    return View6;
                case 2:
                    View View5 = LayoutInflater.from( ViewGroup3.getContext() ).inflate( 2130903314, ViewGroup3, false );

                    View5.setTag( new R( this, View5 ) );
                    return View5;
                case 3:
                    return a( View1, a( ((Tweet) getItem( int4 )).getRefTweet() ), ViewGroup3, int4 );
            }
        }
        return View1;
    }

    static View a(G G1, View View2)
    {
        G1.d = View2;
        return View2;
    }

    private void a(int int1, View View2, Tweet Tweet3)
    {
        switch( int1 )
        {
            default:
                return;
            case 0:
                View2.setOnClickListener( (View$OnClickListener) new H( this, Tweet3 ) );
                return;
            case 2:
                View2.setOnClickListener( (View$OnClickListener) new I( this, Tweet3 ) );
                return;
            case 1:
                View2.setOnClickListener( (View$OnClickListener) new J( this, Tweet3 ) );
                return;
        }
    }

    private static void a(View View1, int int2, int int3, int int4, int int5)
    {
        ((View) View1.getParent()).post( (Runnable) new Q( View1, 15, 15, 15, 15 ) );
    }

    static void a(G G1, R R2, User User3)
    {
        Account Account4 = am.e();

        if( Account4 == null )
            G1.a.startActivity( AuthLoginActivity.a( G1.a ) );
        else if( G1.b && User3 != null )
        {
            if( a( Account4, User3 ) )
            {
                V V8;
                String[] String_1darray9;

                G1.b( R2 );
                V8 = new V( G1, (byte) 0 );
                String_1darray9 = new String[2];
                String_1darray9[0] = Account4.getToken();
                String_1darray9[1] = User3.getId();
                V8.execute( String_1darray9 );
            }
            else
            {
                T T5;
                String[] String_1darray6;

                G1.a( R2 );
                T5 = new T( G1, (byte) 0 );
                String_1darray6 = new String[2];
                String_1darray6[0] = Account4.getToken();
                String_1darray6[1] = User3.getId();
                T5.execute( String_1darray6 );
            }
            return;
        }
    }

    static void a(G G1, Tweet Tweet2)
    {
        if( Tweet2.getPost() == null )
            G1.a.startActivity( TweetDetailActivity.a( G1.a, Tweet2.get_id(), "TWEET" ) );
        else
            G1.a.startActivity( PostDetailActivity.a( G1.a, Tweet2.getPost().getId(), Tweet2.getPost().getBlock() ) );
    }

    static void a(G G1, Tweet Tweet2, R R3)
    {
        Tweet Tweet4;
        int int5;

        if( Tweet2.isRetween() )
            Tweet4 = Tweet2.getRefTweet();
        else
            Tweet4 = Tweet2;
        int5 = 1 + Tweet4.getRetweeted();
        Tweet2.setRetweeted( int5 );
        R3.g.setText( (CharSequence) new StringBuilder().append( int5 ).toString() );
    }

    private void a(R R1)
    {
        Drawable Drawable2;

        R1.h.setText( (CharSequence) "\u5DF2\u5173\u6CE8" );
        R1.h.setTextColor( -5822976 );
        R1.h.setTextSize( 10.0F );
        Drawable2 = a.getResources().getDrawable( 2130837887 );
        Drawable2.setBounds( 0, 0, 9 * Drawable2.getMinimumWidth() / 16, 9 * Drawable2.getMinimumHeight() / 16 );
        R1.h.setCompoundDrawables( Drawable2, null, null, null );
    }

    private void a(R R1, Tweet Tweet2, User User3, boolean boolean4)
    {
        a( (View) R1.h, 15, 15, 15, 15 );
        R1.h.setVisibility( 0 );
        if( boolean4 )
        {
            Drawable Drawable6;

            R1.h.setOnClickListener( (View$OnClickListener) new N( this, R1, Tweet2 ) );
            R1.h.setText( (CharSequence) "\u5220\u9664" );
            Drawable6 = R1.h.getResources().getDrawable( 2130837942 );
            Drawable6.setBounds( 0, 0, Drawable6.getMinimumWidth(), Drawable6.getMinimumHeight() );
            R1.h.setCompoundDrawables( Drawable6, null, null, null );
            R1.h.setTextColor( -5592406 );
        }
        else if( b )
        {
            Account Account5 = am.e();

            if( Account5 != null )
            {
                if( a( Account5, User3 ) )
                    a( R1 );
                else
                    b( R1 );
            }
            R1.h.setOnClickListener( (View$OnClickListener) new M( this, R1, User3 ) );
        }
        else
            R1.h.setVisibility( 4 );
    }

    private void a(Tweet Tweet1, R R2)
    {
        User User3;
        Object Object4;
        Object Object5;
        TextView TextView8;
        Intent Intent9;

        if( Tweet1.isRetween() )
            User3 = Tweet1.getFrom();
        else
            User3 = Tweet1.getUser();
        if( !b && (Tweet1.isHot() || Tweet1.isRetween() && Tweet1.getRefTweet().isHot()) )
        {
            R2.k.setVisibility( 0 );
            R2.k.a( "hot" );
            R2.e.setVisibility( 8 );
        }
        else
        {
            R2.k.setVisibility( 8 );
            R2.e.setVisibility( 0 );
        }
        if( Tweet1.isRetween() )
        {
            String String17;

            R2.l.setVisibility( 0 );
            String17 = Tweet1.getUser().getNickname();
            if( Tweet1.getNames() != null && Tweet1.names.length > 0 )
            {
                String String18 = "";
                int int19;

                for( int19 = 0; int19 < 3 && int19 < Tweet1.getNames().length; ++int19 )
                    String18 = new StringBuilder().append( String18 ).append( Tweet1.getNames()[int19] ).append( " , " ).toString();
                String17 = String18.substring( 0, -2 + String18.length() );
                if( Tweet1.getNames().length > 3 )
                    String17 = new StringBuilder().append( String17 ).append( " \u7B49" ).append( Tweet1.getNames().length ).append( "\u4EBA" ).toString();
            }
            R2.l.setText( (CharSequence) new StringBuilder( " " ).append( String17 ).append( " \u8F6C\u53D1\u4E86\u8FD9\u6761\u52A8\u6001" ).toString() );
            R2.e.setText( (CharSequence) t.e( Tweet1.getCreated() ) );
            Tweet1.getRefTweet().setUser( Tweet1.getFrom() );
            Tweet1 = Tweet1.getRefTweet();
        }
        else
        {
            R2.l.setVisibility( 8 );
            R2.e.setText( (CharSequence) t.e( Tweet1.getCreated() ) );
        }
        R2.a.setImageUrl( User3.getFullAvatar() );
        if( a( Tweet1 ) != 0 )
            R2.i.setText( (CharSequence) Tweet1.getTitle() );
        R2.b.setText( (CharSequence) User3.getNickname() );
        R2.c.setText( (CharSequence) Tweet1.getContent() );
        R2.d.setText( (CharSequence) new StringBuilder( "lv." ).append( User3.getLv() ).toString() );
        Object4 = new StringBuilder().append( Tweet1.getCommented() ).toString();
        Object5 = new StringBuilder().append( Tweet1.getRetweeted() ).toString();
        if( Tweet1.getVotes() == null || Tweet1.getVotes().length == 0 )
        {
            Drawable Drawable6;
            TextView TextView7;

            if( Tweet1.getCommented() > 9999 )
                Object4 = com.clilystudio.netbook.hpay100.a.a.i( Tweet1.getCommented() );
            if( Tweet1.getRetweeted() > 9999 )
                Object5 = com.clilystudio.netbook.hpay100.a.a.i( Tweet1.getRetweeted() );
            Drawable6 = a.getResources().getDrawable( 2130837902 );
            Drawable6.setBounds( 0, 0, Drawable6.getMinimumWidth(), Drawable6.getMinimumHeight() );
            R2.f.setCompoundDrawables( Drawable6, null, null, null );
            TextView7 = R2.f;
            if( Tweet1.getCommented() == 0 )
                Object4 = "\u8BC4\u8BBA";
            TextView7.setText( (CharSequence) Object4 );
        }
        else
        {
            Drawable Drawable14 = a.getResources().getDrawable( 2130837971 );
            TextView TextView15;
            Object Object16;

            Drawable14.setBounds( 0, 0, Drawable14.getMinimumWidth(), Drawable14.getMinimumHeight() );
            R2.f.setCompoundDrawables( Drawable14, null, null, null );
            TextView15 = R2.f;
            if( Tweet1.getVoteCount() == 0 )
                Object16 = "\u8BC4\u8BBA";
            else
                Object16 = new StringBuilder().append( Tweet1.getVoteCount() ).toString();
            TextView15.setText( (CharSequence) Object16 );
        }
        TextView8 = R2.g;
        if( Tweet1.getRetweeted() == 0 )
            Object5 = "\u8F6C\u53D1";
        TextView8.setText( (CharSequence) Object5 );
        Intent9 = OtherUserActivity.a( a );
        Intent9.putExtra( "USER_ID", Tweet1.getUser().getId() );
        Intent9.putExtra( "USER_NAME", Tweet1.getUser().getNickname() );
        R2.a.setOnClickListener( (View$OnClickListener) new K( this, Intent9 ) );
        if( Tweet1 != null && 1 == a( Tweet1 ) )
        {
            View View12;
            int int13;

            R2.m.setText( (CharSequence) Tweet1.getBook().getTitle() );
            R2.n.setValue( Tweet1.getScore() );
            R2.o.setImageUrl( Tweet1.getBook().getCover() );
            View12 = R2.j;
            if( Tweet1.getBook() == null )
                int13 = 8;
            else
                int13 = 0;
            View12.setVisibility( int13 );
        }
        if( f )
        {
            if( User3.getGenderFlag() == 0 )
            {
                R2.p.setImageLevel( 2 );
                R2.p.setVisibility( 0 );
            }
            else if( User3.getGenderFlag() == 1 )
            {
                R2.p.setImageLevel( 3 );
                R2.p.setVisibility( 0 );
            }
            else
            {
                R2.p.setImageLevel( 4 );
                R2.p.setVisibility( 0 );
            }
        }
        else if( User3.isOfficial() )
        {
            R2.p.setImageLevel( 0 );
            R2.p.setVisibility( 0 );
        }
        else if( User3.isDoyan() )
        {
            R2.p.setImageLevel( 1 );
            R2.p.setVisibility( 0 );
        }
        else
            R2.p.setVisibility( 8 );
    }

    public static boolean a(Account Account1, Tweet Tweet2)
    {
        if( !a( Tweet2, Account1 ) )
        {
            if( Tweet2.isRetween() )
                Tweet2 = Tweet2.getRefTweet();
            if( !a( Account1, Tweet2.get_id() ) )
                return true;
        }
        return false;
    }

    private static boolean a(Account Account1, User User2)
    {
        return FollowRecord.isFollowed( Account1.getUser().getId(), User2.getId() );
    }

    public static boolean a(Account Account1, String String2)
    {
        return RetweenRecord.isRetweened( Account1.getUser().getId(), String2 );
    }

    public static boolean a(Tweet Tweet1, Account Account2)
    {
        return Tweet1.getUser().getId().equals( Account2.getUser().getId() );
    }

    static View b(G G1)
    {
        return G1.d;
    }

    static void b(G G1, Tweet Tweet2)
    {
        if( Tweet2.getPost() == null )
            G1.a.startActivity( TweetDetailActivity.a( G1.a, Tweet2.get_id(), "ARTICLE" ) );
        else
            G1.a.startActivity( PostDetailActivity.a( G1.a, Tweet2.getPost().getId(), Tweet2.getPost().getBlock() ) );
    }

    private void b(R R1)
    {
        Drawable Drawable2;

        R1.h.setText( (CharSequence) "\u5173\u6CE8" );
        R1.h.setTextColor( a.getResources().getColor( 2131427543 ) );
        Drawable2 = a.getResources().getDrawable( 2130837803 );
        Drawable2.setBounds( 0, 0, Drawable2.getMinimumWidth(), Drawable2.getMinimumHeight() );
        R1.h.setTextSize( 10.0F );
        R1.h.setCompoundDrawables( Drawable2, null, null, null );
    }

    static Tweet c(G G1)
    {
        return G1.e;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void c(G G1, Tweet Tweet2)
    {
    }

    static Tweet d(G G1, Tweet Tweet2)
    {
        G1.e = Tweet2;
        return Tweet2;
    }

    public int getItemViewType(int int1)
    {
        return a( (Tweet) getItem( int1 ) );
    }

    public View getView(int int1, View View2, ViewGroup ViewGroup3)
    {
        int int4 = getItemViewType( int1 );
        View View5 = a( View2, int4, ViewGroup3, int1 );
        Tweet Tweet6 = (Tweet) getItem( int1 );
        R R7 = (R) View5.getTag();

        switch( int4 )
        {
            case 0:
                a( Tweet6, R7 );
                a( int4, View5, Tweet6 );
                break;
            case 2:
                R7.i.setText( (CharSequence) Tweet6.getTitle() );
                a( int4, View5, Tweet6 );
                a( Tweet6, R7 );
                break;
            case 1:
                R7.i.setText( (CharSequence) Tweet6.getTitle() );
                a( Tweet6, R7 );
                a( int4, View5, Tweet6 );
                break;
            case 3:
                a( Tweet6, R7 );
                a( a( Tweet6 ), View5, Tweet6.getRefTweet() );
                break;
            default:
                break;
        }
        if( c )
            a( R7, Tweet6, null, true );
        else
        {
            a( R7, Tweet6, Tweet6.getUser(), false );
            a( (View) R7.g, 15, 15, 15, 15 );
            R7.g.setOnClickListener( (View$OnClickListener) new L( this, Tweet6, R7 ) );
        }
        return View5;
    }

    public int getViewTypeCount()
    {
        return 3;
    }
}
