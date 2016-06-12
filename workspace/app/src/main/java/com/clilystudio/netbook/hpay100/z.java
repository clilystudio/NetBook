
package com.clilystudio.netbook.hpay100;

public final class z {

    private int f;
    private int g;
    private String h = "";
    private int i = 1;
    private String j = "";
    private String k = "";
    private int l = 0;
    private int m = 0;
    public String a = "";
    public String b = "";
    public String c = "";
    public String d = "";
    public int e = 0;
    private boolean n = false;

    public final int a()
    {
        return f;
    }

    public final void a(int int1)
    {
        f = int1;
    }

    public final void a(String String1)
    {
        h = String1;
    }

    public final void a(boolean boolean1)
    {
        n = boolean1;
    }

    public final void b(int int1)
    {
        g = int1;
    }

    public final void b(String String1)
    {
        j = String1;
    }

    public final boolean b()
    {
        return n;
    }

    public final void c(int int1)
    {
        i = int1;
    }

    public final void c(String String1)
    {
        k = String1;
    }

    public final void d(int int1)
    {
        l = int1;
    }

    public final void e(int int1)
    {
        m = int1;
    }

    public final String toString()
    {
        return new StringBuilder( "HPaySdkResult [mPayStatus=" ).append( f ).append( ", mFailedType=" ).append( g ).append( ", mFailedMsg=" ).append( h ).append( ", mScheme=" ).append( i ).append( ", mOrderIdHR=" ).append( j ).append( ", mOrderIdAPP=" ).append( k ).append( ", mOrderAmount=" ).append( l ).append( ", mRealAmount=" ).append( m ).append( ", mChID=" ).append( a ).append( ", mChType=" ).append( b ).append( ", mPayName=" ).append( c ).append( ", mPayId=" ).append( d ).append( ", mCodeType=" ).append( e ).append( ", mIsQuery=" ).append( n ).append( "]" ).toString();
    }
}
