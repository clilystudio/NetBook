package com.clilystudio.netbook.reader;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import android.widget.TextView;

import com.clilystudio.netbook.model.TtsRoot;
import com.clilystudio.netbook.model.TtsRoot$Tts;
import com.clilystudio.netbook.model.TtsRoot$TtsResult;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SpeechUtility;

import java.util.Timer;
import java.util.TimerTask;

public class ReaderTtsSetWidget extends LinearLayout {

    Handler a;
    private TextView[] b;
    private TextView[] c;
    private TextView d;
    private SeekBar e;
    private Button f;
    private cn g;
    private TtsRoot$Tts[] h;
    private Timer i;
    private TimerTask j;
    private int[] k;
    private String[] l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private SpeechSynthesizer q;
    public ReaderTtsSetWidget(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        k = new int[]{300, 900, 1800, 3600};
        l = new String[]{"5\u5206\u949F", "15\u5206\u949F", "30\u5206\u949F", "60\u5206\u949F"};
        n = -1;
        o = false;
        p = false;
        a = (Handler) new cl(this);
    }

    public ReaderTtsSetWidget(Context Context1) {
        super(Context1);
        k = new int[]{300, 900, 1800, 3600};
        l = new String[]{"5\u5206\u949F", "15\u5206\u949F", "30\u5206\u949F", "60\u5206\u949F"};
        n = -1;
        o = false;
        p = false;
        a = (Handler) new cl(this);
    }

    static int a(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2) {
        ReaderTtsSetWidget1.n = int2;
        return int2;
    }

    static cn a(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        return ReaderTtsSetWidget1.g;
    }

    static void a(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2, boolean boolean3) {
        if (ReaderTtsSetWidget1.j != null)
            ReaderTtsSetWidget1.j.cancel();
        if (int2 >= 0 && int2 < ReaderTtsSetWidget1.c.length) {
            ReaderTtsSetWidget1.c[int2].setText((CharSequence) ReaderTtsSetWidget1.l[int2]);
            ReaderTtsSetWidget1.c[int2].setBackgroundResource(2130838190);
        }
        if (boolean3) {
            ReaderTtsSetWidget1.n = -1;
            ReaderTtsSetWidget1.g.a(true);
            ReaderTtsSetWidget1.g.d();
            ReaderTtsSetWidget1.setVisibility(8);
            com.clilystudio.netbook.hpay100.a.a.K(ReaderTtsSetWidget1.getContext());
        }
    }

    static boolean a(ReaderTtsSetWidget ReaderTtsSetWidget1, TtsRoot$Tts Tts2) {
        return ReaderTtsSetWidget1.a(Tts2);
    }

    static boolean a(ReaderTtsSetWidget ReaderTtsSetWidget1, boolean boolean2) {
        ReaderTtsSetWidget1.o = boolean2;
        return boolean2;
    }

    static int b(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        return ReaderTtsSetWidget1.n;
    }

    static void b(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2) {
        ReaderTtsSetWidget1.o = false;
        if (ReaderTtsSetWidget1.j != null)
            ReaderTtsSetWidget1.j.cancel();
        ReaderTtsSetWidget1.m = ReaderTtsSetWidget1.k[int2];
        ReaderTtsSetWidget1.j = (TimerTask) new ck(ReaderTtsSetWidget1, int2);
        ReaderTtsSetWidget1.i.schedule(ReaderTtsSetWidget1.j, 1000L, 1000L);
        ReaderTtsSetWidget1.g.c();
    }

    static void c(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        ReaderTtsSetWidget1.c();
    }

    static void c(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2) {
        int int3 = 3;
        int int4;
        int int5;

        ReaderTtsSetWidget1.o = false;
        int4 = ReaderTtsSetWidget1.h.length;
        int5 = 0;
        if (int4 <= int3) {
            int3 = ReaderTtsSetWidget1.h.length;
            int5 = 0;
        }
        while (int5 < int3) {
            if (int5 == int2) {
                ReaderTtsSetWidget1.h[int5].setSelected("1");
                ReaderTtsSetWidget1.b[int5].setBackgroundResource(2130837757);
            } else {
                ReaderTtsSetWidget1.h[int5].setSelected("0");
                ReaderTtsSetWidget1.b[int5].setBackgroundResource(2130838190);
            }
            ++int5;
        }
        ReaderTtsSetWidget1.setSpeechVoice(ReaderTtsSetWidget1.b[int2].getTag().toString());
    }

    static boolean d(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        return ReaderTtsSetWidget1.o;
    }

    static int e(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        return ReaderTtsSetWidget1.m;
    }

    static int f(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        int int2 = ReaderTtsSetWidget1.m;

        ReaderTtsSetWidget1.m = int2 - 1;
        return int2;
    }

    static TextView[] g(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        return ReaderTtsSetWidget1.c;
    }

    static TtsRoot$Tts[] h(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        return ReaderTtsSetWidget1.h;
    }

    private boolean a(TtsRoot$Tts Tts1) {
        String String2 = com.clilystudio.netbook.hpay100.a.a.d(getContext(), "speech_voice", "");

        if (String2.equals("") || p)
            return Tts1.getSelected().equals("1");
        else
            return Tts1.getName().equals(String2);
    }

    private void c() {
        int int1;

        for (int1 = 0; int1 < c.length; ++int1) {
            if (int1 == n)
                c[int1].setBackgroundResource(2130837757);
            else {
                c[int1].setBackgroundResource(2130838190);
                c[int1].setText((CharSequence) l[int1]);
            }
        }
    }

    public final void a() {
        setVisibility(0);
        c();
    }

    public final void a(SpeechSynthesizer SpeechSynthesizer1) {
        String[] String_1darray2;
        int int3;

        q = SpeechSynthesizer1;
        String_1darray2 = new String[4];
        String_1darray2[0] = getContext().getString(2131034542);
        String_1darray2[1] = getContext().getString(2131034540);
        String_1darray2[2] = getContext().getString(2131034541);
        String_1darray2[3] = getContext().getString(2131034543);
        l = String_1darray2;
        b = new TextView[3];
        b[0] = (TextView) findViewById(2131493962);
        b[1] = (TextView) findViewById(2131493963);
        b[2] = (TextView) findViewById(2131493964);
        setVoiceSourceView();
        c = new TextView[4];
        c[0] = (TextView) findViewById(2131493966);
        c[1] = (TextView) findViewById(2131493967);
        c[2] = (TextView) findViewById(2131493968);
        c[3] = (TextView) findViewById(2131493969);
        for (int3 = 0; int3 < c.length; ++int3)
            c[int3].setOnClickListener((View$OnClickListener) new cj(this, int3));
        d = (TextView) findViewById(2131493965);
        d.setOnClickListener((View$OnClickListener) new cg(this));
        e = (SeekBar) findViewById(2131493960);
        e.setProgress(com.clilystudio.netbook.hpay100.a.a.a(getContext(), "speech_speed", 50));
        e.setOnSeekBarChangeListener((SeekBar$OnSeekBarChangeListener) new ch(this));
        f = (Button) findViewById(2131493970);
        f.setOnClickListener((View$OnClickListener) new ci(this));
        i = new Timer();
    }

    public final boolean b() {
        return o;
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1) {
        return true;
    }

    public void setOnPlayChangeListener(cn cn1) {
        g = cn1;
    }

    public void setPause(boolean boolean1) {
        o = boolean1;
    }

    public void setResetVoice(boolean boolean1) {
        p = boolean1;
    }

    public void setSpeechVoice(String String1) {
        if (q != null) {
            g.a(false);
            q.setParameter("voice_name", String1);
            com.clilystudio.netbook.hpay100.a.a.e(getContext(), "speech_voice", String1);
            g.a();
        }
    }

    public void setVoiceSourceView() {
        TtsRoot TtsRoot1 = TtsRoot.getInfoFromJson(SpeechUtility.getUtility().getParameter("tts"));

        if (TtsRoot1 != null && TtsRoot1.getRet().equals("0")) {
            TtsRoot$TtsResult TtsResult2 = TtsRoot1.getResult();

            if (TtsResult2 != null) {
                TtsRoot$Tts[] Tts_1darray3 = TtsResult2.getTts();

                if (Tts_1darray3 != null) {
                    TtsRoot$Tts[] Tts_1darray9;
                    int int10;
                    int int11;

                    if (Tts_1darray3.length <= 3)
                        Tts_1darray9 = Tts_1darray3;
                    else {
                        int int4 = 0;
                        int int5;

                        label_121:
                        {
                            while (int4 < Tts_1darray3.length) {
                                if (a(Tts_1darray3[int4])) {
                                    int5 = int4;
                                    break label_121;
                                } else
                                    ++int4;
                            }
                            int5 = 0;
                        }
                        if (int5 < 3)
                            Tts_1darray9 = Tts_1darray3;
                        else {
                            TtsRoot$Tts[] Tts_1darray6 = new TtsRoot$Tts[Tts_1darray3.length];
                            int int7;
                            int int8;

                            Tts_1darray6[0] = Tts_1darray3[int5];
                            int7 = 1;
                            for (int8 = 0; int8 < Tts_1darray3.length; ++int8) {
                                if (int8 != int5) {
                                    Tts_1darray6[int7] = Tts_1darray3[int8];
                                    ++int7;
                                }
                            }
                            Tts_1darray9 = Tts_1darray6;
                        }
                    }
                    h = Tts_1darray9;
                    if (h.length > 3)
                        int10 = 3;
                    else
                        int10 = h.length;
                    for (int11 = 0; int11 < int10; ++int11) {
                        b[int11].setVisibility(0);
                        b[int11].setText((CharSequence) h[int11].getNickname());
                        b[int11].setTag(h[int11].getName());
                        b[int11].setOnClickListener((View$OnClickListener) new cm(this, int11));
                        if (a(h[int11])) {
                            b[int11].setBackgroundResource(2130837757);
                            if (p) {
                                setSpeechVoice(h[int11].getName());
                                p = false;
                            }
                        } else
                            b[int11].setBackgroundResource(2130838190);
                    }
                    if (int10 < 3) {
                        while (int10 < 3) {
                            b[int10].setVisibility(4);
                            ++int10;
                        }
                    }
                }
            }
        }
    }
}
