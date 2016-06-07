package butterknife.internal;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ViewInjector
{
  private final String className;
  private final String classPackage;
  private final Map<CollectionBinding, int[]> collectionBindings = new LinkedHashMap();
  private String parentInjector;
  private final String targetClass;
  private final Map<Integer, ViewInjection> viewIdMap = new LinkedHashMap();

  ViewInjector(String paramString1, String paramString2, String paramString3)
  {
    this.classPackage = paramString1;
    this.className = paramString2;
    this.targetClass = paramString3;
  }

  static void emitCastIfNeeded(StringBuilder paramStringBuilder, String paramString)
  {
    emitCastIfNeeded(paramStringBuilder, "android.view.View", paramString);
  }

  static void emitCastIfNeeded(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    if (!paramString1.equals(paramString2))
      paramStringBuilder.append('(').append(paramString2).append(") ");
  }

  private void emitCollectionBinding(StringBuilder paramStringBuilder, CollectionBinding paramCollectionBinding, int[] paramArrayOfInt)
  {
    paramStringBuilder.append("    target.").append(paramCollectionBinding.getName()).append(" = ");
    int i;
    switch (ViewInjector.1.$SwitchMap$butterknife$internal$CollectionBinding$Kind[paramCollectionBinding.getKind().ordinal()])
    {
    default:
      throw new IllegalStateException("Unknown kind: " + paramCollectionBinding.getKind());
    case 1:
      paramStringBuilder.append("Finder.arrayOf(");
      i = 0;
      label89: if (i >= paramArrayOfInt.length)
        break label199;
      if (i > 0)
        paramStringBuilder.append(',');
      paramStringBuilder.append("\n        ");
      emitCastIfNeeded(paramStringBuilder, paramCollectionBinding.getType());
      if (!paramCollectionBinding.isRequired())
        break;
      paramStringBuilder.append("finder.findRequiredView(source, ").append(paramArrayOfInt[i]).append(", \"").append(paramCollectionBinding.getName()).append("\")");
    case 2:
    }
    while (true)
    {
      i++;
      break label89;
      paramStringBuilder.append("Finder.listOf(");
      break;
      paramStringBuilder.append("finder.findOptionalView(source, ").append(paramArrayOfInt[i]).append(")");
    }
    label199: paramStringBuilder.append("\n    );");
  }

  static void emitHumanDescription(StringBuilder paramStringBuilder, List<Binding> paramList)
  {
    int i;
    int j;
    switch (paramList.size())
    {
    default:
      i = paramList.size();
      j = 0;
    case 1:
      while (j < i)
      {
        Binding localBinding = (Binding)paramList.get(j);
        if (j != 0)
          paramStringBuilder.append(", ");
        if (j == i - 1)
          paramStringBuilder.append("and ");
        paramStringBuilder.append(localBinding.getDescription());
        j++;
        continue;
        paramStringBuilder.append(((Binding)paramList.get(0)).getDescription());
      }
      return;
    case 2:
    }
    paramStringBuilder.append(((Binding)paramList.get(0)).getDescription()).append(" and ").append(((Binding)paramList.get(1)).getDescription());
  }

  private void emitInject(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("  public static void inject(Finder finder, final ").append(this.targetClass).append(" target, Object source) {\n");
    if (this.parentInjector != null)
      paramStringBuilder.append("    ").append(this.parentInjector).append(".inject(finder, target, source);\n\n");
    paramStringBuilder.append("    View view;\n");
    Iterator localIterator1 = this.viewIdMap.values().iterator();
    while (localIterator1.hasNext())
      emitViewInjection(paramStringBuilder, (ViewInjection)localIterator1.next());
    Iterator localIterator2 = this.collectionBindings.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      emitCollectionBinding(paramStringBuilder, (CollectionBinding)localEntry.getKey(), (int[])localEntry.getValue());
    }
    paramStringBuilder.append("  }\n");
  }

  private void emitListenerBindings(StringBuilder paramStringBuilder, ViewInjection paramViewInjection)
  {
    Map localMap1 = paramViewInjection.getListenerBindings();
    if (localMap1.isEmpty())
      return;
    boolean bool = paramViewInjection.getRequiredBindings().isEmpty();
    if (bool)
      paramStringBuilder.append("    if (view != null) {\n");
    for (String str = "  "; ; str = "")
    {
      Iterator localIterator1 = localMap1.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        ListenerClass localListenerClass = (ListenerClass)localEntry.getKey();
        Map localMap2 = (Map)localEntry.getValue();
        int i;
        if (!"android.view.View".equals(localListenerClass.targetType()))
          i = 1;
        while (true)
        {
          paramStringBuilder.append(str).append("    ");
          if (i == 0)
            break label230;
          paramStringBuilder.append("((").append(localListenerClass.targetType());
          if (localListenerClass.genericArguments() <= 0)
            break;
          paramStringBuilder.append('<');
          int i3 = 0;
          while (true)
            if (i3 < localListenerClass.genericArguments())
            {
              if (i3 > 0)
                paramStringBuilder.append(", ");
              paramStringBuilder.append('?');
              i3++;
              continue;
              i = 0;
              break;
            }
          paramStringBuilder.append('>');
        }
        paramStringBuilder.append(") ");
        label230: paramStringBuilder.append("view");
        if (i != 0)
          paramStringBuilder.append(')');
        paramStringBuilder.append('.').append(localListenerClass.setter()).append("(\n");
        paramStringBuilder.append(str).append("      new ").append(localListenerClass.type()).append("() {\n");
        Iterator localIterator2 = getListenerMethods(localListenerClass).iterator();
        while (localIterator2.hasNext())
        {
          ListenerMethod localListenerMethod = (ListenerMethod)localIterator2.next();
          paramStringBuilder.append(str).append("        @Override public ").append(localListenerMethod.returnType()).append(' ').append(localListenerMethod.name()).append("(\n");
          String[] arrayOfString1 = localListenerMethod.parameters();
          int j = 0;
          int k = arrayOfString1.length;
          while (j < k)
          {
            paramStringBuilder.append(str).append("          ").append(arrayOfString1[j]).append(" p").append(j);
            if (j < k - 1)
              paramStringBuilder.append(',');
            paramStringBuilder.append('\n');
            j++;
          }
          paramStringBuilder.append(str).append("        ) {\n");
          paramStringBuilder.append(str).append("          ");
          int m;
          Iterator localIterator3;
          if (!"void".equals(localListenerMethod.returnType()))
          {
            m = 1;
            if (m != 0)
              paramStringBuilder.append("return ");
            if (localMap2.containsKey(localListenerMethod))
              localIterator3 = ((Set)localMap2.get(localListenerMethod)).iterator();
          }
          else
          {
            while (true)
            {
              if (!localIterator3.hasNext())
                break label753;
              ListenerBinding localListenerBinding = (ListenerBinding)localIterator3.next();
              paramStringBuilder.append("target.").append(localListenerBinding.getName()).append('(');
              List localList = localListenerBinding.getParameters();
              String[] arrayOfString2 = localListenerMethod.parameters();
              int n = localList.size();
              int i1 = 0;
              while (true)
                if (i1 < n)
                {
                  Parameter localParameter = (Parameter)localList.get(i1);
                  int i2 = localParameter.getListenerPosition();
                  emitCastIfNeeded(paramStringBuilder, arrayOfString2[i2], localParameter.getType());
                  paramStringBuilder.append('p').append(i2);
                  if (i1 < n - 1)
                    paramStringBuilder.append(", ");
                  i1++;
                  continue;
                  m = 0;
                  break;
                }
              paramStringBuilder.append(");");
              if (!localIterator3.hasNext())
                continue;
              paramStringBuilder.append("\n          ");
            }
          }
          if (m != 0)
            paramStringBuilder.append(localListenerMethod.defaultReturn()).append(';');
          label753: paramStringBuilder.append('\n');
          paramStringBuilder.append(str).append("        }\n");
        }
        paramStringBuilder.append(str).append("      });\n");
      }
      if (!bool)
        break;
      paramStringBuilder.append("    }\n");
      return;
    }
  }

  private void emitReset(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("  public static void reset(").append(this.targetClass).append(" target) {\n");
    if (this.parentInjector != null)
      paramStringBuilder.append("    ").append(this.parentInjector).append(".reset(target);\n\n");
    Iterator localIterator1 = this.viewIdMap.values().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator3 = ((ViewInjection)localIterator1.next()).getViewBindings().iterator();
      while (localIterator3.hasNext())
      {
        ViewBinding localViewBinding = (ViewBinding)localIterator3.next();
        paramStringBuilder.append("    target.").append(localViewBinding.getName()).append(" = null;\n");
      }
    }
    Iterator localIterator2 = this.collectionBindings.keySet().iterator();
    while (localIterator2.hasNext())
    {
      CollectionBinding localCollectionBinding = (CollectionBinding)localIterator2.next();
      paramStringBuilder.append("    target.").append(localCollectionBinding.getName()).append(" = null;\n");
    }
    paramStringBuilder.append("  }\n");
  }

  private void emitViewBindings(StringBuilder paramStringBuilder, ViewInjection paramViewInjection)
  {
    Collection localCollection = paramViewInjection.getViewBindings();
    if (localCollection.isEmpty());
    while (true)
    {
      return;
      Iterator localIterator = localCollection.iterator();
      while (localIterator.hasNext())
      {
        ViewBinding localViewBinding = (ViewBinding)localIterator.next();
        paramStringBuilder.append("    target.").append(localViewBinding.getName()).append(" = ");
        emitCastIfNeeded(paramStringBuilder, localViewBinding.getType());
        paramStringBuilder.append("view;\n");
      }
    }
  }

  private void emitViewInjection(StringBuilder paramStringBuilder, ViewInjection paramViewInjection)
  {
    paramStringBuilder.append("    view = ");
    List localList = paramViewInjection.getRequiredBindings();
    if (localList.isEmpty())
      paramStringBuilder.append("finder.findOptionalView(source, ").append(paramViewInjection.getId()).append(");\n");
    while (true)
    {
      emitViewBindings(paramStringBuilder, paramViewInjection);
      emitListenerBindings(paramStringBuilder, paramViewInjection);
      return;
      if (paramViewInjection.getId() == -1)
      {
        paramStringBuilder.append("target;\n");
        continue;
      }
      paramStringBuilder.append("finder.findRequiredView(source, ").append(paramViewInjection.getId()).append(", \"");
      emitHumanDescription(paramStringBuilder, localList);
      paramStringBuilder.append("\");\n");
    }
  }

  static List<ListenerMethod> getListenerMethods(ListenerClass paramListenerClass)
  {
    if (paramListenerClass.method().length == 1)
      return Arrays.asList(paramListenerClass.method());
    ArrayList localArrayList;
    while (true)
    {
      int j;
      ListenerMethod localListenerMethod;
      try
      {
        localArrayList = new ArrayList();
        Class localClass = paramListenerClass.callbacks();
        Enum[] arrayOfEnum = (Enum[])localClass.getEnumConstants();
        int i = arrayOfEnum.length;
        j = 0;
        if (j >= i)
          break;
        Enum localEnum = arrayOfEnum[j];
        localListenerMethod = (ListenerMethod)localClass.getField(localEnum.name()).getAnnotation(ListenerMethod.class);
        if (localListenerMethod == null)
        {
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = localClass.getEnclosingClass().getSimpleName();
          arrayOfObject[1] = localClass.getSimpleName();
          arrayOfObject[2] = localEnum.name();
          arrayOfObject[3] = ListenerMethod.class.getSimpleName();
          throw new IllegalStateException(String.format("@%s's %s.%s missing @%s annotation.", arrayOfObject));
        }
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        throw new AssertionError(localNoSuchFieldException);
      }
      localArrayList.add(localListenerMethod);
      j++;
    }
    return localArrayList;
  }

  private ViewInjection getOrCreateViewInjection(int paramInt)
  {
    ViewInjection localViewInjection = (ViewInjection)this.viewIdMap.get(Integer.valueOf(paramInt));
    if (localViewInjection == null)
    {
      localViewInjection = new ViewInjection(paramInt);
      this.viewIdMap.put(Integer.valueOf(paramInt), localViewInjection);
    }
    return localViewInjection;
  }

  final void addCollection(int[] paramArrayOfInt, CollectionBinding paramCollectionBinding)
  {
    this.collectionBindings.put(paramCollectionBinding, paramArrayOfInt);
  }

  final boolean addListener(int paramInt, ListenerClass paramListenerClass, ListenerMethod paramListenerMethod, ListenerBinding paramListenerBinding)
  {
    ViewInjection localViewInjection = getOrCreateViewInjection(paramInt);
    if ((localViewInjection.hasListenerBinding(paramListenerClass, paramListenerMethod)) && (!"void".equals(paramListenerMethod.returnType())))
      return false;
    localViewInjection.addListenerBinding(paramListenerClass, paramListenerMethod, paramListenerBinding);
    return true;
  }

  final void addView(int paramInt, ViewBinding paramViewBinding)
  {
    getOrCreateViewInjection(paramInt).addViewBinding(paramViewBinding);
  }

  final String brewJava()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("// Generated code from Butter Knife. Do not modify!\n");
    localStringBuilder.append("package ").append(this.classPackage).append(";\n\n");
    localStringBuilder.append("import android.view.View;\n");
    localStringBuilder.append("import butterknife.ButterKnife.Finder;\n\n");
    localStringBuilder.append("public class ").append(this.className).append(" {\n");
    emitInject(localStringBuilder);
    localStringBuilder.append('\n');
    emitReset(localStringBuilder);
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }

  final String getFqcn()
  {
    return this.classPackage + "." + this.className;
  }

  final ViewInjection getViewInjection(int paramInt)
  {
    return (ViewInjection)this.viewIdMap.get(Integer.valueOf(paramInt));
  }

  final void setParentInjector(String paramString)
  {
    this.parentInjector = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.internal.ViewInjector
 * JD-Core Version:    0.6.0
 */