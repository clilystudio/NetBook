package com.clilystudio.netbook.reader;

import com.a.a.c;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class cN extends c
{
  cN(cM paramcM, String paramString)
  {
  }

  public final void a(JSONArray paramJSONArray)
  {
    StringBuilder localStringBuilder;
    try
    {
      localStringBuilder = new StringBuilder("?");
      int i = 0;
      if ((i < paramJSONArray.length()) && (i < 20))
      {
        String str = ((JSONObject)paramJSONArray.get(i)).getString("iid");
        if (i == 0)
          localStringBuilder.append("ids=" + str);
        while (true)
        {
          cM.a(this.b)[i] = str;
          i++;
          break;
          localStringBuilder.append("&ids=" + str);
        }
      }
    }
    catch (JSONException localJSONException)
    {
      cO localcO = new cO(this.b);
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = this.a;
      localcO.b(arrayOfString1);
      return;
    }
    cP localcP = new cP(this.b);
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = localStringBuilder.toString();
    localcP.b(arrayOfString2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cN
 * JD-Core Version:    0.6.0
 */