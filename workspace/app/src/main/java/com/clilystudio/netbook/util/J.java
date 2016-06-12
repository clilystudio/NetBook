
package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.AsyncTask;
import android.support.design.widget.am;
import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.model.Account;

public class J {

    private J(Context Context1)
    {
        d = Context1;
    }

    private static J a;
    private int b;
    private int c;
    private Context d;

    static int a(J J1, int int2)
    {
        J1.b = int2;
        return int2;
    }

    static Context a(J J1)
    {
        return J1.d;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static J a(Context Context1)
    {
    }

    static int b(J J1, int int2)
    {
        J1.c = int2;
        return int2;
    }

    public final int a()
    {
        return b;
    }

    public final void a(int int1)
    {
        b = 0;
    }

    public final void a(Account Account1)
    {
        if( Account1 != null )
        {
            K K2 = new K( this );
            String[] String_1darray3 = new String[1];

            String_1darray3[0] = Account1.getToken();
            K2.b( String_1darray3 );
        }
    }

    public final int b()
    {
        return c;
    }

    public final void b(int int1)
    {
        c = 0;
    }

    public final void c()
    {
        Account Account1 = am.e();

        if( Account1 != null )
        {
            L L2 = new L( this );
            String[] String_1darray3 = new String[1];

            String_1darray3[0] = Account1.getToken();
            L2.b( String_1darray3 );
        }
    }

    public final void d()
    {
        Account Account1 = am.e();

        if( Account1 != null )
        {
            M M2 = new M( this );
            String[] String_1darray3 = new String[1];

            String_1darray3[0] = Account1.getToken();
            M2.b( String_1darray3 );
        }
    }

    public final int e()
    {
        Account Account1 = am.e();

        if( Account1 != null )
        {
            if( b != 0 || c == 0 )
                return b;
            if( AccountInfo.getPreUnimpCount( Account1.getToken() ) < c )
                return -1;
        }
        return 0;
    }
}
