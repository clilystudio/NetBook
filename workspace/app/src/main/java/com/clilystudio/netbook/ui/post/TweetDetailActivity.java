
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.sharesdk.framework.PlatformActionListener;
import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.Tweet$VoteOption;
import com.clilystudio.netbook.model.TweetResult;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.LinkifyTextView;
import com.clilystudio.netbook.widget.PostAgreeView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.SendView;
import com.clilystudio.netbook.widget.av;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

public class TweetDetailActivity extends AbsPostActivity {

    private com.clilystudio.netbook.adapter.z f;
    private dy h;
    private View i;
    private View j;
    private PostAgreeView k;
    private TextView l;
    private TextView r;
    private Account s;
    private TweetResult t;
    private String u;
    private SendView v;
    private int w;
    private String x;
    private List g = new ArrayList();
    private View[] m = new View[7];
    private ImageView[] n = new ImageView[7];
    private ProgressBar[] o = new ProgressBar[7];
    private TextView[] p = new TextView[7];
    private TextView[] q = new TextView[7];
    private boolean y = false;
    private View$OnClickListener z = new dt( this );
    private av A = new dv( this );

    static int a(TweetDetailActivity TweetDetailActivity1, int int2)
    {
        TweetDetailActivity1.w = int2;
        return int2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3)
    {
    }

    static TweetResult a(TweetDetailActivity TweetDetailActivity1, TweetResult TweetResult2)
    {
        TweetDetailActivity1.t = TweetResult2;
        return TweetResult2;
    }

    static String a(TweetDetailActivity TweetDetailActivity1, String String2)
    {
        TweetDetailActivity1.x = String2;
        return String2;
    }

    private void a(int int1, boolean boolean2)
    {
        int int3 = t.getTweet().getVoteCount();
        Tweet$VoteOption[] VoteOption_1darray4;
        int int5;
        int[] int_1darray6;
        float[] float_1darray7;
        int int8;
        int int9;

        if( !boolean2 )
            ++int3;
        r.setText( (CharSequence) new StringBuilder( "\u5171" ).append( int3 ).append( "\u4EBA\u6295\u7968" ).toString() );
        VoteOption_1darray4 = t.getTweet().getVotes();
        int5 = VoteOption_1darray4.length;
        int_1darray6 = new int[7];
        float_1darray7 = new float[7];
        for( int8 = 0; int8 < 7; ++int8 )
        {
            if( int8 < int5 )
                int_1darray6[int8] = VoteOption_1darray4[int8].count;
            else
                int_1darray6[int8] = 0;
        }
        if( !boolean2 )
            int_1darray6[int1] = 1 + int_1darray6[int1];
        for( int9 = 0; int9 < 7; ++int9 )
        {
            String String10;

            n[int9].setEnabled( false );
            m[int9].setVisibility( 0 );
            if( int9 == int1 )
                n[int9].setImageResource( 2130838056 );
            else
                n[int9].setImageResource( 2130838055 );
            if( int3 != 0 && int9 < int5 )
                float_1darray7[int9] = (float) int_1darray6[int9] / (float) int3;
            else
                float_1darray7[int9] = 0.0F;
            String10 = String.valueOf( (int) (0.5F + 100.0F * float_1darray7[int9]) );
            p[int9].setText( (CharSequence) new StringBuilder().append( int_1darray6[int9] ).append( " \u7968" ).toString() );
            q[int9].setText( (CharSequence) new StringBuilder().append( String10 ).append( "%" ).toString() );
            o[int9].setProgress( (int) (100.0F * float_1darray7[int9]) );
        }
    }

    static void a(TweetDetailActivity TweetDetailActivity1, int int2, boolean boolean3)
    {
        TweetDetailActivity1.a( int2, false );
    }

    static void a(TweetDetailActivity TweetDetailActivity1, Tweet$VoteOption[] VoteOption_1darray2)
    {
        if( VoteOption_1darray2 != null && VoteOption_1darray2.length != 0 )
        {
            int[] int_1darray3 = { 2131492940, 2131492941, 2131492942, 2131492943, 2131492944, 2131492945, 2131492946 };
            View[] View_1darray4 = new View[7];
            ImageView[] ImageView_1darray5 = new ImageView[7];
            TextView[] TextView_1darray6 = new TextView[7];
            int int7;
            Account Account8;
            int int9;
            List List10;
            int int11;

            for( int7 = 0; int7 < 7; ++int7 )
            {
                View_1darray4[int7] = TweetDetailActivity1.c.findViewById( int_1darray3[int7] );
                TweetDetailActivity1.m[int7] = View_1darray4[int7].findViewById( 2131493732 );
                TweetDetailActivity1.o[int7] = (ProgressBar) View_1darray4[int7].findViewById( 2131493734 );
                TweetDetailActivity1.p[int7] = (TextView) View_1darray4[int7].findViewById( 2131493733 );
                TweetDetailActivity1.q[int7] = (TextView) View_1darray4[int7].findViewById( 2131493735 );
                ImageView_1darray5[int7] = (ImageView) View_1darray4[int7].findViewById( 2131493728 );
                TweetDetailActivity1.n[int7] = (ImageView) View_1darray4[int7].findViewById( 2131493730 );
                TweetDetailActivity1.n[int7].setTag( Integer.valueOf( int7 ) );
                TweetDetailActivity1.n[int7].setOnClickListener( TweetDetailActivity1.z );
                TextView_1darray6[int7] = (TextView) View_1darray4[int7].findViewById( 2131493729 );
            }
            Account8 = am.e();
            if( Account8 != null )
            {
                List10 = VoteRecord.getVoteRecords( Account8.getUser().getId(), TweetDetailActivity1.t.getTweet().get_id() );
                if( List10 != null && !List10.isEmpty() )
                    int9 = 1;
                else
                    int9 = 0;
            }
            else
            {
                int9 = 0;
                List10 = null;
            }
            int11 = VoteOption_1darray2.length;
            TweetDetailActivity1.c.a( int11 );
            switch( int11 )
            {
                case 2:
                    int int17;

                    for( int17 = 0; int17 < int11; ++int17 )
                        TextView_1darray6[int17].setText( (CharSequence) VoteOption_1darray2[int17].content );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    break;
                case 3:
                    int int16;

                    for( int16 = 0; int16 < int11; ++int16 )
                        TextView_1darray6[int16].setText( (CharSequence) VoteOption_1darray2[int16].content );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    break;
                case 4:
                    int int15;

                    for( int15 = 0; int15 < int11; ++int15 )
                        TextView_1darray6[int15].setText( (CharSequence) VoteOption_1darray2[int15].content );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    ImageView_1darray5[3].setImageResource( 2130838051 );
                    break;
                case 5:
                    int int14;

                    for( int14 = 0; int14 < int11; ++int14 )
                        TextView_1darray6[int14].setText( (CharSequence) VoteOption_1darray2[int14].content );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    ImageView_1darray5[3].setImageResource( 2130838051 );
                    ImageView_1darray5[4].setImageResource( 2130838052 );
                    break;
                case 6:
                    int int13;

                    for( int13 = 0; int13 < int11; ++int13 )
                        TextView_1darray6[int13].setText( (CharSequence) VoteOption_1darray2[int13].content );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    ImageView_1darray5[3].setImageResource( 2130838051 );
                    ImageView_1darray5[4].setImageResource( 2130838052 );
                    ImageView_1darray5[5].setImageResource( 2130838053 );
                    break;
                case 7:
                    int int12;

                    for( int12 = 0; int12 < int11; ++int12 )
                        TextView_1darray6[int12].setText( (CharSequence) VoteOption_1darray2[int12].content );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    ImageView_1darray5[3].setImageResource( 2130838051 );
                    ImageView_1darray5[4].setImageResource( 2130838052 );
                    ImageView_1darray5[5].setImageResource( 2130838053 );
                    ImageView_1darray5[6].setImageResource( 2130838054 );
                    break;
                default:
                    break;
            }
            if( int9 != 0 )
            {
                TweetDetailActivity1.a( ((VoteRecord) List10.get( 0 )).vote_item_index, true );
                return;
            }
        }
    }

    static boolean a(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.q();
    }

    static Account b(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.s;
    }

    static String b(TweetDetailActivity TweetDetailActivity1, String String2)
    {
        TweetDetailActivity1.u = String2;
        return String2;
    }

    static void b(TweetDetailActivity TweetDetailActivity1, TweetResult TweetResult2)
    {
        User User3 = TweetResult2.getUser();
        Tweet Tweet4 = TweetResult2.getTweet();
        SmartImageView SmartImageView5 = (SmartImageView) TweetDetailActivity1.c.findViewById( 2131492899 );
        TextView TextView6;
        ImageView ImageView7;

        if( am.m( (Context) TweetDetailActivity1 ) )
            SmartImageView5.setImageResource( 2130837614 );
        else
            SmartImageView5.setImageUrl( User3.getFullAvatar() );
        SmartImageView5.setOnClickListener( (View$OnClickListener) new dw( TweetDetailActivity1, User3 ) );
        ((TextView) TweetDetailActivity1.c.findViewById( 2131492928 )).setText( (CharSequence) User3.getNickname() );
        ((TextView) TweetDetailActivity1.c.findViewById( 2131493631 )).setText( (CharSequence) new StringBuilder( "lv." ).append( User3.getLv() ).toString() );
        ((TextView) TweetDetailActivity1.c.findViewById( 2131492935 )).setText( (CharSequence) com.clilystudio.netbook.util.t.e( Tweet4.getCreated() ) );
        TextView6 = (TextView) TweetDetailActivity1.c.findViewById( 2131492936 );
        TweetDetailActivity1.r = (TextView) TweetDetailActivity1.c.findViewById( 2131492947 );
        TweetDetailActivity1.r.setText( (CharSequence) new StringBuilder( "\u5171" ).append( TweetDetailActivity1.t.getTweet().getVoteCount() ).append( "\u4EBA\u6295\u7968" ).toString() );
        if( TweetDetailActivity1.u.equals( "ARTICLE" ) )
        {
            TextView6.setVisibility( 0 );
            TextView6.setText( (CharSequence) Tweet4.getTitle() );
        }
        else
            TextView6.setVisibility( 8 );
        ((LinkifyTextView) TweetDetailActivity1.c.findViewById( 2131492905 )).setLinkifyText( Tweet4.getContent(), User3.isOfficial() );
        ((TextView) TweetDetailActivity1.findViewById( 2131493519 )).setText( (CharSequence) new StringBuilder( "\u5171" ).append( TweetDetailActivity1.t.getTweet().getCommented() ).append( "\u6761\u8BC4\u8BBA" ).toString() );
        ImageView7 = (ImageView) TweetDetailActivity1.c.findViewById( 2131493629 );
        if( TweetDetailActivity1.y )
        {
            String String9 = User3.getGender();

            if( "male".equals( String9 ) )
            {
                ImageView7.setVisibility( 0 );
                ImageView7.setImageLevel( 2 );
            }
            else if( "female".equals( String9 ) )
            {
                ImageView7.setVisibility( 0 );
                ImageView7.setImageLevel( 3 );
            }
            else
            {
                ImageView7.setVisibility( 0 );
                ImageView7.setImageLevel( 4 );
            }
        }
        else
        {
            String String8 = User3.getType();

            if( "official".equals( String8 ) )
            {
                ImageView7.setVisibility( 0 );
                ImageView7.setImageLevel( 0 );
                com.clilystudio.netbook.hpay100.a.a.s( (Context) TweetDetailActivity1, Tweet4.get_id() );
            }
            else if( "doyen".equals( String8 ) )
            {
                ImageView7.setVisibility( 0 );
                ImageView7.setImageLevel( 1 );
            }
            else
                ImageView7.setVisibility( 8 );
        }
        ((PostAgreeView) TweetDetailActivity1.c.findViewById( 2131493840 )).setPostId( TweetDetailActivity1.a );
        TweetDetailActivity1.c.a();
        TweetDetailActivity1.c.b();
    }

    static TweetResult c(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.t;
    }

    static int d(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.w;
    }

    static void e(TweetDetailActivity TweetDetailActivity1)
    {
        TweetDetailActivity1.p();
    }

    static void f(TweetDetailActivity TweetDetailActivity1)
    {
        TweetDetailActivity1.v.a();
    }

    static void g(TweetDetailActivity TweetDetailActivity1)
    {
        if( TweetDetailActivity1.t != null )
        {
            dy dy2;
            String[] String_1darray3;

            TweetDetailActivity1.g.clear();
            TweetDetailActivity1.j.setVisibility( 0 );
            TweetDetailActivity1.h = new dy( TweetDetailActivity1, (byte) 0 );
            dy2 = TweetDetailActivity1.h;
            String_1darray3 = new String[1];
            String_1darray3[0] = TweetDetailActivity1.t.getTweet().get_id();
            dy2.execute( String_1darray3 );
        }
    }

    static void h(TweetDetailActivity TweetDetailActivity1)
    {
        Account Account2 = am.e();

        if( Account2 != null && G.a( Account2, TweetDetailActivity1.t.getTweet().get_id() ) )
            TweetDetailActivity1.p();
    }

    static av i(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.A;
    }

    static View j(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.j;
    }

    static List k(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.g;
    }

    static com.clilystudio.netbook.adapter.z l(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.f;
    }

    static dy m(TweetDetailActivity TweetDetailActivity1)
    {
        return TweetDetailActivity1.h;
    }

    static void n(TweetDetailActivity TweetDetailActivity1)
    {
        if( TweetDetailActivity1.t != null )
        {
            String String2;
            dy dy3;
            String[] String_1darray4;

            TweetDetailActivity1.j.setVisibility( 0 );
            TweetDetailActivity1.h = new dy( TweetDetailActivity1, (byte) 0 );
            String2 = "";
            if( TweetDetailActivity1.g.size() > 0 )
                String2 = ((PostComment) TweetDetailActivity1.g.get( -1 + TweetDetailActivity1.g.size() )).get_id();
            dy3 = TweetDetailActivity1.h;
            String_1darray4 = new String[2];
            String_1darray4[0] = TweetDetailActivity1.t.getTweet().get_id();
            String_1darray4[1] = String2;
            dy3.execute( String_1darray4 );
        }
    }

    private void p()
    {
        Drawable Drawable1;

        k.setAgree( true );
        Drawable1 = getResources().getDrawable( 2130838111 );
        Drawable1.setBounds( 0, 0, Drawable1.getMinimumWidth(), Drawable1.getMinimumHeight() );
        l.setCompoundDrawables( Drawable1, null, null, null );
    }

    private boolean q()
    {
        if( s != null && s.getToken() != null )
            return true;
        else
        {
            Account Account1 = am.e();

            if( Account1 == null )
            {
                com.clilystudio.netbook.util.e.a( (Activity) this, "\u8BF7\u767B\u5F55\u540E\u518D\u64CD\u4F5C" );
                startActivity( AuthLoginActivity.a( (Context) this ) );
                return false;
            }
            else
            {
                s = Account1;
                return true;
            }
        }
    }

    protected final void a(Account Account1, String String2)
    {
        dD dD3 = new dD( this, (Activity) this, 2131034430 );
        String[] String_1darray4 = new String[3];

        String_1darray4[0] = Account1.getToken();
        String_1darray4[1] = a;
        String_1darray4[2] = String2;
        dD3.b( String_1darray4 );
    }

    protected final void a(ReplyeeInfo ReplyeeInfo1, String String2)
    {
        Account Account3;

        g( String2 );
        Account3 = am.a( (Activity) this );
        if( Account3 != null )
        {
            if( String2.length() > 512 )
                com.clilystudio.netbook.util.e.a( (Activity) this, 2131034305 );
            else
            {
                dB dB4 = new dB( this, (Activity) this, 2131034430 );
                String[] String_1darray5 = new String[4];

                String_1darray5[0] = Account3.getToken();
                String_1darray5[1] = a;
                String_1darray5[2] = ReplyeeInfo1.getCommentId();
                String_1darray5[3] = String2;
                dB4.b( String_1darray5 );
            }
        }
    }

    public final void a(String String1)
    {
        new N( (Activity) this ).a( t.getTweet().get_id(), String1, true );
    }

    protected final void b()
    {
        dz dz1;
        String[] String_1darray2;

        i();
        dz1 = new dz( this, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = a;
        dz1.b( String_1darray2 );
    }

    public final void e(int int1)
    {
        if( t != null )
        {
            if( int1 == 0 )
            {
                if( q() )
                {
                    new N( (Activity) this ).a( s.getToken(), t.getTweet().get_id() );
                    return;
                }
            }
            else if( int1 == 1 )
            {
                a( null );
                return;
            }
        }
    }

    public final void f()
    {
        super.f();
        i.setVisibility( 0 );
    }

    public final void f(int int1)
    {
        if( t == null )
            com.clilystudio.netbook.util.e.a( (Activity) this, "\u64CD\u4F5C\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
        else
        {
            Tweet Tweet2 = t.getTweet();
            String String3;
            String String4;

            if( "ARTICLE".equals( u ) )
                String3 = Tweet2.getTitle();
            else
                String3 = null;
            String4 = Tweet2.getShareLinkUrl();
            T.a( (Context) this, String3, new StringBuilder( "\u52A8\u6001\uFF1A\u300C" ).append( String3 ).append( "\u300D\uFF0C\u86EE\u6709\u610F\u601D\u7684\uFF0C\u4F60\u600E\u4E48\u770B\uFF1F" ).toString(), String4, null, int1, (PlatformActionListener) new dx( this ) );
        }
    }

    public final void j()
    {
    }

    public final String n()
    {
        return a;
    }

    protected final void o()
    {
        List List1 = g;
        PostComment PostComment2 = null;
        User User3;
        Author Author4;
        Object Object5;

        if( List1 != null )
        {
            int int7 = g.size();

            PostComment2 = null;
            if( int7 > 0 )
                PostComment2 = (PostComment) g.get( 0 );
        }
        User3 = am.e().getUser();
        Author4 = new Author();
        Author4.setAvatar( User3.getAvatar() );
        Author4.setNickname( User3.getNickname() );
        Author4.setLv( User3.getLv() );
        Object5 = new PostComment();
        ((PostComment) Object5).setAuthor( Author4 );
        ((PostComment) Object5).setContent( l() );
        ((PostComment) Object5).setCreated( new Date() );
        if( e != null )
        {
            PostComment$PostCommentReply PostCommentReply6 = new PostComment$PostCommentReply();

            PostCommentReply6.setFloor( e.getFloor() );
            PostCommentReply6.setAuthor( e.getAuthor() );
            ((PostComment) Object5).setReplyTo( PostCommentReply6 );
        }
        if( PostComment2 != null )
            ((PostComment) Object5).setFloor( 1 + PostComment2.getFloor() );
        else
            ((PostComment) Object5).setFloor( 1 );
        ((PostComment) Object5).set_id( x );
        g.add( 0, Object5 );
        f.a( (Collection) g );
        if( com.clilystudio.netbook.hpay100.a.a.g() )
            b.smoothScrollToPositionFromTop( 2, 60 );
        else
            b.setSelection( 2 );
    }

    public void onCreate(Bundle Bundle1)
    {
        Drawable Drawable2;
        Object Object3;

        super.onCreate( Bundle1 );
        a( 2130903350 );
        b( "\u52A8\u6001\u8BE6\u60C5" );
        a = getIntent().getStringExtra( "TWEET_ID" );
        u = getIntent().getStringExtra( "TWEET_TYPE" );
        i = findViewById( 2131493838 );
        a( true );
        b = (ScrollLoadListView) findViewById( 2131493135 );
        c = new PostHeader( (Context) this );
        c.a( false );
        b.addHeaderView( (View) c, null, false );
        k = (PostAgreeView) c.findViewById( 2131493840 );
        l = (TextView) c.findViewById( 2131493841 );
        Drawable2 = getResources().getDrawable( 2130838109 );
        Drawable2.setBounds( 0, 0, Drawable2.getMinimumWidth(), Drawable2.getMinimumHeight() );
        l.setCompoundDrawables( Drawable2, null, null, null );
        l.setText( (CharSequence) "\u8F6C\u53D1" );
        k.setOnClickListener( (View$OnClickListener) new du( this ) );
        Object3 = (HotCommentView) LayoutInflater.from( (Context) this ).inflate( 2130903235, (ViewGroup) b, false );
        b.addHeaderView( (View) Object3, null, false );
        ((HotCommentView) Object3).a( a );
        j = LayoutInflater.from( (Context) this ).inflate( 2130903325, null );
        b.addFooterView( j );
        j.setVisibility( 8 );
        f = new com.clilystudio.netbook.adapter.z( getLayoutInflater() );
        b.setAdapter( (ListAdapter) f );
        v = (SendView) findViewById( 2131494003 );
        b();
        y = com.clilystudio.netbook.hpay100.a.a.r( (Context) this, "community_user_gender_icon_toggle" );
    }
}
