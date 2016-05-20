package com.clilystudio.app.netbook.widget;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class h
{
  List<AutoFlowView.Word> a = new ArrayList();

  h(AutoFlowView paramAutoFlowView)
  {
  }

  public final void a(int paramInt)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((AutoFlowView.Word)localIterator.next()).leftMargin = paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.h
 * JD-Core Version:    0.6.2
 */