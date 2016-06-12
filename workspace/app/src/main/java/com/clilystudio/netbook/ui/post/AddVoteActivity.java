
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

public class AddVoteActivity extends BaseActivity {

    private EditText a;
    private EditText b;
    private View c;
    private String e;
    private String f;
    private boolean g;
    private boolean h;
    private String[] i;
    private int j;
    private String k;
    private String l;

    static EditText a(AddVoteActivity AddVoteActivity1)
    {
        return AddVoteActivity1.a;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(AddVoteActivity AddVoteActivity1, View View2)
    {
    }

    static EditText b(AddVoteActivity AddVoteActivity1)
    {
        return AddVoteActivity1.b;
    }

    static String c(AddVoteActivity AddVoteActivity1)
    {
        return AddVoteActivity1.e;
    }

    static int d(AddVoteActivity AddVoteActivity1)
    {
        return AddVoteActivity1.j;
    }

    static String e(AddVoteActivity AddVoteActivity1)
    {
        return AddVoteActivity1.l;
    }

    static String f(AddVoteActivity AddVoteActivity1)
    {
        return AddVoteActivity1.f;
    }

    private boolean f()
    {
        String String1 = a.getText().toString().trim();
        Editable Editable2;

        if( j != 3 )
        {
            if( com.clilystudio.netbook.hpay100.a.a.Q( String1 ) )
            {
                com.clilystudio.netbook.util.e.a( (Activity) this, "\t\t\u8BF7\u8F93\u5165\u5E16\u5B50\u6807\u9898\t\t" );
                return false;
            }
            else if( String1.length() < 4 )
            {
                com.clilystudio.netbook.util.e.a( (Activity) this, "\t\t\u6807\u9898\u6587\u5B57\u592A\u5C11\u4E86\u54E6\t\t" );
                return false;
            }
        }
        Editable2 = b.getText();
        if( Editable2 == null || com.clilystudio.netbook.hpay100.a.a.Q( Editable2.toString() ) )
            com.clilystudio.netbook.util.e.a( (Activity) this, "\t\t\u8BF7\u8F93\u5165\u6B63\u6587\t\t" );
        else
        {
            if( j != 4 || Editable2.toString().length() >= 300 )
                return true;
            com.clilystudio.netbook.util.e.a( (Activity) this, "\t\t\u6587\u7AE0\u6B63\u6587\u4E0D\u5C11\u4E8E300\u5B57\t\t" );
        }
        return false;
    }

    static boolean g(AddVoteActivity AddVoteActivity1)
    {
        return AddVoteActivity1.h;
    }

    protected String b()
    {
        return k;
    }

    protected void onActivityResult(int int1, int int2, Intent Intent3)
    {
        super.onActivityResult( int1, int2, Intent3 );
        if( int1 == 0 && int2 == -1 )
            i = Intent3.getStringArrayExtra( "contentArray" );
    }

    public void onBackPressed()
    {
        int int1 = 1;
        String String2 = a.getText().toString();
        String String3 = b.getText().toString();

        if( com.clilystudio.netbook.hpay100.a.a.Q( String2 ) && com.clilystudio.netbook.hpay100.a.a.Q( String3 ) )
            int1 = 0;
        if( int1 != 0 )
        {
            uk.me.lewisdeane.ldialogs.h h4 = new uk.me.lewisdeane.ldialogs.h( (Context) this );

            h4.d = "\u63D0\u793A";
            h4.e = "\u79BB\u5F00\u5C06\u4E22\u5931\u5DF2\u8F93\u5165\u7684\u5185\u5BB9\uFF0C\u786E\u5B9A\u79BB\u5F00\uFF1F";
            h4.b( "\u7559\u5728\u6B64\u9875", (DialogInterface$OnClickListener) new N( this ) );
            h4.a( "\u79BB\u5F00", (DialogInterface$OnClickListener) new O( this ) );
            h4.a().show();
        }
        else
            super.onBackPressed();
    }

    public void onCreate(Bundle Bundle1)
    {
        String String3;

        super.onCreate( Bundle1 );
        setContentView( 2130903078 );
        com.clilystudio.netbook.a.a();
        com.clilystudio.netbook.a.a( (Activity) this );
        a = (EditText) findViewById( 2131493072 );
        b = (EditText) findViewById( 2131493074 );
        c = findViewById( 2131493073 );
        l = getIntent().getStringExtra( "add_post_mode" );
        if( "ramble".equals( l ) )
        {
            j = 1;
            a.setHint( 2131034400 );
            b.setHint( 2131034399 );
            k = "\u8BDD\u9898";
        }
        else if( "android-feedback".equals( l ) )
        {
            j = 2;
            a.setHint( 2131034402 );
            b.setHint( 2131034401 );
            k = "\u610F\u89C1\u53CD\u9988";
        }
        else if( "TWEET".equals( l ) )
        {
            j = 3;
            a.setVisibility( 8 );
            c.setVisibility( 8 );
            b.setHint( 2131034403 );
            k = "\u52A8\u6001";
        }
        else if( "ARTICLE".equals( l ) )
        {
            j = 4;
            a.setHint( 2131034400 );
            b.setHint( 2131034398 );
            k = "\u6587\u7AE0";
        }
        else if( "girl".equals( l ) )
        {
            j = 5;
            a.setHint( 2131034292 );
            b.setHint( 2131034290 );
            k = "\u5973\u751F\u533A";
        }
        else
        {
            e = getIntent().getStringExtra( "book_post_list_bookId" );
            f = getIntent().getStringExtra( "book_post_list_bookTitle" );
            h = getIntent().getBooleanExtra( "book_post_list_from_reader", false );
            j = 0;
        }
        g = getIntent().getBooleanExtra( "add_post_category", false );
        if( g )
        {
            String3 = "\u4E0B\u4E00\u6B65";
            k = "\u6295\u7968";
        }
        else
            String3 = "\u53D1\u5E03";
        a( new StringBuilder( "\u7F16\u8F91" ).append( b() ).toString(), String3, (aa) new K( this ) );
    }
}
