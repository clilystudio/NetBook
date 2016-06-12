
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView$OnScrollListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.widget.CommentItemView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.SendView;
import java.io.Serializable;

public abstract class AbsPostActivity extends BaseLoadingActivity {

    protected String a;
    protected ScrollLoadListView b;
    protected PostHeader c;
    protected ReplyeeInfo e;
    private String f;

    static EditText a(AbsPostActivity AbsPostActivity1)
    {
        return AbsPostActivity1.p();
    }

    static String a(AbsPostActivity AbsPostActivity1, String String2)
    {
        AbsPostActivity1.f = String2;
        return String2;
    }

    static boolean b(AbsPostActivity AbsPostActivity1)
    {
        if( ((TextView) AbsPostActivity1.findViewById( 2131494004 )).getText().toString().length() <= 512 )
            return true;
        com.clilystudio.netbook.util.e.a( (Activity) AbsPostActivity1, 2131034305 );
        return false;
    }

    static void c(AbsPostActivity AbsPostActivity1)
    {
        AbsPostActivity1.p().setText( (CharSequence) "" );
    }

    private EditText p()
    {
        return ((SendView) findViewById( 2131494003 )).b();
    }

    protected void a(Account Account1, String String2)
    {
        h h3 = new h( this, (Activity) this, 2131034430 );
        String[] String_1darray4 = new String[3];

        String_1darray4[0] = a;
        String_1darray4[1] = Account1.getToken();
        String_1darray4[2] = String2;
        h3.b( String_1darray4 );
    }

    public final void a(ReplyeeInfo ReplyeeInfo1, int int2)
    {
        if( ReplyeeInfo1 != null && ReplyeeInfo1.getAuthor() != null )
        {
            SendView SendView3;
            Object Object4;
            Object[] Object_1darray5;

            e = ReplyeeInfo1;
            SendView3 = (SendView) findViewById( 2131494003 );
            Object4 = SendView3.b();
            ((EditText) Object4).setText( (CharSequence) "" );
            Object_1darray5 = new Object[1];
            Object_1darray5[0] = ReplyeeInfo1.getAuthor().getNickname();
            ((EditText) Object4).setHint( (CharSequence) String.format( "\u56DE\u590D %s\uFF1A", Object_1darray5 ) );
            ((View) Object4).requestFocus();
            ((InputMethodManager) ((Context) this).getSystemService( "input_method" )).showSoftInput( (View) Object4, 0 );
            if( int2 != -1 )
                b.setSelection( int2 );
            SendView3.c().setOnClickListener( (View$OnClickListener) new e( this, ReplyeeInfo1, (EditText) Object4 ) );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) this, "\u8BF7\u91CD\u8BD5" );
    }

    protected void a(ReplyeeInfo ReplyeeInfo1, String String2)
    {
        Account Account3;

        f = String2;
        Account3 = am.a( (Activity) this );
        if( Account3 != null )
        {
            if( f.length() > 512 )
                com.clilystudio.netbook.util.e.a( (Activity) this, 2131034305 );
            else
            {
                g g4 = new g( this, (Activity) this, 2131034430 );
                String[] String_1darray5 = new String[4];

                String_1darray5[0] = a;
                String_1darray5[1] = Account3.getToken();
                String_1darray5[2] = f;
                String_1darray5[3] = ReplyeeInfo1.getCommentId();
                g4.b( String_1darray5 );
            }
        }
    }

    public abstract void a(String String1);

    protected final void a(boolean boolean1)
    {
        Object Object2 = (TextView) findViewById( 2131494004 );

        am.a( (Context) this, (View) Object2 );
        if( boolean1 )
            ((TextView) Object2).setText( (CharSequence) "" );
        ((TextView) Object2).setHint( (CharSequence) "\u6DFB\u52A0\u8BC4\u8BBA" );
        findViewById( 2131494005 ).setOnClickListener( (View$OnClickListener) new d( this, (TextView) Object2 ) );
    }

    public abstract void e(int int1);

    public abstract void f(int int1);

    public final void g(String String1)
    {
        f = String1;
    }

    public void j()
    {
        if( getIntent().hasExtra( "KEY_POST_REPLIER_INFO" ) )
        {
            EditText EditText1 = p();

            new Handler().postDelayed( (Runnable) new c( this, EditText1 ), 200L );
            a( (ReplyeeInfo) getIntent().getSerializableExtra( "KEY_POST_REPLIER_INFO" ), 0 );
        }
    }

    public final void k()
    {
        int int1 = b.getChildCount();
        int int2;

        for( int2 = 0; int2 < int1; ++int2 )
        {
            View View3 = b.getChildAt( int2 );

            if( View3 instanceof CommentItemView )
                ((CommentItemView) View3).a();
        }
    }

    public final String l()
    {
        return f;
    }

    public final ListView m()
    {
        return (ListView) b;
    }

    public String n()
    {
        return a;
    }

    protected abstract void o();

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        com.clilystudio.netbook.hpay100.a.a.u( (Context) this );
    }

    public void onResume()
    {
        super.onResume();
        if( b != null )
            b.setOnScrollListener( (AbsListView$OnScrollListener) new a( this ) );
    }
}
