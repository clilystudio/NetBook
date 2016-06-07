package com.androidquery.util;

import android.util.Xml;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.Arrays;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlSerializer;

public class f
{
  private Element a;

  public f(InputStream paramInputStream)
  {
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    try
    {
      this.a = localDocumentBuilderFactory.newDocumentBuilder().parse(paramInputStream).getDocumentElement();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SAXException(localIOException);
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
    }
  }

  private String a(int paramInt)
  {
    while (true)
    {
      try
      {
        XmlSerializer localXmlSerializer = Xml.newSerializer();
        StringWriter localStringWriter = new StringWriter();
        localXmlSerializer.setOutput(localStringWriter);
        localXmlSerializer.startDocument("utf-8", null);
        if (paramInt > 0)
        {
          char[] arrayOfChar = new char[paramInt];
          Arrays.fill(arrayOfChar, ' ');
          str1 = new String(arrayOfChar);
          a(this.a, localXmlSerializer, 0, str1);
          localXmlSerializer.endDocument();
          String str2 = localStringWriter.toString();
          return str2;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      String str1 = null;
    }
  }

  private static String a(Node paramNode)
  {
    int i = paramNode.getNodeType();
    String str = null;
    switch (i)
    {
    default:
    case 3:
    case 4:
    }
    while (true)
    {
      if (str == null)
        str = "";
      return str;
      str = paramNode.getNodeValue();
      if (str == null)
        continue;
      str = str.trim();
      continue;
      str = paramNode.getNodeValue();
    }
  }

  private void a(Element paramElement, XmlSerializer paramXmlSerializer, int paramInt, String paramString)
  {
    int i = 0;
    String str = paramElement.getTagName();
    a(paramXmlSerializer, paramInt, paramString);
    paramXmlSerializer.startTag("", str);
    NamedNodeMap localNamedNodeMap;
    if (paramElement.hasAttributes())
      localNamedNodeMap = paramElement.getAttributes();
    NodeList localNodeList;
    int j;
    for (int m = 0; ; m++)
    {
      if (m >= localNamedNodeMap.getLength())
      {
        if (paramElement.hasChildNodes())
        {
          localNodeList = paramElement.getChildNodes();
          j = 0;
          if (i < localNodeList.getLength())
            break;
          if (j > 0)
            a(paramXmlSerializer, paramInt, paramString);
        }
        paramXmlSerializer.endTag("", str);
        return;
      }
      Attr localAttr = (Attr)localNamedNodeMap.item(m);
      paramXmlSerializer.attribute("", localAttr.getName(), localAttr.getValue());
    }
    Node localNode = localNodeList.item(i);
    switch (localNode.getNodeType())
    {
    case 2:
    default:
    case 1:
    case 3:
    case 4:
    }
    while (true)
    {
      int k = j;
      while (true)
      {
        i++;
        j = k;
        break;
        a((Element)localNode, paramXmlSerializer, paramInt + 1, paramString);
        k = j + 1;
        continue;
        paramXmlSerializer.text(a(localNode));
        k = j;
      }
      paramXmlSerializer.cdsect(a(localNode));
    }
  }

  private static void a(XmlSerializer paramXmlSerializer, int paramInt, String paramString)
  {
    if (paramString != null)
      paramXmlSerializer.text("\n");
    for (int i = 0; ; i++)
    {
      if (i >= paramInt)
        return;
      paramXmlSerializer.text(paramString);
    }
  }

  public String toString()
  {
    return a(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.util.f
 * JD-Core Version:    0.6.0
 */