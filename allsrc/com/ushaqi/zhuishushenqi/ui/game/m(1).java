package com.ushaqi.zhuishushenqi.ui.game;

import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.db.PostAgreeRecord;
import com.ushaqi.zhuishushenqi.model.Root;
import com.ushaqi.zhuishushenqi.util.S;
import com.ushaqi.zhuishushenqi.util.e;

final class m extends S<Root>
{
  private String a;
  private String b;

  private m(GameDetailActivity paramGameDetailActivity)
  {
  }

  protected final Root a(ApiService paramApiService, String[] paramArrayOfString)
  {
    this.a = paramArrayOfString[0];
    this.b = paramArrayOfString[1];
    return paramApiService.F(this.a, this.b);
  }

  protected final void a(Root paramRoot)
  {
    e.a(this.c, "已同感");
    PostAgreeRecord.add(this.b, this.a);
  }

  protected final void b(Root paramRoot)
  {
    PostAgreeRecord.add(this.b, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.m
 * JD-Core Version:    0.6.0
 */