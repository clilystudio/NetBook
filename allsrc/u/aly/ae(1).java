package u.aly;

import org.json.JSONArray;

public class ae extends ay
{
  public ae()
  {
  }

  public ae(String paramString)
  {
    a(new JSONArray(paramString));
  }

  public ae(JSONArray paramJSONArray)
  {
    a(paramJSONArray);
  }

  private void a(JSONArray paramJSONArray)
  {
    a(paramJSONArray.getString(0));
    a(paramJSONArray.getInt(1));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ae
 * JD-Core Version:    0.6.0
 */