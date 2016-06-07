package butterknife;

import android.app.Activity;
import android.content.Context;
import android.view.View;

 enum ButterKnife$Finder$2
{
  public final View findOptionalView(Object paramObject, int paramInt)
  {
    return ((Activity)paramObject).findViewById(paramInt);
  }

  protected final Context getContext(Object paramObject)
  {
    return (Activity)paramObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.ButterKnife.Finder.2
 * JD-Core Version:    0.6.0
 */