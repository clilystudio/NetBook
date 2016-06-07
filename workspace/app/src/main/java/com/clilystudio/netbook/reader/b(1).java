package com.clilystudio.netbook.reader;

import android.view.animation.Animation;
import android.view.animation.Transformation;

final class b extends Animation
{
  b(AutoReaderTextView paramAutoReaderTextView)
  {
  }

  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (!AutoReaderTextView.a(this.a))
    {
      AutoReaderTextView.b(this.a).height = (AutoReaderTextView.c(this.a) - (int)(paramFloat * AutoReaderTextView.c(this.a)));
      this.a.setLayoutParams(AutoReaderTextView.b(this.a));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.b
 * JD-Core Version:    0.6.0
 */