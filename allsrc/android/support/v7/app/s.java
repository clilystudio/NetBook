package android.support.v7.app;

final class s
  implements Runnable
{
  s(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7)
  {
  }

  public final void run()
  {
    if ((0x1 & AppCompatDelegateImplV7.a(this.a)) != 0)
      AppCompatDelegateImplV7.a(this.a, 0);
    if ((0x100 & AppCompatDelegateImplV7.a(this.a)) != 0)
      AppCompatDelegateImplV7.a(this.a, 8);
    AppCompatDelegateImplV7.a(this.a, false);
    AppCompatDelegateImplV7.b(this.a, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.s
 * JD-Core Version:    0.6.0
 */