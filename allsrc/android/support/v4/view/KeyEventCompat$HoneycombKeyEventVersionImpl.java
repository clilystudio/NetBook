package android.support.v4.view;

class KeyEventCompat$HoneycombKeyEventVersionImpl extends KeyEventCompat.EclairKeyEventVersionImpl
{
  public boolean metaStateHasModifiers(int paramInt1, int paramInt2)
  {
    return KeyEventCompatHoneycomb.metaStateHasModifiers(paramInt1, paramInt2);
  }

  public boolean metaStateHasNoModifiers(int paramInt)
  {
    return KeyEventCompatHoneycomb.metaStateHasNoModifiers(paramInt);
  }

  public int normalizeMetaState(int paramInt)
  {
    return KeyEventCompatHoneycomb.normalizeMetaState(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.KeyEventCompat.HoneycombKeyEventVersionImpl
 * JD-Core Version:    0.6.0
 */