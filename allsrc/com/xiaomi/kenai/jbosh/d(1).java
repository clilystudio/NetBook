package com.xiaomi.kenai.jbosh;

import java.io.IOException;
import java.io.StringReader;
import java.lang.ref.SoftReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

final class d
  implements b
{
  private static final Logger a = Logger.getLogger(d.class.getName());
  private static final ThreadLocal<SoftReference<XmlPullParser>> b = new e();

  private static XmlPullParser a()
  {
    XmlPullParser localXmlPullParser = (XmlPullParser)((SoftReference)b.get()).get();
    if (localXmlPullParser == null);
    try
    {
      XmlPullParserFactory localXmlPullParserFactory = XmlPullParserFactory.newInstance();
      localXmlPullParserFactory.setNamespaceAware(true);
      localXmlPullParserFactory.setValidating(false);
      localXmlPullParser = localXmlPullParserFactory.newPullParser();
      SoftReference localSoftReference = new SoftReference(localXmlPullParser);
      b.set(localSoftReference);
      return localXmlPullParser;
    }
    catch (Exception localException)
    {
    }
    throw new IllegalStateException("Could not create XmlPull parser", localException);
  }

  public final c a(String paramString)
  {
    c localc = new c();
    try
    {
      localXmlPullParser = a();
      localXmlPullParser.setInput(new StringReader(paramString));
      i = localXmlPullParser.getEventType();
      if (i != 1)
        if (i == 2)
        {
          if (a.isLoggable(Level.FINEST))
            a.finest("Start tag: " + localXmlPullParser.getName());
          String str1 = localXmlPullParser.getPrefix();
          if (str1 == null)
            str1 = "";
          String str2 = localXmlPullParser.getNamespace();
          String str3 = localXmlPullParser.getName();
          an localan = new an(str2, str3, str1);
          if (a.isLoggable(Level.FINEST))
          {
            a.finest("Start element: ");
            a.finest("    prefix: " + str1);
            a.finest("    URI: " + str2);
            a.finest("    local: " + str3);
          }
          f localf1 = f.a("body");
          if (localf1.a(localan))
            break label535;
          throw new IllegalStateException("Root element was not '" + localf1.b() + "' in the '" + localf1.a() + "' namespace.  (Was '" + str3 + "' in '" + str2 + "')");
        }
    }
    catch (RuntimeException localRuntimeException)
    {
      XmlPullParser localXmlPullParser;
      while (true)
      {
        throw new aa("Could not parse body:\n" + paramString, localRuntimeException);
        int i = localXmlPullParser.next();
      }
      while (j < localXmlPullParser.getAttributeCount())
      {
        str4 = localXmlPullParser.getAttributeNamespace(j);
        if (str4.length() != 0)
          break label528;
        str5 = localXmlPullParser.getNamespace(null);
        String str6 = localXmlPullParser.getAttributePrefix(j);
        if (str6 == null)
          str6 = "";
        String str7 = localXmlPullParser.getAttributeName(j);
        String str8 = localXmlPullParser.getAttributeValue(j);
        f localf2 = f.a(str5, str7, str6);
        if (a.isLoggable(Level.FINEST))
          a.finest("        Attribute: {" + str5 + "}" + str7 + " = '" + str8 + "'");
        localc.a(localf2, str8);
        j++;
      }
      return localc;
    }
    catch (IOException localIOException)
    {
      break label313;
    }
    catch (XmlPullParserException localXmlPullParserException)
    {
      while (true)
      {
        label313: String str4;
        continue;
        label528: String str5 = str4;
        continue;
        label535: int j = 0;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.d
 * JD-Core Version:    0.6.0
 */