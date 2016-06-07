package butterknife;

import android.app.Dialog;
import android.content.Context;
import android.view.View;

 enum ButterKnife$Finder$3
{
  public final View findOptionalView(Object paramObject, int paramInt)
  {
    return ((Dialog)paramObject).findViewById(paramInt);
  }

  protected final Context getContext(Object paramObject)
  {
    return ((Dialog)paramObject).getContext();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.ButterKnife.Finder.3
 * JD-Core Version:    0.6.0
 */