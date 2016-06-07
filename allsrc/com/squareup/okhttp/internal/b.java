package com.squareup.okhttp.internal;

import android.support.design.widget.K;
import com.squareup.okhttp.C;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.n;
import com.squareup.okhttp.p;
import com.squareup.okhttp.v;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

public abstract class b
{
  public static final Logger a = Logger.getLogger(com.squareup.okhttp.A.class.getName());
  public static b b;

  public abstract K a(com.squareup.okhttp.A paramA);

  public abstract com.squareup.okhttp.internal.http.A a(com.squareup.okhttp.m paramm, com.squareup.okhttp.internal.http.m paramm1);

  public abstract void a(com.squareup.okhttp.A paramA, com.squareup.okhttp.m paramm, com.squareup.okhttp.internal.http.m paramm1, C paramC);

  public abstract void a(com.squareup.okhttp.m paramm, Protocol paramProtocol);

  public abstract void a(n paramn, com.squareup.okhttp.m paramm);

  public abstract void a(p paramp, SSLSocket paramSSLSocket, boolean paramBoolean);

  public abstract void a(v paramv, String paramString);

  public abstract boolean a(com.squareup.okhttp.m paramm);

  public abstract int b(com.squareup.okhttp.m paramm);

  public abstract k b(com.squareup.okhttp.A paramA);

  public abstract void b(com.squareup.okhttp.m paramm, com.squareup.okhttp.internal.http.m paramm1);

  public abstract d c(com.squareup.okhttp.A paramA);

  public abstract boolean c(com.squareup.okhttp.m paramm);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.b
 * JD-Core Version:    0.6.0
 */