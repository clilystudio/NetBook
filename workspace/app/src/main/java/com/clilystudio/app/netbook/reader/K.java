package com.clilystudio.app.netbook.reader;

import android.graphics.Canvas;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.util.ArrayList;
import java.util.List;

public final class K
{
  private Reader a;
  private bZ b;

  public K(Reader paramReader, bZ parambZ)
  {
    this.a = paramReader;
    this.b = parambZ;
  }

  private void a(int paramInt1, int paramInt2, e<n> parame, boolean paramBoolean, int paramInt3)
  {
    this.a.a(paramInt1, new L(this, parame, paramInt3, paramInt2), false, paramBoolean);
  }

  public final Reader a()
  {
    return this.a;
  }

  public final void a(int paramInt1, int paramInt2, e<n> parame, boolean paramBoolean)
  {
    a(paramInt1, paramInt2, parame, true, 1);
  }

  public final void a(int paramInt, e<n> parame, boolean paramBoolean)
  {
    a(paramInt, -1, parame, paramBoolean, 2);
  }

  public final void a(Reader paramReader)
  {
    this.a = paramReader;
  }

  public final void a(e<n> parame)
  {
    a(this.a.k(), this.a.l(), parame, true, 0);
  }

  public final void a(e<n> parame, int paramInt)
  {
    ReaderChapter localReaderChapter = new ReaderChapter();
    localReaderChapter.setStatus(paramInt);
    parame.a(n.a(this, localReaderChapter, 0));
  }

  public final int[] a(String paramString)
  {
    int i = 0;
    TextPaint localTextPaint = new TextPaint();
    localTextPaint.setTextSize(this.b.a);
    StaticLayout localStaticLayout = new StaticLayout(paramString, localTextPaint, this.b.f, Layout.Alignment.ALIGN_NORMAL, 1.0F, this.b.b, false);
    localStaticLayout.draw(new Canvas());
    int j = localStaticLayout.getLineCount();
    int k = this.b.e;
    ArrayList localArrayList = new ArrayList();
    int m = 0;
    int i1;
    do
    {
      int n = localStaticLayout.getLineForVertical(m);
      i1 = localStaticLayout.getLineForVertical(localStaticLayout.getLineTop(n) + this.b.e);
      if (localStaticLayout.getLineBottom(i1) - localStaticLayout.getLineTop(n) > k)
        i1--;
      int i2 = localStaticLayout.getLineStart(n);
      if (paramString.substring(i2, localStaticLayout.getLineEnd(i1)).length() > 0)
      {
        if ((localArrayList.isEmpty()) || (i2 != ((Integer)localArrayList.get(-1 + localArrayList.size())).intValue()))
          localArrayList.add(Integer.valueOf(i2));
        m = localStaticLayout.getLineBottom(i1);
      }
    }
    while (i1 < j - 1);
    int[] arrayOfInt = new int[localArrayList.size()];
    int i3 = arrayOfInt.length;
    while (i < i3)
    {
      arrayOfInt[i] = ((Integer)localArrayList.get(i)).intValue();
      i++;
    }
    return arrayOfInt;
  }

  public final void b(int paramInt, e<n> parame, boolean paramBoolean)
  {
    a(paramInt, 0, parame, paramBoolean, 1);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.K
 * JD-Core Version:    0.6.2
 */