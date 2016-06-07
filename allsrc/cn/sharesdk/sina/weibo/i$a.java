package cn.sharesdk.sina.weibo;

import android.text.TextUtils;

public class i$a
{
  private String a;
  private int b;

  private void a(int paramInt)
  {
    this.b = paramInt;
  }

  private void a(String paramString)
  {
    this.a = paramString;
  }

  public String a()
  {
    return this.a;
  }

  public int b()
  {
    return this.b;
  }

  public boolean c()
  {
    return (!TextUtils.isEmpty(this.a)) && (this.b > 0);
  }

  public String toString()
  {
    return "WeiboInfo: PackageName = " + this.a + ", supportApi = " + this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.i.a
 * JD-Core Version:    0.6.0
 */