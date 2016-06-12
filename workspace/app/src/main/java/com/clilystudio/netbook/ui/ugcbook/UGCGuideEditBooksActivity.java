
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import cn.sharesdk.framework.ShareSDK;
import com.clilystudio.netbook.event.D;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.ab;
import com.clilystudio.netbook.widget.CoverView;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UGCGuideEditBooksActivity extends BaseActivity implements View$OnClickListener {

    private ListView b;
    private View c;
    private Q e;
    private String f;
    private Author g;
    private boolean h;
    Map a = new HashMap();

    static UGCNewCollection a(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static void a(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1, int int2)
    {
        List List3 = e().getBooks();

        if( List3 != null && List3.size() != 0 )
        {
            BookSummary BookSummary4 = (BookSummary) List3.get( int2 );
            View View5 = UGCGuideEditBooksActivity1.getLayoutInflater().inflate( 2130903404, null, false );
            long long6;
            Object Object8;
            EditText EditText9;
            Editable Editable10;

            ((CoverView) View5.findViewById( 2131492899 )).setImageUrl( BookSummary4.getFullCover(), 2130837766 );
            ((TextView) View5.findViewById( 2131492936 )).setText( (CharSequence) BookSummary4.getTitle() );
            ((TextView) View5.findViewById( 2131493317 )).setText( (CharSequence) BookSummary4.getAuthor() );
            ((TextView) View5.findViewById( 2131493775 )).setText( (CharSequence) new StringBuilder().append( BookSummary4.getLatelyFollower() ).toString() );
            long6 = (long) BookSummary4.getWordCount();
            if( long6 > 10000L )
            {
                long6 = long6 / 10000L;
                Object8 = " \u4E07\u5B57";
            }
            else if( long6 > 100L )
            {
                long6 = long6 / 100L;
                Object8 = " \u767E\u5B57";
            }
            else
                Object8 = " \u5B57";
            ((TextView) View5.findViewById( 2131493776 )).setText( (CharSequence) new StringBuilder().append( long6 ).toString() );
            ((TextView) View5.findViewById( 2131493777 )).setText( (CharSequence) Object8 );
            EditText9 = (EditText) View5.findViewById( 2131494013 );
            if( BookSummary4.getAppendComment() != null && !BookSummary4.getAppendComment().equals( "" ) )
                EditText9.setText( (CharSequence) BookSummary4.getAppendComment() );
            else
                EditText9.setText( (CharSequence) UGCGuideEditBooksActivity1.a.get( BookSummary4.getId() ) );
            Editable10 = EditText9.getText();
            if( Editable10 != null )
                Selection.setSelection( (Spannable) EditText9.getText(), Editable10.length() );
            new uk.me.lewisdeane.ldialogs.h( (Context) UGCGuideEditBooksActivity1 ).a( View5 ).a( "\u4FDD\u5B58", (DialogInterface$OnClickListener) new K( UGCGuideEditBooksActivity1, BookSummary4, EditText9 ) ).b( 2131034129, (DialogInterface$OnClickListener) new J( UGCGuideEditBooksActivity1, BookSummary4, EditText9 ) ).a().show();
            new Handler().postDelayed( (Runnable) new L( UGCGuideEditBooksActivity1 ), 200L );
        }
    }

    private void b()
    {
        UGCNewCollection UGCNewCollection1 = e();

        e.a( (Collection) UGCNewCollection1.getBooks() );
        if( UGCNewCollection1.getBooks() != null && UGCNewCollection1.getBooks().size() == 0 )
            c.setVisibility( 0 );
        else
            c.setVisibility( 8 );
    }

    static void b(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1, int int2)
    {
        List List3 = e().getBooks();

        if( List3 != null && List3.size() != 0 )
        {
            BookSummary BookSummary4 = (BookSummary) List3.get( int2 );
            uk.me.lewisdeane.ldialogs.h h5 = new uk.me.lewisdeane.ldialogs.h( (Context) UGCGuideEditBooksActivity1 );

            h5.e = "\u786E\u8BA4\u5220\u9664\u672C\u4E66\uFF1F";
            h5.a( 2131034424, (DialogInterface$OnClickListener) new M( UGCGuideEditBooksActivity1, List3, BookSummary4 ) ).b( 2131034129, null ).a().show();
        }
    }

    static boolean b(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        Object[] Object_1darray2;

        if( UGCGuideEditBooksActivity1.e.getCount() >= 8 )
            return true;
        Object_1darray2 = new Object[1];
        Object_1darray2[0] = Integer.valueOf( 8 );
        com.clilystudio.netbook.util.e.a( (Activity) UGCGuideEditBooksActivity1, String.format( "\u592A\u5C11\u5566\uFF0C\u5355\u4E2A\u4E66\u5355\u81F3\u5C11\u9700\u8981%d\u672C\u5C0F\u8BF4\u54E6", Object_1darray2 ) );
        return false;
    }

    static void c(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        UGCGuideEditBooksActivity1.b();
    }

    static boolean d(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return UGCGuideEditBooksActivity1.h;
    }

    static UGCNewCollection e(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static String f(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return UGCGuideEditBooksActivity1.f;
    }

    static UGCNewCollection g(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static UGCNewCollection h(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static UGCNewCollection i(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static Author j(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return UGCGuideEditBooksActivity1.g;
    }

    static UGCNewCollection k(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static UGCNewCollection l(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static UGCNewCollection m(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    static UGCNewCollection n(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        return e();
    }

    public void onAddShelfBooks(D D1)
    {
        N N2 = new N( this, (Activity) this );
        String[][] String_2darray3 = new String[1][];

        String_2darray3[0] = D1.a();
        N2.b( String_2darray3 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onClick(View View1)
    {
    }

    protected void onCreate(Bundle Bundle1)
    {
        Bundle Bundle2;
        Object Object3;
        Object Object4;
        UGCNewCollection UGCNewCollection5;
        View View6;
        TextView TextView7;
        TextView TextView8;

        super.onCreate( Bundle1 );
        setContentView( 2130903401 );
        i.a().a( this );
        Bundle2 = getIntent().getExtras();
        if( Bundle2 != null && Bundle2.containsKey( "name" ) && Bundle2.containsKey( "desc" ) )
        {
            Object Object9 = Bundle2.getString( "name" );

            Object3 = Bundle2.getString( "desc" );
            Object4 = Object9;
        }
        else
        {
            Object3 = "default_desc";
            Object4 = "default_name";
        }
        f = Bundle2.getString( "ugc_id" );
        g = (Author) Bundle2.getSerializable( "my_author" );
        h = getIntent().getBooleanExtra( "is_draft", false );
        ShareSDK.initSDK( (Context) this );
        if( h || f == null || f.equals( "" ) )
            a( "\u7F16\u8F91\u4E66\u5355", 2131034475, 2131034448, (ab) new H( this ) );
        else
            a( "\u4E66\u5355\u8BE6\u60C5", 2131034448, (aa) new I( this ) );
        UGCNewCollection5 = e();
        UGCNewCollection5.setDesc( (String) Object3 );
        UGCNewCollection5.setTitle( (String) Object4 );
        b = (ListView) findViewById( 2131492924 );
        c = findViewById( 2131494006 );
        View6 = LayoutInflater.from( (Context) this ).inflate( 2130903402, (ViewGroup) b, false );
        TextView7 = (TextView) View6.findViewById( 2131494007 );
        TextView8 = (TextView) View6.findViewById( 2131494008 );
        TextView7.setText( (CharSequence) Object4 );
        TextView8.setText( (CharSequence) Object3 );
        b.addHeaderView( View6, null, false );
        View6.findViewById( 2131494010 ).setOnClickListener( this );
        View6.findViewById( 2131494009 ).setOnClickListener( this );
        e = new Q( this, getLayoutInflater(), 2130903316 );
        b.setAdapter( (ListAdapter) e );
    }

    protected void onDestroy()
    {
        super.onDestroy();
        i.a().b( this );
    }

    public void onResume()
    {
        super.onResume();
        b();
    }
}
