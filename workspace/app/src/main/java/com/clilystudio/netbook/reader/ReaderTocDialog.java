
package com.clilystudio.netbook.reader;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.clilystudio.netbook.model.ChapterLink;
import java.util.LinkedList;
import java.util.Map;

public class ReaderTocDialog extends DialogFragment implements AdapterView$OnItemClickListener {

    private cf a;
    private ListView b;
    private TextView c;
    private Reader d;
    private DialogInterface$OnClickListener e;
    private DialogInterface$OnCancelListener f;
    private DialogInterface$OnDismissListener g;
    private LinkedList h;
    private int i;

    private int a(int int1)
    {
        return -1 + d.f() - int1;
    }

    static int a(ReaderTocDialog ReaderTocDialog1)
    {
        return ReaderTocDialog1.i;
    }

    static int a(ReaderTocDialog ReaderTocDialog1, int int2)
    {
        return ReaderTocDialog1.a( int2 );
    }

    public static ReaderTocDialog a()
    {
        return new ReaderTocDialog();
    }

    private boolean a(ChapterLink ChapterLink1)
    {
        if( !ChapterLink1.isVip() )
            return true;
        else
        {
            boolean boolean4;

            try
            {
                String String3 = ChapterLink1.getLink().substring( 1 + ChapterLink1.getLink().lastIndexOf( "/" ) );

                boolean4 = d.e().containsKey( String3 );
            }
            catch( Exception Exception2 )
            {
                return true;
            }
            return boolean4;
        }
    }

    static boolean a(ReaderTocDialog ReaderTocDialog1, ChapterLink ChapterLink2)
    {
        return ReaderTocDialog1.a( ChapterLink2 );
    }

    static Reader b(ReaderTocDialog ReaderTocDialog1)
    {
        return ReaderTocDialog1.d;
    }

    static LinkedList c(ReaderTocDialog ReaderTocDialog1)
    {
        return ReaderTocDialog1.h;
    }

    public final void a(DialogInterface$OnCancelListener OnCancelListener1)
    {
        f = OnCancelListener1;
    }

    public final void a(DialogInterface$OnClickListener OnClickListener1)
    {
        e = OnClickListener1;
    }

    public final void a(DialogInterface$OnDismissListener OnDismissListener1)
    {
        g = OnDismissListener1;
    }

    public final void a(Reader Reader1)
    {
        d = Reader1;
    }

    public final void a(Reader Reader1, LinkedList LinkedList2)
    {
        d = Reader1;
        h = LinkedList2;
    }

    public void onCancel(DialogInterface DialogInterface1)
    {
        if( f != null )
            f.onCancel( DialogInterface1 );
        super.onCancel( DialogInterface1 );
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        if( bZ.a( (Context) getActivity() ) )
            i = 2131165538;
        else
            i = 2131165537;
        setStyle( 1, i );
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View4 = LayoutInflater1.inflate( 2130903200, ViewGroup2, false );

        c = (TextView) View4.findViewById( 2131493419 );
        b = (ListView) View4.findViewById( 2131493421 );
        a = new cf( this, LayoutInflater.from( (Context) new ContextThemeWrapper( (Context) getActivity(), i ) ) );
        b.setOnItemClickListener( this );
        b.setAdapter( (ListAdapter) a );
        if( com.clilystudio.netbook.hpay100.a.a.i() )
            b.setFastScrollAlwaysVisible( true );
        return View4;
    }

    public void onDismiss(DialogInterface DialogInterface1)
    {
        if( g != null )
            g.onDismiss( DialogInterface1 );
        super.onDismiss( DialogInterface1 );
    }

    public void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        if( e != null )
            e.onClick( (DialogInterface) getDialog(), a( int3 ) );
    }

    public void onResume()
    {
        cf cf1;
        ChapterLink[] ChapterLink_1darray2;

        super.onResume();
        cf1 = a;
        ChapterLink_1darray2 = d.h();
        if( ChapterLink_1darray2 != null )
        {
            int int3 = ChapterLink_1darray2.length;

            if( ChapterLink_1darray2 != null )
            {
                int int4 = 0;
                int int5 = -1 + Math.min( ChapterLink_1darray2.length, int3 );

                while( int5 > int4 )
                {
                    ChapterLink ChapterLink6 = ChapterLink_1darray2[int5];

                    ChapterLink_1darray2[int5] = ChapterLink_1darray2[int4];
                    ChapterLink_1darray2[int4] = ChapterLink6;
                    --int5;
                    ++int4;
                }
            }
        }
        cf1.a( ChapterLink_1darray2 );
    }

    public void onStart()
    {
        super.onStart();
        if( d == null )
            dismissAllowingStateLoss();
        else
        {
            int int1;

            c.setText( (CharSequence) d.j() );
            int1 = d.k();
            if( int1 == -1 )
                b.setSelection( 0 );
            else
                b.setSelection( Math.max( -4 + a( int1 ), 0 ) );
        }
    }
}
