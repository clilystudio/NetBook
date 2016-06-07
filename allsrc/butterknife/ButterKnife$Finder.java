package butterknife;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import java.util.List;

public enum ButterKnife$Finder
{
  static
  {
    ACTIVITY = new ButterKnife.Finder.2("ACTIVITY", 1);
    DIALOG = new ButterKnife.Finder.3("DIALOG", 2);
    Finder[] arrayOfFinder = new Finder[3];
    arrayOfFinder[0] = VIEW;
    arrayOfFinder[1] = ACTIVITY;
    arrayOfFinder[2] = DIALOG;
    $VALUES = arrayOfFinder;
  }

  public static <T extends View> T[] arrayOf(T[] paramArrayOfT)
  {
    return paramArrayOfT;
  }

  public static <T extends View> List<T> listOf(T[] paramArrayOfT)
  {
    return new ImmutableViewList(paramArrayOfT);
  }

  public abstract View findOptionalView(Object paramObject, int paramInt);

  public View findRequiredView(Object paramObject, int paramInt, String paramString)
  {
    View localView = findOptionalView(paramObject, paramInt);
    if (localView == null)
    {
      String str = getContext(paramObject).getResources().getResourceEntryName(paramInt);
      throw new IllegalStateException("Required view '" + str + "' with ID " + paramInt + " for " + paramString + " was not found. If this view is optional add '@Optional' annotation.");
    }
    return localView;
  }

  protected abstract Context getContext(Object paramObject);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.ButterKnife.Finder
 * JD-Core Version:    0.6.0
 */