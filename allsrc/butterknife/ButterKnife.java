package butterknife;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ButterKnife
{
  static final Map<Class<?>, Method> INJECTORS;
  static final Method NO_OP;
  static final Map<Class<?>, Method> RESETTERS;
  private static final String TAG = "ButterKnife";
  private static boolean debug = false;

  static
  {
    INJECTORS = new LinkedHashMap();
    RESETTERS = new LinkedHashMap();
    NO_OP = null;
  }

  private ButterKnife()
  {
    throw new AssertionError("No instances.");
  }

  @TargetApi(14)
  public static <T extends View, V> void apply(List<T> paramList, Property<? super T, V> paramProperty, V paramV)
  {
    int i = 0;
    int j = paramList.size();
    while (i < j)
    {
      paramProperty.set(paramList.get(i), paramV);
      i++;
    }
  }

  public static <T extends View> void apply(List<T> paramList, ButterKnife.Action<? super T> paramAction)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
      paramAction.apply((View)paramList.get(j), j);
  }

  public static <T extends View, V> void apply(List<T> paramList, ButterKnife.Setter<? super T, V> paramSetter, V paramV)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
      paramSetter.set((View)paramList.get(j), paramV, j);
  }

  public static <T extends View> T findById(Activity paramActivity, int paramInt)
  {
    return paramActivity.findViewById(paramInt);
  }

  public static <T extends View> T findById(Dialog paramDialog, int paramInt)
  {
    return paramDialog.findViewById(paramInt);
  }

  public static <T extends View> T findById(View paramView, int paramInt)
  {
    return paramView.findViewById(paramInt);
  }

  private static Method findInjectorForClass(Class<?> paramClass)
  {
    Method localMethod1 = (Method)INJECTORS.get(paramClass);
    if (localMethod1 != null)
    {
      if (debug)
        Log.d("ButterKnife", "HIT: Cached in injector map.");
      return localMethod1;
    }
    String str = paramClass.getName();
    if ((str.startsWith("android.")) || (str.startsWith("java.")))
    {
      if (debug)
        Log.d("ButterKnife", "MISS: Reached framework class. Abandoning search.");
      return NO_OP;
    }
    try
    {
      localMethod2 = Class.forName(str + "$$ViewInjector").getMethod("inject", new Class[] { ButterKnife.Finder.class, paramClass, Object.class });
      if (debug)
        Log.d("ButterKnife", "HIT: Class loaded injection class.");
      INJECTORS.put(paramClass, localMethod2);
      return localMethod2;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
      {
        if (debug)
          Log.d("ButterKnife", "Not found. Trying superclass " + paramClass.getSuperclass().getName());
        Method localMethod2 = findInjectorForClass(paramClass.getSuperclass());
      }
    }
  }

  private static Method findResettersForClass(Class<?> paramClass)
  {
    Method localMethod1 = (Method)RESETTERS.get(paramClass);
    if (localMethod1 != null)
    {
      if (debug)
        Log.d("ButterKnife", "HIT: Cached in injector map.");
      return localMethod1;
    }
    String str = paramClass.getName();
    if ((str.startsWith("android.")) || (str.startsWith("java.")))
    {
      if (debug)
        Log.d("ButterKnife", "MISS: Reached framework class. Abandoning search.");
      return NO_OP;
    }
    try
    {
      localMethod2 = Class.forName(str + "$$ViewInjector").getMethod("reset", new Class[] { paramClass });
      if (debug)
        Log.d("ButterKnife", "HIT: Class loaded injection class.");
      RESETTERS.put(paramClass, localMethod2);
      return localMethod2;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
      {
        if (debug)
          Log.d("ButterKnife", "Not found. Trying superclass " + paramClass.getSuperclass().getName());
        Method localMethod2 = findResettersForClass(paramClass.getSuperclass());
      }
    }
  }

  public static void inject(Activity paramActivity)
  {
    inject(paramActivity, paramActivity, ButterKnife.Finder.ACTIVITY);
  }

  public static void inject(Dialog paramDialog)
  {
    inject(paramDialog, paramDialog, ButterKnife.Finder.DIALOG);
  }

  public static void inject(View paramView)
  {
    inject(paramView, paramView, ButterKnife.Finder.VIEW);
  }

  public static void inject(Object paramObject, Activity paramActivity)
  {
    inject(paramObject, paramActivity, ButterKnife.Finder.ACTIVITY);
  }

  public static void inject(Object paramObject, Dialog paramDialog)
  {
    inject(paramObject, paramDialog, ButterKnife.Finder.DIALOG);
  }

  public static void inject(Object paramObject, View paramView)
  {
    inject(paramObject, paramView, ButterKnife.Finder.VIEW);
  }

  static void inject(Object paramObject1, Object paramObject2, ButterKnife.Finder paramFinder)
  {
    Class localClass = paramObject1.getClass();
    Throwable localThrowable;
    try
    {
      if (debug)
        Log.d("ButterKnife", "Looking up view injector for " + localClass.getName());
      Method localMethod = findInjectorForClass(localClass);
      if (localMethod != null)
        localMethod.invoke(null, new Object[] { paramFinder, paramObject1, paramObject2 });
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localThrowable)
    {
      if ((localException instanceof InvocationTargetException))
        localThrowable = localException.getCause();
    }
    throw new RuntimeException("Unable to inject views for " + paramObject1, localThrowable);
  }

  public static void reset(Object paramObject)
  {
    Class localClass = paramObject.getClass();
    Throwable localThrowable;
    try
    {
      if (debug)
        Log.d("ButterKnife", "Looking up view injector for " + localClass.getName());
      Method localMethod = findResettersForClass(localClass);
      if (localMethod != null)
        localMethod.invoke(null, new Object[] { paramObject });
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localThrowable)
    {
      if ((localException instanceof InvocationTargetException))
        localThrowable = localException.getCause();
    }
    throw new RuntimeException("Unable to reset views for " + paramObject, localThrowable);
  }

  public static void setDebug(boolean paramBoolean)
  {
    debug = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.ButterKnife
 * JD-Core Version:    0.6.0
 */