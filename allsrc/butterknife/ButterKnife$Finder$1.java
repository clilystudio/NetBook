package butterknife;

import android.content.Context;
import android.view.View;

 enum ButterKnife$Finder$1
{
  public final View findOptionalView(Object paramObject, int paramInt)
  {
    return ((View)paramObject).findViewById(paramInt);
  }

  protected final Context getContext(Object paramObject)
  {
    return ((View)paramObject).getContext();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.ButterKnife.Finder.1
 * JD-Core Version:    0.6.0
 */