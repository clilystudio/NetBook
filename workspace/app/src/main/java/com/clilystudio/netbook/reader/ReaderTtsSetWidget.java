package com.clilystudio.netbook.reader;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SpeechUtility;
import com.clilystudio.netbook.model.TtsRoot;
import com.clilystudio.netbook.model.TtsRoot.Tts;
import com.clilystudio.netbook.model.TtsRoot.TtsResult;
import java.util.Timer;
import java.util.TimerTask;

public class ReaderTtsSetWidget extends LinearLayout
{
  Handler a = new cl(this);
  private TextView[] b;
  private TextView[] c;
  private TextView d;
  private SeekBar e;
  private Button f;
  private cn g;
  private TtsRoot.Tts[] h;
  private Timer i;
  private TimerTask j;
  private int[] k = { 300, 900, 1800, 3600 };
  private String[] l = { "5分钟", "15分钟", "30分钟", "60分钟" };
  private int m;
  private int n = -1;
  private boolean o = false;
  private boolean p = false;
  private SpeechSynthesizer q;

  public ReaderTtsSetWidget(Context paramContext)
  {
    super(paramContext);
  }

  public ReaderTtsSetWidget(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private boolean a(TtsRoot.Tts paramTts)
  {
    String str = a.d(getContext(), "speech_voice", "");
    if ((str.equals("")) || (this.p))
      return paramTts.getSelected().equals("1");
    return paramTts.getName().equals(str);
  }

  private void c()
  {
    int i1 = 0;
    if (i1 < this.c.length)
    {
      if (i1 == this.n)
        this.c[i1].setBackgroundResource(2130837757);
      while (true)
      {
        i1++;
        break;
        this.c[i1].setBackgroundResource(2130838190);
        this.c[i1].setText(this.l[i1]);
      }
    }
  }

  public final void a()
  {
    setVisibility(0);
    c();
  }

  public final void a(SpeechSynthesizer paramSpeechSynthesizer)
  {
    this.q = paramSpeechSynthesizer;
    String[] arrayOfString = new String[4];
    arrayOfString[0] = getContext().getString(2131034542);
    arrayOfString[1] = getContext().getString(2131034540);
    arrayOfString[2] = getContext().getString(2131034541);
    arrayOfString[3] = getContext().getString(2131034543);
    this.l = arrayOfString;
    this.b = new TextView[3];
    this.b[0] = ((TextView)findViewById(2131493962));
    this.b[1] = ((TextView)findViewById(2131493963));
    this.b[2] = ((TextView)findViewById(2131493964));
    setVoiceSourceView();
    this.c = new TextView[4];
    this.c[0] = ((TextView)findViewById(2131493966));
    this.c[1] = ((TextView)findViewById(2131493967));
    this.c[2] = ((TextView)findViewById(2131493968));
    this.c[3] = ((TextView)findViewById(2131493969));
    for (int i1 = 0; i1 < this.c.length; i1++)
      this.c[i1].setOnClickListener(new cj(this, i1));
    this.d = ((TextView)findViewById(2131493965));
    this.d.setOnClickListener(new cg(this));
    this.e = ((SeekBar)findViewById(2131493960));
    this.e.setProgress(a.a(getContext(), "speech_speed", 50));
    this.e.setOnSeekBarChangeListener(new ch(this));
    this.f = ((Button)findViewById(2131493970));
    this.f.setOnClickListener(new ci(this));
    this.i = new Timer();
  }

  public final boolean b()
  {
    return this.o;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return true;
  }

  public void setOnPlayChangeListener(cn paramcn)
  {
    this.g = paramcn;
  }

  public void setPause(boolean paramBoolean)
  {
    this.o = paramBoolean;
  }

  public void setResetVoice(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }

  public void setSpeechVoice(String paramString)
  {
    if (this.q == null)
      return;
    this.g.a(false);
    this.q.setParameter("voice_name", paramString);
    a.e(getContext(), "speech_voice", paramString);
    this.g.a();
  }

  public void setVoiceSourceView()
  {
    TtsRoot localTtsRoot = TtsRoot.getInfoFromJson(SpeechUtility.getUtility().getParameter("tts"));
    TtsRoot.Tts[] arrayOfTts1;
    Object localObject;
    int i5;
    label74: int i6;
    label207: int i1;
    if ((localTtsRoot != null) && (localTtsRoot.getRet().equals("0")))
    {
      TtsRoot.TtsResult localTtsResult = localTtsRoot.getResult();
      if (localTtsResult != null)
      {
        arrayOfTts1 = localTtsResult.getTts();
        if (arrayOfTts1 != null)
          if (arrayOfTts1.length <= 3)
          {
            localObject = arrayOfTts1;
            this.h = ((TtsRoot.Tts)localObject);
            if (this.h.length > 3)
            {
              i5 = 3;
              for (i6 = 0; ; i6++)
              {
                if (i6 >= i5)
                  break label341;
                this.b[i6].setVisibility(0);
                this.b[i6].setText(this.h[i6].getNickname());
                this.b[i6].setTag(this.h[i6].getName());
                this.b[i6].setOnClickListener(new cm(this, i6));
                if (!a(this.h[i6]))
                  break;
                this.b[i6].setBackgroundResource(2130837757);
                if (!this.p)
                  continue;
                setSpeechVoice(this.h[i6].getName());
                this.p = false;
              }
            }
          }
          else
          {
            i1 = 0;
            label216: if (i1 >= arrayOfTts1.length)
              break label371;
            if (!a(arrayOfTts1[i1]));
          }
      }
    }
    label341: label371: for (int i2 = i1; ; i2 = 0)
    {
      if (i2 < 3)
      {
        localObject = arrayOfTts1;
        break;
        i1++;
        break label216;
      }
      TtsRoot.Tts[] arrayOfTts2 = new TtsRoot.Tts[arrayOfTts1.length];
      arrayOfTts2[0] = arrayOfTts1[i2];
      int i3 = 1;
      for (int i4 = 0; i4 < arrayOfTts1.length; i4++)
      {
        if (i4 == i2)
          continue;
        arrayOfTts2[i3] = arrayOfTts1[i4];
        i3++;
      }
      localObject = arrayOfTts2;
      break;
      i5 = this.h.length;
      break label74;
      this.b[i6].setBackgroundResource(2130838190);
      break label207;
      if (i5 < 3)
        while (i5 < 3)
        {
          this.b[i5].setVisibility(4);
          i5++;
        }
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.ReaderTtsSetWidget
 * JD-Core Version:    0.6.0
 */