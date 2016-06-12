
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;

public abstract class BaseLoadingFragment extends Fragment {

    private ViewGroup a;
    private View b;
    private View c;
    private View d;
    private View[] e;

    private void a(View View1)
    {
        int int2 = 0;

        if( View1 != null )
        {
            View[] View_1darray3;
            int int4;

            View1.setVisibility( 0 );
            View_1darray3 = e;
            int4 = View_1darray3.length;
            while( int2 < int4 )
            {
                View View5 = View_1darray3[int2];

                if( View1 != View5 )
                    View5.setVisibility( 8 );
                ++int2;
            }
        }
    }

    protected abstract int a();

    protected abstract void b();

    public final void c()
    {
        a( (View) a );
    }

    public final void d()
    {
        a( d );
    }

    public final void e()
    {
        a( c );
    }

    public final void f()
    {
        a( b );
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View4 = LayoutInflater1.inflate( 2130903109, ViewGroup2, false );
        Object[] Object_1darray6;

        a = (ViewGroup) View4.findViewById( 2131492905 );
        b = View4.findViewById( 2131493102 );
        c = View4.findViewById( 2131493103 );
        d = View4.findViewById( 2131493104 );
        LayoutInflater.from( (Context) getActivity() ).inflate( a(), a );
        Object_1darray6 = new View[4];
        Object_1darray6[0] = a;
        Object_1darray6[1] = b;
        Object_1darray6[2] = c;
        Object_1darray6[3] = d;
        e = (View[]) Object_1darray6;
        c.setOnClickListener( (View$OnClickListener) new ad( this ) );
        return View4;
    }
}
