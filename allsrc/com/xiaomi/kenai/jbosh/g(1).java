package com.xiaomi.kenai.jbosh;

final class g
{
  private final B a;
  private final D b;
  private final C c;
  private final z d;
  private final x e;
  private final boolean f;

  private g(B paramB, D paramD, C paramC, z paramz, v paramv, A paramA, u paramu, r paramr, x paramx, s params, t paramt, boolean paramBoolean)
  {
    this.a = paramB;
    this.b = paramD;
    this.c = paramC;
    this.d = paramz;
    this.e = paramx;
    this.f = paramBoolean;
  }

  static g a(p paramp1, p paramp2)
  {
    s locals = s.a(paramp2.a(E.b));
    String str = paramp1.a(E.m);
    if ((locals != null) && (((String)locals.a()).equals(str)));
    for (boolean bool = true; ; bool = false)
      return new g(B.a(a(paramp2, E.o)), D.a(a(paramp2, E.t)), C.a(paramp2.a(E.s)), z.a(paramp2.a(E.j)), v.a(paramp2.a(E.g)), A.a(paramp2.a(E.l)), u.a(paramp2.a(E.f)), r.a(paramp2.a(E.a)), x.a(paramp2.a(E.h)), locals, t.a(paramp2.a(E.c)), bool);
  }

  private static String a(p paramp, f paramf)
  {
    String str = paramp.a(paramf);
    if (str == null)
      throw new aa("Connection Manager session creation response did not include required '" + paramf.b() + "' attribute");
    return str;
  }

  final B a()
  {
    return this.a;
  }

  final D b()
  {
    return this.b;
  }

  final C c()
  {
    return this.c;
  }

  final z d()
  {
    return this.d;
  }

  final x e()
  {
    return this.e;
  }

  final boolean f()
  {
    return this.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.g
 * JD-Core Version:    0.6.0
 */