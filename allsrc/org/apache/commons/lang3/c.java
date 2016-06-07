package org.apache.commons.lang3;

import java.io.PrintStream;

public final class c
{
  private static String a;
  private static final JavaVersion b;
  private static String c;
  private static String d;
  private static boolean e;
  private static boolean f;
  private static boolean g;
  private static boolean h;
  private static boolean i;
  private static boolean j;
  private static boolean k;
  private static boolean l;
  private static boolean m;
  private static boolean n;

  static
  {
    c("awt.toolkit");
    c("file.encoding");
    c("file.separator");
    c("java.awt.fonts");
    c("java.awt.graphicsenv");
    c("java.awt.headless");
    c("java.awt.printerjob");
    c("java.class.path");
    c("java.class.version");
    c("java.compiler");
    c("java.endorsed.dirs");
    c("java.ext.dirs");
    c("java.home");
    c("java.io.tmpdir");
    c("java.library.path");
    c("java.runtime.name");
    c("java.runtime.version");
    c("java.specification.name");
    c("java.specification.vendor");
    String str = c("java.specification.version");
    a = str;
    b = JavaVersion.get(str);
    c("java.util.prefs.PreferencesFactory");
    c("java.vendor");
    c("java.vendor.url");
    c("java.version");
    c("java.vm.info");
    c("java.vm.name");
    c("java.vm.specification.name");
    c("java.vm.specification.vendor");
    c("java.vm.specification.version");
    c("java.vm.vendor");
    c("java.vm.version");
    c("line.separator");
    c("os.arch");
    c = c("os.name");
    d = c("os.version");
    c("path.separator");
    if (c("user.country") == null)
    {
      c("user.region");
      c("user.dir");
      c("user.home");
      c("user.language");
      c("user.name");
      c("user.timezone");
      a("1.1");
      a("1.2");
      a("1.3");
      a("1.4");
      a("1.5");
      a("1.6");
      a("1.7");
      e = b("AIX");
      f = b("HP-UX");
      g = b("Irix");
      if ((!b("Linux")) && (!b("LINUX")))
        break label522;
    }
    label522: for (boolean bool = true; ; bool = false)
    {
      h = bool;
      b("Mac");
      i = b("Mac OS X");
      j = b("FreeBSD");
      k = b("OpenBSD");
      l = b("NetBSD");
      b("OS/2");
      m = b("Solaris");
      n = b("SunOS");
      b("Windows");
      a("Windows", "5.0");
      a("Windows", "5.2");
      a("Windows Server 2008", "6.1");
      a("Windows 9", "4.0");
      a("Windows 9", "4.1");
      a("Windows", "4.9");
      b("Windows NT");
      a("Windows", "5.1");
      a("Windows", "6.0");
      a("Windows", "6.1");
      return;
      c("user.country");
      break;
    }
  }

  private static boolean a(String paramString)
  {
    String str = a;
    if (str == null)
      return false;
    return str.startsWith(paramString);
  }

  private static boolean a(String paramString1, String paramString2)
  {
    String str1 = c;
    String str2 = d;
    if ((str1 == null) || (str2 == null));
    do
      return false;
    while ((!str1.startsWith(paramString1)) || (!str2.startsWith(paramString2)));
    return true;
  }

  public static boolean a(JavaVersion paramJavaVersion)
  {
    return b.atLeast(paramJavaVersion);
  }

  private static boolean b(String paramString)
  {
    String str = c;
    if (str == null)
      return false;
    return str.startsWith(paramString);
  }

  private static String c(String paramString)
  {
    try
    {
      String str = System.getProperty(paramString);
      return str;
    }
    catch (SecurityException localSecurityException)
    {
      System.err.println("Caught a SecurityException reading the system property '" + paramString + "'; the SystemUtils property value will default to null.");
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.c
 * JD-Core Version:    0.6.0
 */