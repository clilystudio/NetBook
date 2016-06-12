
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.design.widget.am;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import java.util.ArrayList;
import java.util.List;

public class AddVoteItemActivity extends BaseActivity {

    private String j;
    private String k;
    private String l;
    private String m;
    private boolean n;
    private int a = 0;
    private RelativeLayout[] b = new RelativeLayout[7];
    private ImageView[] c = new ImageView[5];
    private TextView[] e = new TextView[7];
    private String[] f = null;
    private String[] g = new String[7];
    private List h = new ArrayList();
    private int i = 0;
    private Account o = null;
    private View$OnClickListener p = new S( this );
    private View$OnClickListener q = new T( this );

    static void a(AddVoteItemActivity AddVoteItemActivity1)
    {
        if( AddVoteItemActivity1.i < 7 )
        {
            AddVoteItemActivity1.b[AddVoteItemActivity1.i].setVisibility( 0 );
            AddVoteItemActivity1.i = 1 + AddVoteItemActivity1.i;
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) AddVoteItemActivity1, "\u4E0D\u80FD\u518D\u6DFB\u52A0\u6295\u7968\u9879\u5566" );
    }

    static void a(AddVoteItemActivity AddVoteItemActivity1, int int2)
    {
        switch( AddVoteItemActivity1.i )
        {
            case 3:
                AddVoteItemActivity1.e[2].setText( (CharSequence) "" );
                AddVoteItemActivity1.g[2] = "";
                break;
            case 4:
                if( 3 == int2 )
                {
                    AddVoteItemActivity1.e[2].setText( AddVoteItemActivity1.e[3].getText() );
                    AddVoteItemActivity1.g[2] = AddVoteItemActivity1.g[3];
                }
                AddVoteItemActivity1.e[3].setText( (CharSequence) "" );
                AddVoteItemActivity1.g[3] = "";
                break;
            case 5:
                if( 3 == int2 )
                {
                    AddVoteItemActivity1.e[2].setText( AddVoteItemActivity1.e[3].getText() );
                    AddVoteItemActivity1.e[3].setText( AddVoteItemActivity1.e[4].getText() );
                    AddVoteItemActivity1.g[2] = AddVoteItemActivity1.g[3];
                    AddVoteItemActivity1.g[3] = AddVoteItemActivity1.g[4];
                }
                else if( 4 == int2 )
                {
                    AddVoteItemActivity1.e[3].setText( AddVoteItemActivity1.e[4].getText() );
                    AddVoteItemActivity1.g[3] = AddVoteItemActivity1.g[4];
                }
                AddVoteItemActivity1.e[4].setText( (CharSequence) "" );
                AddVoteItemActivity1.g[4] = "";
                break;
            case 6:
                if( 3 == int2 )
                {
                    AddVoteItemActivity1.e[2].setText( AddVoteItemActivity1.e[3].getText() );
                    AddVoteItemActivity1.e[3].setText( AddVoteItemActivity1.e[4].getText() );
                    AddVoteItemActivity1.e[4].setText( AddVoteItemActivity1.e[5].getText() );
                    AddVoteItemActivity1.g[2] = AddVoteItemActivity1.g[3];
                    AddVoteItemActivity1.g[3] = AddVoteItemActivity1.g[4];
                    AddVoteItemActivity1.g[4] = AddVoteItemActivity1.g[5];
                }
                else if( 4 == int2 )
                {
                    AddVoteItemActivity1.e[3].setText( AddVoteItemActivity1.e[4].getText() );
                    AddVoteItemActivity1.e[4].setText( AddVoteItemActivity1.e[5].getText() );
                    AddVoteItemActivity1.g[3] = AddVoteItemActivity1.g[4];
                    AddVoteItemActivity1.g[4] = AddVoteItemActivity1.g[5];
                }
                else if( 5 == int2 )
                {
                    AddVoteItemActivity1.e[4].setText( AddVoteItemActivity1.e[5].getText() );
                    AddVoteItemActivity1.g[4] = AddVoteItemActivity1.g[5];
                }
                AddVoteItemActivity1.e[5].setText( (CharSequence) "" );
                AddVoteItemActivity1.g[5] = "";
                break;
            case 7:
                if( 3 == int2 )
                {
                    AddVoteItemActivity1.e[2].setText( AddVoteItemActivity1.e[3].getText() );
                    AddVoteItemActivity1.e[3].setText( AddVoteItemActivity1.e[4].getText() );
                    AddVoteItemActivity1.e[4].setText( AddVoteItemActivity1.e[5].getText() );
                    AddVoteItemActivity1.e[5].setText( AddVoteItemActivity1.e[6].getText() );
                    AddVoteItemActivity1.g[2] = AddVoteItemActivity1.g[3];
                    AddVoteItemActivity1.g[3] = AddVoteItemActivity1.g[4];
                    AddVoteItemActivity1.g[4] = AddVoteItemActivity1.g[5];
                    AddVoteItemActivity1.g[5] = AddVoteItemActivity1.g[6];
                }
                else if( 4 == int2 )
                {
                    AddVoteItemActivity1.e[3].setText( AddVoteItemActivity1.e[4].getText() );
                    AddVoteItemActivity1.e[4].setText( AddVoteItemActivity1.e[5].getText() );
                    AddVoteItemActivity1.e[5].setText( AddVoteItemActivity1.e[6].getText() );
                    AddVoteItemActivity1.g[3] = AddVoteItemActivity1.g[4];
                    AddVoteItemActivity1.g[4] = AddVoteItemActivity1.g[5];
                    AddVoteItemActivity1.g[5] = AddVoteItemActivity1.g[6];
                }
                else if( 5 == int2 )
                {
                    AddVoteItemActivity1.e[4].setText( AddVoteItemActivity1.e[5].getText() );
                    AddVoteItemActivity1.e[5].setText( AddVoteItemActivity1.e[6].getText() );
                    AddVoteItemActivity1.g[4] = AddVoteItemActivity1.g[5];
                    AddVoteItemActivity1.g[5] = AddVoteItemActivity1.g[6];
                }
                else if( 6 == int2 )
                {
                    AddVoteItemActivity1.e[5].setText( AddVoteItemActivity1.e[6].getText() );
                    AddVoteItemActivity1.g[5] = AddVoteItemActivity1.g[6];
                }
                AddVoteItemActivity1.e[6].setText( (CharSequence) "" );
                AddVoteItemActivity1.g[6] = "";
                break;
            default:
                break;
        }
        AddVoteItemActivity1.b[-1 + AddVoteItemActivity1.i].setVisibility( 8 );
        AddVoteItemActivity1.i = -1 + AddVoteItemActivity1.i;
    }

    static void a(AddVoteItemActivity AddVoteItemActivity1, View View2)
    {
        ((InputMethodManager) AddVoteItemActivity1.getSystemService( "input_method" )).hideSoftInputFromWindow( View2.getWindowToken(), 0 );
    }

    static void a(AddVoteItemActivity AddVoteItemActivity1, TextView TextView2, int int3)
    {
        uk.me.lewisdeane.ldialogs.h h4 = new uk.me.lewisdeane.ldialogs.h( (Context) AddVoteItemActivity1 );
        View View5 = LayoutInflater.from( (Context) AddVoteItemActivity1 ).inflate( 2130903189, null );
        EditText EditText6 = (EditText) View5.findViewById( 2131493392 );
        Object Object9;
        Button Button10;

        EditText6.setText( (CharSequence) "" );
        h4.d = "\u6295\u7968\u9879";
        h4.a( 2131034424, null );
        h4.b( 2131034129, (DialogInterface$OnClickListener) new U( AddVoteItemActivity1, EditText6 ) );
        Object9 = h4.a( View5 ).b();
        Button10 = (Button) ((Dialog) Object9).findViewById( 16908313 );
        Button10.setOnClickListener( (View$OnClickListener) new V( AddVoteItemActivity1, EditText6, TextView2, int3, (Dialog) Object9 ) );
        if( com.clilystudio.netbook.hpay100.a.a.Q( EditText6.getText().toString() ) )
            Button10.setEnabled( false );
        EditText6.addTextChangedListener( (TextWatcher) new W( AddVoteItemActivity1, EditText6, Button10 ) );
    }

    static boolean a(AddVoteItemActivity AddVoteItemActivity1, String String2)
    {
        int int3 = 0;

        for( ;; )
        {
            boolean boolean4 = false;

            if( int3 < 7 )
            {
                if( AddVoteItemActivity1.g[int3].equals( String2 ) )
                    boolean4 = true;
                else
                {
                    ++int3;
                    continue;
                }
            }
            return boolean4;
        }
    }

    static boolean b(AddVoteItemActivity AddVoteItemActivity1)
    {
        int int2;

        AddVoteItemActivity1.h.clear();
        for( int2 = 0; int2 < 7; ++int2 )
        {
            if( !"".equals( AddVoteItemActivity1.g[int2] ) )
                AddVoteItemActivity1.h.add( AddVoteItemActivity1.g[int2] );
        }
        if( AddVoteItemActivity1.h.size() < 2 )
        {
            com.clilystudio.netbook.util.e.a( (Activity) AddVoteItemActivity1, "\u81F3\u5C11\u9700\u89812\u4E2A\u6295\u7968\u9879" );
            return false;
        }
        else
        {
            if( AddVoteItemActivity1.o == null )
            {
                Account Account3 = am.e();

                if( Account3 == null )
                {
                    com.clilystudio.netbook.util.e.a( (Activity) AddVoteItemActivity1, "\u767B\u5F55\u540E\u518D\u64CD\u4F5C" );
                    AddVoteItemActivity1.startActivity( AuthLoginActivity.a( (Context) AddVoteItemActivity1 ) );
                    return false;
                }
                else
                    AddVoteItemActivity1.o = Account3;
            }
            return true;
        }
    }

    static void c(AddVoteItemActivity AddVoteItemActivity1)
    {
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h( (Context) AddVoteItemActivity1 );
        View View3 = LayoutInflater.from( (Context) AddVoteItemActivity1 ).inflate( 2130903202, null );
        TextView TextView4 = (TextView) View3.findViewById( 2131493422 );
        Object Object7;

        if( AddVoteItemActivity1.a == 3 )
            TextView4.setText( 2131034589 );
        else
            TextView4.setText( 2131034588 );
        h2.d = "\u53D1\u5E03";
        h2.a( 2131034583, null );
        h2.b( 2131034129, (DialogInterface$OnClickListener) new X( AddVoteItemActivity1 ) );
        Object7 = h2.a( View3 ).b();
        ((Button) ((Dialog) Object7).findViewById( 16908313 )).setOnClickListener( (View$OnClickListener) new Y( AddVoteItemActivity1, (Dialog) Object7 ) );
    }

    static TextView[] d(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.e;
    }

    static int e(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.a;
    }

    static void f(AddVoteItemActivity AddVoteItemActivity1)
    {
        AddVoteItemActivity1.startActivity( BookPostTabActivity.a( (Context) AddVoteItemActivity1, AddVoteItemActivity1.j, AddVoteItemActivity1.k, AddVoteItemActivity1.n ) );
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void g(AddVoteItemActivity AddVoteItemActivity1)
    {
    }

    static String[] h(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.g;
    }

    static List i(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.h;
    }

    static Account j(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.o;
    }

    static String k(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.j;
    }

    static String l(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.l;
    }

    static String m(AddVoteItemActivity AddVoteItemActivity1)
    {
        return AddVoteItemActivity1.m;
    }

    public void onBackPressed()
    {
        Intent Intent1 = getIntent();

        Intent1.putExtra( "contentArray", g );
        setResult( -1, Intent1 );
        finish();
    }

    public void onCreate(Bundle Bundle1)
    {
        String String3;
        int[] int_1darray4;
        int[] int_1darray5;
        int[] int_1darray6;
        int int7;
        int int8;
        View View9;
        View View10;

        super.onCreate( Bundle1 );
        setContentView( 2130903079 );
        com.clilystudio.netbook.a.a();
        com.clilystudio.netbook.a.a( (Activity) this );
        String3 = getIntent().getStringExtra( "block" );
        if( "ramble".equals( String3 ) )
            a = 1;
        else if( "android-feedback".equals( String3 ) )
            a = 2;
        else if( "girl".equals( String3 ) )
            a = 3;
        f = getIntent().getStringArrayExtra( "lastContentArray" );
        j = getIntent().getStringExtra( "book_post_list_bookId" );
        k = getIntent().getStringExtra( "book_post_list_bookTitle" );
        l = getIntent().getStringExtra( "add_vote_title" );
        m = getIntent().getStringExtra( "add_vote_desc" );
        n = getIntent().getBooleanExtra( "book_post_list_from_reader", false );
        b( "\u7F16\u8F91\u6295\u7968\u9879" );
        int_1darray4 = new int[] { 2131492890, 2131492891, 2131492892, 2131492893, 2131492894, 2131492895, 2131492896 };
        int_1darray5 = new int[] { 2131492876, 2131492877, 2131492878, 2131492879, 2131492880, 2131492881, 2131492882 };
        int_1darray6 = new int[] { 2131492871, 2131492872, 2131492873, 2131492874, 2131492875 };
        for( int7 = 0; int7 < 7; ++int7 )
        {
            b[int7] = (RelativeLayout) findViewById( int_1darray4[int7] );
            b[int7].setTag( Integer.valueOf( int7 ) );
            b[int7].setOnClickListener( p );
            e[int7] = (TextView) findViewById( int_1darray5[int7] );
        }
        for( int8 = 0; int8 < 5; ++int8 )
        {
            int int16 = int8 + 3;

            c[int8] = (ImageView) findViewById( int_1darray6[int8] );
            c[int8].setTag( Integer.valueOf( int16 ) );
            c[int8].setOnClickListener( q );
        }
        View9 = findViewById( 2131492868 );
        View10 = findViewById( 2131492897 );
        View9.setOnClickListener( (View$OnClickListener) new Q( this ) );
        View10.setOnClickListener( (View$OnClickListener) new R( this ) );
        if( f != null )
        {
            int int12;
            int int13;
            int int14;

            g = f;
            int12 = 6;
            while( int12 > 0 )
            {
                if( !"".equals( g[int12] ) )
                {
                    i = int12 + 1;
                    break;
                }
                else
                    --int12;
            }
            if( i < 2 )
                i = 2;
            int13 = i;
            for( int14 = 0; int14 < int13; ++int14 )
            {
                Object Object15;

                b[int14].setVisibility( 0 );
                Object15 = g[int14];
                e[int14].setText( (CharSequence) Object15 );
            }
        }
        else
        {
            int int11;

            i = 2;
            for( int11 = 0; int11 < 7; ++int11 )
                g[int11] = "";
        }
    }

    public boolean onOptionsItemSelected(MenuItem MenuItem1)
    {
        switch( MenuItem1.getItemId() )
        {
            default:
                return super.onOptionsItemSelected( MenuItem1 );
            case 44:
                onBackPressed();
                return true;
        }
    }
}
