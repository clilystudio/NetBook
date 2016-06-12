
package com.clilystudio.netbook.umeng.a;

import android.content.Context;
import u.aly.bs;

public final class a {

    private static int[] m;
    private static String j = null;
    private static String k = null;
    public static String a = null;
    public static String b = null;
    public static String c = "";
    public static String d = "";
    private static double[] l = null;
    public static boolean e = true;
    public static boolean f = true;
    public static boolean g = true;
    public static long h = 30000L;
    public static boolean i = true;

    public static String a(Context Context1)
    {
        if( j == null )
            j = bs.j( Context1 );
        return j;
    }

    public static void a(int int1, int int2)
    {
        if( m == null )
            m = new int[2];
        m[0] = int1;
        m[1] = int2;
    }

    public static double[] a()
    {
        return null;
    }

    public static String b(Context Context1)
    {
        if( k == null )
            k = bs.n( Context1 );
        return k;
    }

    public static int[] c(Context Context1)
    {
        if( m == null )
            m = o.a( Context1 ).a();
        return m;
    }
}
