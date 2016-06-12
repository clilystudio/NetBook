
package com.clilystudio.netbook.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;

public final class A {

    public A(Activity Activity1)
    {
        a = Activity1;
    }

    private Activity a;
    private ProgressBar b;
    private TextView c;
    private Dialog d;
    private String g;
    private String h;
    private int i;
    private String e = "";
    private String f = "";
    private Runnable j = new B( this );
    private Handler k = new C( this );

    static int a(A A1, int int2)
    {
        A1.i = int2;
        return int2;
    }

    static String a(A A1)
    {
        return A1.e;
    }

    static String a(A A1, String String2)
    {
        A1.e = String2;
        return String2;
    }

    static Handler b(A A1)
    {
        return A1.k;
    }

    static String b(A A1, String String2)
    {
        A1.f = String2;
        return String2;
    }

    static String c(A A1)
    {
        return A1.f;
    }

    static String c(A A1, String String2)
    {
        A1.g = String2;
        return String2;
    }

    static int d(A A1)
    {
        return A1.i;
    }

    static String d(A A1, String String2)
    {
        A1.h = String2;
        return String2;
    }

    static ProgressBar e(A A1)
    {
        return A1.b;
    }

    static String f(A A1)
    {
        return A1.h;
    }

    static String g(A A1)
    {
        return A1.g;
    }

    static TextView h(A A1)
    {
        return A1.c;
    }

    static void i(A A1)
    {
        try
        {
            A1.d.dismiss();
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return;
        }
    }

    static Activity j(A A1)
    {
        return A1.a;
    }

    public final void a()
    {
        uk.me.lewisdeane.ldialogs.h h1 = new uk.me.lewisdeane.ldialogs.h( (Context) a );
        View View2;

        h1.d = "\u6B63\u5728\u4E0B\u8F7D";
        View2 = LayoutInflater.from( (Context) a ).inflate( 2130903328, null );
        b = (ProgressBar) View2.findViewById( 2131493800 );
        c = (TextView) View2.findViewById( 2131493801 );
        h1.a( View2 );
        d = (Dialog) h1.a();
        d.setCanceledOnTouchOutside( false );
        d.show();
        new Thread( j ).start();
    }
}
