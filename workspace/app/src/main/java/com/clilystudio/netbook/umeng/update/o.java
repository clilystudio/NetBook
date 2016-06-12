
package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build$VERSION;
import android.support.design.widget.K;
import com.clilystudio.netbook.umeng.update.net.u;

public final class o implements u {

    private K c = null;
    private String d = null;
    private String e = null;
    private String f = null;
    private String g = null;
    private Context h = null;
    private String i = null;
    private com.clilystudio.netbook.umeng.update.net.i j = null;
    private boolean k = false;
    private final String a = "delta_update";
    private final String b = "update_normal";

    private void a(com.clilystudio.netbook.umeng.update.net.i i1)
    {
        int int3;

        try
        {
            int3 = h.getPackageManager().getPackageInfo( h.getPackageName(), 0 ).applicationInfo.targetSdkVersion;
        }
        catch( Exception Exception2 )
        {
            int3 = 0;
        }
        if( Build$VERSION.SDK_INT >= 16 && int3 >= 14 && k.h() && !com.clilystudio.netbook.umeng.update.k.e() )
            i1.a( true );
        i1.b( k.e() );
        i1.c( k.e() );
        i1.a();
    }

    public final void a(int int1)
    {
        switch( int1 )
        {
            case 3:
            case 4:
            case 5:
            default:
                return;
            case 7:
            case 2:
                k = true;
                return;
            case 6:
                k = false;
                return;
        }
    }

    public final void a(int int1, String String2)
    {
        switch( int1 )
        {
            case 3:
                c();
                break;
            case 0:
            case 1:
            case 2:
            default:
                break;
        }
        k = false;
    }

    public final void a(Context Context1, String String2, String String3, String String4, String String5, K K6)
    {
        h = Context1;
        i = u.a.a.h( Context1 );
        d = String2;
        e = String3;
        f = String4;
        g = String5;
        c = K6;
    }

    public final boolean a()
    {
        return k;
    }

    public final void b()
    {
        j = new com.clilystudio.netbook.umeng.update.net.i( h, a, i, f, this );
        j.a( g );
        j.b( e );
        a( j );
    }

    public final void c()
    {
        j = new com.clilystudio.netbook.umeng.update.net.i( h, b, i, d, this );
        j.a( e );
        j.b( e );
        a( j );
    }

    public final void d()
    {
        k = true;
    }
}
