package org.litepal.c;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources.NotFoundException;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.litepal.LitePalApplication;
import org.litepal.exceptions.ParseConfigurationFileException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

public final class c
{
  private static c a;

  public static void a()
  {
    if (a == null)
      a = new c();
    try
    {
      XMLReader localXMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
      localXMLReader.setContentHandler(new b());
      localXMLReader.parse(new InputSource(b()));
      return;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      throw new ParseConfigurationFileException("litepal.xml file is missing. Please ensure it under assets folder.");
    }
    catch (SAXException localSAXException)
    {
      throw new ParseConfigurationFileException("can not parse the litepal.xml, check if it's in correct format");
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      throw new ParseConfigurationFileException("parse configuration is failed");
    }
    catch (IOException localIOException)
    {
    }
    throw new ParseConfigurationFileException("IO exception happened");
  }

  private static InputStream b()
  {
    AssetManager localAssetManager = LitePalApplication.a().getAssets();
    String[] arrayOfString = localAssetManager.list("");
    int i;
    if ((arrayOfString != null) && (arrayOfString.length > 0))
      i = arrayOfString.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        throw new ParseConfigurationFileException("litepal.xml file is missing. Please ensure it under assets folder.");
      String str = arrayOfString[j];
      if ("litepal.xml".equalsIgnoreCase(str))
        return localAssetManager.open(str, 3);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.c.c
 * JD-Core Version:    0.6.0
 */