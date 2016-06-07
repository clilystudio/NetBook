package android.support.v7.internal.widget;

final class z
  implements Runnable
{
  private z(AdapterViewCompat paramAdapterViewCompat)
  {
  }

  public final void run()
  {
    if (this.a.m)
    {
      if (this.a.c() != null)
        this.a.post(this);
      return;
    }
    AdapterViewCompat.b(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.z
 * JD-Core Version:    0.6.0
 */