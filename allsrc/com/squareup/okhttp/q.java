package com.squareup.okhttp;

public final class q
{
  private boolean a;
  private String[] b;
  private String[] c;
  private boolean d;

  public q(p paramp)
  {
    this.a = paramp.d;
    this.b = p.a(paramp);
    this.c = p.b(paramp);
    this.d = paramp.e;
  }

  q(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public final p a()
  {
    return new p(this, 0);
  }

  public final q a(boolean paramBoolean)
  {
    if (!this.a)
      throw new IllegalStateException("no TLS extensions for cleartext connections");
    this.d = true;
    return this;
  }

  public final q a(CipherSuite[] paramArrayOfCipherSuite)
  {
    if (!this.a)
      throw new IllegalStateException("no cipher suites for cleartext connections");
    String[] arrayOfString = new String[paramArrayOfCipherSuite.length];
    for (int i = 0; i < paramArrayOfCipherSuite.length; i++)
      arrayOfString[i] = paramArrayOfCipherSuite[i].javaName;
    this.b = arrayOfString;
    return this;
  }

  public final q a(TlsVersion[] paramArrayOfTlsVersion)
  {
    if (!this.a)
      throw new IllegalStateException("no TLS versions for cleartext connections");
    if (paramArrayOfTlsVersion.length == 0)
      throw new IllegalArgumentException("At least one TlsVersion is required");
    String[] arrayOfString = new String[paramArrayOfTlsVersion.length];
    for (int i = 0; i < paramArrayOfTlsVersion.length; i++)
      arrayOfString[i] = paramArrayOfTlsVersion[i].javaName;
    this.c = arrayOfString;
    return this;
  }

  public final q a(String[] paramArrayOfString)
  {
    if (!this.a)
      throw new IllegalStateException("no cipher suites for cleartext connections");
    if (paramArrayOfString == null)
    {
      this.b = null;
      return this;
    }
    this.b = ((String[])paramArrayOfString.clone());
    return this;
  }

  public final q b(String[] paramArrayOfString)
  {
    if (!this.a)
      throw new IllegalStateException("no TLS versions for cleartext connections");
    if (paramArrayOfString == null)
    {
      this.c = null;
      return this;
    }
    this.c = ((String[])paramArrayOfString.clone());
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.q
 * JD-Core Version:    0.6.0
 */