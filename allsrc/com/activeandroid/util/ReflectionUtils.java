package com.activeandroid.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.serializer.TypeSerializer;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.Set<Ljava.lang.reflect.Field;>;

public final class ReflectionUtils
{
  public static Set<Field> getDeclaredColumnFields(Class<?> paramClass)
  {
    Object localObject = Collections.emptySet();
    if ((isSubclassOf(paramClass, Model.class)) || (Model.class.equals(paramClass)))
    {
      localObject = new LinkedHashSet();
      Field[] arrayOfField = paramClass.getDeclaredFields();
      Arrays.sort(arrayOfField, new ReflectionUtils.1());
      int i = arrayOfField.length;
      for (int j = 0; j < i; j++)
      {
        Field localField = arrayOfField[j];
        if (!localField.isAnnotationPresent(Column.class))
          continue;
        ((Set)localObject).add(localField);
      }
      Class localClass = paramClass.getSuperclass();
      if (localClass != null)
        ((Set)localObject).addAll(getDeclaredColumnFields(localClass));
    }
    return (Set<Field>)localObject;
  }

  public static <T> T getMetaData(Context paramContext, String paramString)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo.metaData != null)
      {
        Object localObject = localApplicationInfo.metaData.get(paramString);
        return localObject;
      }
    }
    catch (Exception localException)
    {
      Log.w("Couldn't find meta-data: " + paramString);
    }
    return null;
  }

  public static boolean isModel(Class<?> paramClass)
  {
    return (isSubclassOf(paramClass, Model.class)) && (!Modifier.isAbstract(paramClass.getModifiers()));
  }

  public static boolean isSubclassOf(Class<?> paramClass1, Class<?> paramClass2)
  {
    while (paramClass1.getSuperclass() != null)
    {
      if (paramClass1.getSuperclass().equals(paramClass2))
        return true;
      paramClass1 = paramClass1.getSuperclass();
    }
    return false;
  }

  public static boolean isTypeSerializer(Class<?> paramClass)
  {
    return isSubclassOf(paramClass, TypeSerializer.class);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.util.ReflectionUtils
 * JD-Core Version:    0.6.0
 */