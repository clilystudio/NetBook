
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
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
import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.GirlTopic;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.Vote;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.LinkifyTextView;
import com.clilystudio.netbook.widget.PostAgreeView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

public class GirlTopicActivity extends AbsPostActivity {

    private View f;
    private z g;
    private bq i;
    private TextView j;
    private View k;
    private Account l;
    private GirlTopic m;
    private TextView s;
    private int t;
    private List h = new ArrayList();
    private View[] n = new View[7];
    private ImageView[] o = new ImageView[7];
    private ProgressBar[] p = new ProgressBar[7];
    private TextView[] q = new TextView[7];
    private TextView[] r = new TextView[7];
    private boolean u = false;
    private View$OnClickListener v = new bm( this );
    private av w = new bo( this );

    static int a(GirlTopicActivity GirlTopicActivity1, int int2)
    {
        GirlTopicActivity1.t = int2;
        return int2;
    }

    static GirlTopic a(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.m;
    }

    static GirlTopic a(GirlTopicActivity GirlTopicActivity1, GirlTopic GirlTopic2)
    {
        GirlTopicActivity1.m = GirlTopic2;
        return GirlTopic2;
    }

    private void a(int int1, boolean boolean2)
    {
        int int3 = m.getVoteCount();
        Vote[] Vote_1darray4;
        int int5;
        int[] int_1darray6;
        float[] float_1darray7;
        int int8;
        int int9;

        if( !boolean2 )
            ++int3;
        s.setText( (CharSequence) new StringBuilder( "\u5171" ).append( int3 ).append( "\u4EBA\u6295\u7968" ).toString() );
        Vote_1darray4 = m.getVotes();
        int5 = Vote_1darray4.length;
        int_1darray6 = new int[7];
        float_1darray7 = new float[7];
        for( int8 = 0; int8 < 7; ++int8 )
        {
            if( int8 < int5 )
                int_1darray6[int8] = Vote_1darray4[int8].getCount();
            else
                int_1darray6[int8] = 0;
        }
        if( !boolean2 )
            int_1darray6[int1] = 1 + int_1darray6[int1];
        for( int9 = 0; int9 < 7; ++int9 )
        {
            String String10;

            o[int9].setEnabled( false );
            n[int9].setVisibility( 0 );
            if( int9 == int1 )
                o[int9].setImageResource( 2130838056 );
            else
                o[int9].setImageResource( 2130838055 );
            if( int3 != 0 && int9 < int5 )
                float_1darray7[int9] = (float) int_1darray6[int9] / (float) int3;
            else
                float_1darray7[int9] = 0.0F;
            String10 = String.valueOf( (int) (0.5F + 100.0F * float_1darray7[int9]) );
            q[int9].setText( (CharSequence) new StringBuilder().append( int_1darray6[int9] ).append( " \u7968" ).toString() );
            r[int9].setText( (CharSequence) new StringBuilder().append( String10 ).append( "%" ).toString() );
            p[int9].setProgress( (int) (100.0F * float_1darray7[int9]) );
        }
    }

    static void a(GirlTopicActivity GirlTopicActivity1, int int2, boolean boolean3)
    {
        GirlTopicActivity1.a( int2, false );
    }

    static void a(GirlTopicActivity GirlTopicActivity1, Vote[] Vote_1darray2)
    {
        if( Vote_1darray2 != null && Vote_1darray2.length != 0 )
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
                View_1darray4[int7] = GirlTopicActivity1.c.findViewById( int_1darray3[int7] );
                GirlTopicActivity1.n[int7] = View_1darray4[int7].findViewById( 2131493732 );
                GirlTopicActivity1.p[int7] = (ProgressBar) View_1darray4[int7].findViewById( 2131493734 );
                GirlTopicActivity1.q[int7] = (TextView) View_1darray4[int7].findViewById( 2131493733 );
                GirlTopicActivity1.r[int7] = (TextView) View_1darray4[int7].findViewById( 2131493735 );
                ImageView_1darray5[int7] = (ImageView) View_1darray4[int7].findViewById( 2131493728 );
                GirlTopicActivity1.o[int7] = (ImageView) View_1darray4[int7].findViewById( 2131493730 );
                GirlTopicActivity1.o[int7].setTag( Integer.valueOf( int7 ) );
                GirlTopicActivity1.o[int7].setOnClickListener( GirlTopicActivity1.v );
                TextView_1darray6[int7] = (TextView) View_1darray4[int7].findViewById( 2131493729 );
            }
            Account8 = am.e();
            if( Account8 != null )
            {
                List10 = VoteRecord.getVoteRecords( Account8.getUser().getId(), GirlTopicActivity1.m.get_id() );
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
            int11 = Vote_1darray2.length;
            GirlTopicActivity1.c.a( int11 );
            switch( int11 )
            {
                case 2:
                    int int17;

                    for( int17 = 0; int17 < int11; ++int17 )
                        TextView_1darray6[int17].setText( (CharSequence) Vote_1darray2[int17].getContent() );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    break;
                case 3:
                    int int16;

                    for( int16 = 0; int16 < int11; ++int16 )
                        TextView_1darray6[int16].setText( (CharSequence) Vote_1darray2[int16].getContent() );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    break;
                case 4:
                    int int15;

                    for( int15 = 0; int15 < int11; ++int15 )
                        TextView_1darray6[int15].setText( (CharSequence) Vote_1darray2[int15].getContent() );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    ImageView_1darray5[3].setImageResource( 2130838051 );
                    break;
                case 5:
                    int int14;

                    for( int14 = 0; int14 < int11; ++int14 )
                        TextView_1darray6[int14].setText( (CharSequence) Vote_1darray2[int14].getContent() );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    ImageView_1darray5[3].setImageResource( 2130838051 );
                    ImageView_1darray5[4].setImageResource( 2130838052 );
                    break;
                case 6:
                    int int13;

                    for( int13 = 0; int13 < int11; ++int13 )
                        TextView_1darray6[int13].setText( (CharSequence) Vote_1darray2[int13].getContent() );
                    ImageView_1darray5[1].setImageResource( 2130838049 );
                    ImageView_1darray5[2].setImageResource( 2130838050 );
                    ImageView_1darray5[3].setImageResource( 2130838051 );
                    ImageView_1darray5[4].setImageResource( 2130838052 );
                    ImageView_1darray5[5].setImageResource( 2130838053 );
                    break;
                case 7:
                    int int12;

                    for( int12 = 0; int12 < int11; ++int12 )
                        TextView_1darray6[int12].setText( (CharSequence) Vote_1darray2[int12].getContent() );
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
                GirlTopicActivity1.a( ((VoteRecord) List10.get( 0 )).vote_item_index, true );
                return;
            }
        }
    }

    static void b(GirlTopicActivity GirlTopicActivity1)
    {
        if( GirlTopicActivity1.m != null )
        {
            bq bq2;
            String[] String_1darray3;

            GirlTopicActivity1.f.setVisibility( 0 );
            GirlTopicActivity1.i = new bq( GirlTopicActivity1, (byte) 0 );
            bq2 = GirlTopicActivity1.i;
            String_1darray3 = new String[1];
            String_1darray3[0] = GirlTopicActivity1.m.get_id();
            bq2.b( String_1darray3 );
        }
    }

    static void b(GirlTopicActivity GirlTopicActivity1, GirlTopic GirlTopic2)
    {
        Author Author3 = GirlTopic2.getAuthor();
        SmartImageView SmartImageView4 = (SmartImageView) GirlTopicActivity1.c.findViewById( 2131492899 );
        ImageView ImageView5;

        if( am.m( (Context) GirlTopicActivity1 ) )
            SmartImageView4.setImageResource( 2130837614 );
        else
            SmartImageView4.setImageUrl( Author3.getScaleAvatar() );
        ((TextView) GirlTopicActivity1.c.findViewById( 2131492928 )).setText( (CharSequence) Author3.getNickname() );
        ((TextView) GirlTopicActivity1.c.findViewById( 2131493631 )).setText( (CharSequence) new StringBuilder( "lv." ).append( Author3.getLv() ).toString() );
        ((TextView) GirlTopicActivity1.c.findViewById( 2131492935 )).setText( (CharSequence) com.clilystudio.netbook.util.t.e( GirlTopic2.getCreated() ) );
        ((TextView) GirlTopicActivity1.c.findViewById( 2131492936 )).setText( (CharSequence) GirlTopic2.getTitle() );
        ((LinkifyTextView) GirlTopicActivity1.c.findViewById( 2131492905 )).setLinkifyText( GirlTopic2.getContent(), Author3.isOfficial() );
        GirlTopicActivity1.s = (TextView) GirlTopicActivity1.c.findViewById( 2131492947 );
        GirlTopicActivity1.s.setText( (CharSequence) new StringBuilder( "\u5171" ).append( GirlTopic2.getVoteCount() ).append( "\u4EBA\u6295\u7968" ).toString() );
        GirlTopicActivity1.j.setText( (CharSequence) new StringBuilder( "\u5171" ).append( GirlTopic2.getCommentCount() ).append( "\u6761\u8BC4\u8BBA" ).toString() );
        ImageView5 = (ImageView) GirlTopicActivity1.c.findViewById( 2131493629 );
        if( GirlTopicActivity1.u )
        {
            String String7 = Author3.getGender();

            if( "male".equals( String7 ) )
            {
                ImageView5.setVisibility( 0 );
                ImageView5.setImageLevel( 2 );
            }
            else if( "female".equals( String7 ) )
            {
                ImageView5.setVisibility( 0 );
                ImageView5.setImageLevel( 3 );
            }
            else
            {
                ImageView5.setVisibility( 0 );
                ImageView5.setImageLevel( 4 );
            }
        }
        else
        {
            String String6 = Author3.getType();

            if( "official".equals( String6 ) )
            {
                ImageView5.setVisibility( 0 );
                ImageView5.setImageLevel( 0 );
                com.clilystudio.netbook.hpay100.a.a.s( (Context) GirlTopicActivity1, GirlTopic2.get_id() );
            }
            else if( "doyen".equals( String6 ) )
            {
                ImageView5.setVisibility( 0 );
                ImageView5.setImageLevel( 1 );
            }
            else
                ImageView5.setVisibility( 8 );
        }
        ((PostAgreeView) GirlTopicActivity1.c.findViewById( 2131493840 )).setPostId( GirlTopicActivity1.a );
        GirlTopicActivity1.c.a();
        GirlTopicActivity1.c.b();
    }

    static z c(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.g;
    }

    static av d(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.w;
    }

    static View e(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.f;
    }

    static List f(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.h;
    }

    static void g(GirlTopicActivity GirlTopicActivity1)
    {
        TextView TextView2;

        GirlTopicActivity1.f.setVisibility( 0 );
        GirlTopicActivity1.f.findViewById( 2131493085 ).setVisibility( 8 );
        TextView2 = (TextView) GirlTopicActivity1.f.findViewById( 2131493798 );
        TextView2.setText( (CharSequence) "\u70B9\u51FB\u52A0\u8F7D\u8BC4\u8BBA" );
        GirlTopicActivity1.f.setOnClickListener( (View$OnClickListener) new bn( GirlTopicActivity1, TextView2 ) );
    }

    static boolean h(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.p();
    }

    static Account i(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.l;
    }

    static int j(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.t;
    }

    static bq k(GirlTopicActivity GirlTopicActivity1)
    {
        return GirlTopicActivity1.i;
    }

    private boolean p()
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
            l = Account1;
            return true;
        }
    }

    public final void a(String String1)
    {
        new N( (Activity) this ).b( m.get_id(), String1 );
    }

    protected final void b()
    {
        br br1;
        String[] String_1darray2;

        i();
        br1 = new br( this, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = a;
        br1.b( String_1darray2 );
    }

    public final void e(int int1)
    {
        if( m != null )
        {
            if( int1 == 1 )
            {
                a( null );
                return;
            }
            else if( int1 == 0 && p() )
            {
                new N( (Activity) this ).a( l.getToken(), m.get_id() );
                return;
            }
        }
    }

    public final void f()
    {
        super.f();
        k.setVisibility( 0 );
    }

    public final void f(int int1)
    {
        if( m == null )
            com.clilystudio.netbook.util.e.a( (Activity) this, "\u64CD\u4F5C\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
        else
            T.a( (Context) this, m.getTitle(), new StringBuilder( "\u300C" ).append( m.getTitle() ).append( "\u300D   \u6211\u5728\u8FD9\u53D1\u73B0\u4E86\u597D\u591A\u597D\u770B\u7684\u5C0F\u8BF4\uFF0C\u4F60\u4E5F\u6765\u627E\u627E\u770B\u5427" ).toString(), m.getShareLink(), null, int1, (PlatformActionListener) new bp( this ) );
    }

    public final void h()
    {
        super.h();
        k.setVisibility( 8 );
    }

    public final void i()
    {
        super.i();
        k.setVisibility( 8 );
    }

    protected final void o()
    {
        List List1 = h;
        PostComment PostComment2 = null;
        User User3;
        Author Author4;
        Object Object5;

        if( List1 != null )
        {
            int int7 = h.size();

            PostComment2 = null;
            if( int7 > 0 )
                PostComment2 = (PostComment) h.get( 0 );
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
        h.add( 0, Object5 );
        g.a( (Collection) h );
        if( com.clilystudio.netbook.hpay100.a.a.g() )
            b.smoothScrollToPositionFromTop( 2, 60 );
        else
            b.setSelection( 2 );
    }

    public void onCreate(Bundle Bundle1)
    {
        Object Object2;

        super.onCreate( Bundle1 );
        a( 2130903350 );
        b( "\u5973\u751F\u533A\u8BDD\u9898\u8BE6\u60C5" );
        a = getIntent().getStringExtra( "extraGirlTopicId" );
        b = (ScrollLoadListView) findViewById( 2131493135 );
        k = findViewById( 2131493838 );
        a( true );
        c = new PostHeader( (Context) this );
        b.addHeaderView( (View) c, null, false );
        Object2 = (HotCommentView) LayoutInflater.from( (Context) this ).inflate( 2130903235, (ViewGroup) b, false );
        j = (TextView) ((HotCommentView) Object2).findViewById( 2131493519 );
        b.addHeaderView( (View) Object2, null, false );
        ((HotCommentView) Object2).a( a );
        f = LayoutInflater.from( (Context) this ).inflate( 2130903325, null );
        b.addFooterView( f );
        f.setVisibility( 8 );
        g = new z( getLayoutInflater() );
        b.setAdapter( (ListAdapter) g );
        j();
        b();
        u = com.clilystudio.netbook.hpay100.a.a.r( (Context) this, "community_user_gender_icon_toggle" );
    }
}
