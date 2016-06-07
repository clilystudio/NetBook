package org.litepal;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.litepal.d.b.c;
import org.litepal.d.b.d;
import org.litepal.d.b.e;
import org.litepal.d.b.f;
import org.litepal.exceptions.DatabaseGenerateException;

public abstract class a
{
  private e[] a;
  private Collection<org.litepal.d.a.a> b;
  private Collection<org.litepal.b.a.a> c;

  public a()
  {
    e[] arrayOfe = new e[5];
    arrayOfe[0] = new d();
    arrayOfe[1] = new f();
    arrayOfe[2] = new org.litepal.d.b.a();
    arrayOfe[3] = new c();
    arrayOfe[4] = new org.litepal.d.b.b();
    this.a = arrayOfe;
  }

  private static String a(Field paramField)
  {
    Type localType = paramField.getGenericType();
    if ((localType != null) && ((localType instanceof ParameterizedType)))
      return ((Class)((ParameterizedType)localType).getActualTypeArguments()[0]).getName();
    return null;
  }

  private void a(String paramString, int paramInt)
  {
    int i;
    int j;
    Field localField1;
    int k;
    label52: Class localClass1;
    int i2;
    int i3;
    String str;
    Field[] arrayOfField2;
    int m;
    int n;
    label161: Field localField3;
    Class localClass3;
    label233: int i4;
    try
    {
      Field[] arrayOfField1 = Class.forName(paramString).getDeclaredFields();
      i = arrayOfField1.length;
      j = 0;
      break label637;
      localField1 = arrayOfField1[j];
      if ((!Modifier.isPrivate(localField1.getModifiers())) || (localField1.getType().isPrimitive()))
        break label651;
      k = 1;
      if (k == 0)
        break label645;
      localClass1 = localField1.getType();
      Field[] arrayOfField3;
      if (org.litepal.c.a.a().d().contains(localClass1.getName()))
      {
        arrayOfField3 = Class.forName(localClass1.getName()).getDeclaredFields();
        i2 = 0;
        i3 = 0;
        if (i2 < arrayOfField3.length);
      }
      else
      {
        if (!a(localField1.getType()))
          break label645;
        str = a(localField1);
        if (!org.litepal.c.a.a().d().contains(str))
          break label645;
        arrayOfField2 = Class.forName(str).getDeclaredFields();
        m = 0;
        n = 0;
        if (m < arrayOfField2.length)
          break label425;
        break label645;
      }
      localField3 = arrayOfField3[i2];
      if (!Modifier.isPrivate(localField3.getModifiers()))
        break label663;
      localClass3 = localField3.getType();
      if (paramString.equals(localClass3.getName()))
      {
        if (paramInt == 1)
        {
          a(paramString, localClass1.getName(), localClass1.getName(), 1);
          break label657;
          if ((i2 != -1 + arrayOfField3.length) || (i4 != 0))
            break label675;
          if (paramInt != 1)
            break label398;
          a(paramString, localClass1.getName(), localClass1.getName(), 1);
          i3 = i4;
          break label663;
        }
        if (paramInt != 2)
          break label657;
        a(paramString, localClass1.getName(), localClass1.getName(), localField1, localField3, 1);
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      throw new DatabaseGenerateException("can not find a class named " + paramString);
    }
    label398: label425: Field localField2;
    Class localClass2;
    if ((a(localClass3)) && (paramString.equals(a(localField3))))
    {
      if (paramInt == 1)
      {
        a(paramString, localClass1.getName(), paramString, 2);
        break label669;
      }
      if (paramInt != 2)
        break label669;
      a(paramString, localClass1.getName(), paramString, localField1, localField3, 2);
      break label669;
      if (paramInt != 2)
        break label675;
      a(paramString, localClass1.getName(), localClass1.getName(), localField1, null, 1);
      break label675;
      localField2 = arrayOfField2[m];
      if (!Modifier.isPrivate(localField2.getModifiers()))
        break label688;
      localClass2 = localField2.getType();
      if (paramString.equals(localClass2.getName()))
        if (paramInt == 1)
        {
          a(paramString, str, str, 2);
          break label682;
        }
    }
    while (true)
    {
      if ((m == -1 + arrayOfField2.length) && (i1 == 0))
      {
        if (paramInt == 1)
        {
          a(paramString, str, str, 2);
          n = i1;
          break label688;
          if (paramInt != 2)
            break label682;
          a(paramString, str, str, localField1, localField2, 2);
          break label682;
          if ((!a(localClass2)) || (!paramString.equals(a(localField2))))
            break label623;
          if (paramInt == 1)
          {
            a(paramString, str, null, 3);
            break label694;
          }
          if (paramInt != 2)
            break label694;
          a(paramString, str, null, localField1, localField2, 3);
          break label694;
        }
        if (paramInt == 2)
          a(paramString, str, str, localField1, null, 2);
      }
      n = i1;
      break label688;
      label623: int i1 = n;
      continue;
      i4 = i3;
      break label233;
      label637: 
      while (j >= i)
      {
        return;
        j++;
      }
      label645: label651: k = 0;
      break label52;
      label657: i4 = 1;
      break label233;
      while (true)
      {
        label663: i2++;
        break;
        label669: i4 = 1;
        break label233;
        label675: i3 = i4;
      }
      label682: i1 = 1;
      continue;
      label688: m++;
      break label161;
      label694: i1 = 1;
    }
  }

  private void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    org.litepal.d.a.a locala = new org.litepal.d.a.a();
    locala.a(com.arcsoft.hpay100.a.a.V(paramString1));
    locala.b(com.arcsoft.hpay100.a.a.V(paramString2));
    locala.c(com.arcsoft.hpay100.a.a.V(paramString3));
    locala.a(paramInt);
    this.b.add(locala);
  }

  private void a(String paramString1, String paramString2, String paramString3, Field paramField1, Field paramField2, int paramInt)
  {
    org.litepal.b.a.a locala = new org.litepal.b.a.a();
    locala.a(paramString1);
    locala.b(paramString2);
    locala.c(paramString3);
    locala.a(paramField1);
    locala.b(paramField2);
    locala.a(paramInt);
    this.c.add(locala);
  }

  private boolean a(Class<?> paramClass)
  {
    return (List.class.isAssignableFrom(paramClass)) || (Set.class.isAssignableFrom(paramClass));
  }

  protected static List<Field> c(String paramString)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    while (true)
    {
      Field[] arrayOfField1;
      int k;
      Field[] arrayOfField2;
      try
      {
        Class localClass1 = Class.forName(paramString);
        arrayOfField1 = localClass1.getDeclaredFields();
        int j = arrayOfField1.length;
        k = 0;
        if (k >= j)
        {
          Class localClass2 = localClass1.getSuperclass();
          if ((localClass2 == null) || (localClass2.getName().contains("DataSupport")))
            continue;
          arrayOfField2 = localClass2.getDeclaredFields();
          int n = arrayOfField2.length;
          if (i < n)
            break label167;
          return localArrayList;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new DatabaseGenerateException("can not find a class named " + paramString);
      }
      Field localField1 = arrayOfField1[k];
      int m = localField1.getModifiers();
      if ((Modifier.isPrivate(m)) && (!Modifier.isStatic(m)) && (com.arcsoft.hpay100.a.a.U(localField1.getType().getName())))
        localArrayList.add(localField1);
      k++;
      continue;
      label167: Field localField2 = arrayOfField2[i];
      int i1 = localField2.getModifiers();
      if ((Modifier.isPrivate(i1)) && (!Modifier.isStatic(i1)) && (com.arcsoft.hpay100.a.a.U(localField2.getType().getName())))
        localArrayList.add(localField2);
      i++;
    }
  }

  protected static boolean d(String paramString)
  {
    return ("_id".equalsIgnoreCase(paramString)) || ("id".equalsIgnoreCase(paramString));
  }

  protected static String e(String paramString)
  {
    return com.arcsoft.hpay100.a.a.S(paramString + "_id");
  }

  protected final Collection<org.litepal.d.a.a> a(List<String> paramList)
  {
    if (this.b == null)
      this.b = new HashSet();
    this.b.clear();
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return this.b;
      a((String)localIterator.next(), 1);
    }
  }

  protected final org.litepal.d.a.b a(String paramString)
  {
    String str1 = com.arcsoft.hpay100.a.a.V(paramString);
    org.litepal.d.a.b localb = new org.litepal.d.a.b();
    localb.a(str1);
    Iterator localIterator = c(paramString).iterator();
    label129: 
    while (true)
    {
      if (!localIterator.hasNext())
        return localb;
      Field localField = (Field)localIterator.next();
      String str2 = localField.getName();
      String str3 = localField.getType().getName();
      e[] arrayOfe = this.a;
      int i = arrayOfe.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label129;
        String[] arrayOfString = arrayOfe[j].a(str2, str3);
        if (arrayOfString == null)
          continue;
        localb.a(arrayOfString[0], arrayOfString[1]);
        break;
      }
    }
  }

  protected final Collection<org.litepal.b.a.a> b(String paramString)
  {
    if (this.c == null)
      this.c = new HashSet();
    this.c.clear();
    a(paramString, 2);
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.a
 * JD-Core Version:    0.6.0
 */