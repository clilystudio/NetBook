package com.xiaomi.kenai.jbosh;

import java.util.ArrayList;
import java.util.Collections;
import java.util.EventObject;
import java.util.List;

public final class w extends EventObject
{
  private final boolean a;
  private final List<h> b;
  private final Throwable c;

  private w(F paramF, boolean paramBoolean, List<h> paramList, Throwable paramThrowable)
  {
    super(paramF);
    this.a = paramBoolean;
    this.c = paramThrowable;
    if (this.a)
    {
      if (paramThrowable != null)
        throw new IllegalStateException("Cannot be connected and have a cause");
      if ((paramList != null) && (paramList.size() > 0))
        throw new IllegalStateException("Cannot be connected and have outstanding requests");
    }
    if (paramList == null)
    {
      this.b = Collections.emptyList();
      return;
    }
    this.b = Collections.unmodifiableList(new ArrayList(paramList));
  }

  static w a(F paramF)
  {
    return new w(paramF, true, null, null);
  }

  static w a(F paramF, List<h> paramList, Throwable paramThrowable)
  {
    return new w(paramF, false, paramList, paramThrowable);
  }

  static w b(F paramF)
  {
    return new w(paramF, false, null, null);
  }

  public final boolean a()
  {
    return this.a;
  }

  public final Throwable b()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.w
 * JD-Core Version:    0.6.0
 */