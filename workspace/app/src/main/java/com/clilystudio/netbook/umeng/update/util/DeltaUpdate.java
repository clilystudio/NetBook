
package com.clilystudio.netbook.umeng.update.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.File;
import u.a.g;

public class DeltaUpdate {

    private static boolean a;

    public static int a(String String1, String String2, String String3)
    {
        return bspatch( String1, String2, String3 );
    }

    public static String a(Context Context1)
    {
        return Context1.getApplicationInfo().sourceDir;
    }

    public static boolean a()
    {
        return a;
    }

    public static String b(Context Context1)
    {
        String String2 = Context1.getApplicationInfo().sourceDir;

        if( !( new File( String2 ).exists() ) )
            return "";
        else
            return g.a( new File( String2 ) );
    }

    public static native int bspatch(String String1, String String2, String String3);

    static 
    {
exit_point:
        {
            try
            {
                System.loadLibrary( "bspatch" );
                a = true;
            }
            catch( UnsatisfiedLinkError UnsatisfiedLinkError1 )
            {
                a = false;
                break exit_point;
            }
            return;
        }
    }
}
