package com.clilystudio.netbook.reader;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

import com.clilystudio.netbook.model.TtsRoot;
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
    private int[] k = new int[]{300, 900, 1800, 3600};
    private String[] l = new String[]{"5\u5206\u949f", "15\u5206\u949f", "30\u5206\u949f", "60\u5206\u949f"};
    private int m;
    private int n = -1;
    private boolean o = false;
    private boolean p = false;
    private SpeechSynthesizer q;

    public ReaderTtsSetWidget(Context context) {
        super(context);
        this.a = new cl(this);
    }

    public ReaderTtsSetWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new cl(this);
    }

    static /* synthetic */ int a(ReaderTtsSetWidget readerTtsSetWidget, int n) {
        readerTtsSetWidget.n = n;
        return n;
    }

    static /* synthetic */ cn a(ReaderTtsSetWidget readerTtsSetWidget) {
        return readerTtsSetWidget.g;
    }

    static /* synthetic */ void a(ReaderTtsSetWidget readerTtsSetWidget, int n, boolean bl) {
        if (readerTtsSetWidget.j != null) {
            readerTtsSetWidget.j.cancel();
        }
        if (n >= 0 && n < readerTtsSetWidget.c.length) {
            readerTtsSetWidget.c[n].setText(readerTtsSetWidget.l[n]);
            readerTtsSetWidget.c[n].setBackgroundResource(2130838190);
        }
        if (bl) {
            readerTtsSetWidget.n = -1;
            readerTtsSetWidget.g.a(true);
            readerTtsSetWidget.g.d();
            readerTtsSetWidget.setVisibility(View.GONE);
            a.K(readerTtsSetWidget.getContext());
        }
    }

    static /* synthetic */ boolean a(ReaderTtsSetWidget readerTtsSetWidget, TtsRoot$Tts ttsRoot$Tts) {
        return readerTtsSetWidget.a(ttsRoot$Tts);
    }

    static /* synthetic */ boolean a(ReaderTtsSetWidget readerTtsSetWidget, boolean bl) {
        readerTtsSetWidget.o = bl;
        return bl;
    }

    static /* synthetic */ int b(ReaderTtsSetWidget readerTtsSetWidget) {
        return readerTtsSetWidget.n;
    }

    static /* synthetic */ void b(ReaderTtsSetWidget readerTtsSetWidget, int n) {
        readerTtsSetWidget.o = false;
        if (readerTtsSetWidget.j != null) {
            readerTtsSetWidget.j.cancel();
        }
        readerTtsSetWidget.m = readerTtsSetWidget.k[n];
        readerTtsSetWidget.j = new ck(readerTtsSetWidget, n);
        readerTtsSetWidget.i.schedule(readerTtsSetWidget.j, 1000, 1000);
        readerTtsSetWidget.g.c();
    }

    static /* synthetic */ void c(ReaderTtsSetWidget readerTtsSetWidget) {
        readerTtsSetWidget.c();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void c(ReaderTtsSetWidget readerTtsSetWidget, int n) {
        int n2 = 3;
        readerTtsSetWidget.o = false;
        int n3 = readerTtsSetWidget.h.length;
        int n4 = 0;
        if (n3 <= n2) {
            n2 = readerTtsSetWidget.h.length;
            n4 = 0;
        }
        do {
            if (n4 >= n2) {
                readerTtsSetWidget.setSpeechVoice(readerTtsSetWidget.b[n].getTag().toString());
                return;
            }
            if (n4 == n) {
                readerTtsSetWidget.h[n4].setSelected("1");
                readerTtsSetWidget.b[n4].setBackgroundResource(2130837757);
            } else {
                readerTtsSetWidget.h[n4].setSelected("0");
                readerTtsSetWidget.b[n4].setBackgroundResource(2130838190);
            }
            ++n4;
        } while (true);
    }

    static /* synthetic */ boolean d(ReaderTtsSetWidget readerTtsSetWidget) {
        return readerTtsSetWidget.o;
    }

    static /* synthetic */ int e(ReaderTtsSetWidget readerTtsSetWidget) {
        return readerTtsSetWidget.m;
    }

    static /* synthetic */ int f(ReaderTtsSetWidget readerTtsSetWidget) {
        int n = readerTtsSetWidget.m;
        readerTtsSetWidget.m = n - 1;
        return n;
    }

    static /* synthetic */ TextView[] g(ReaderTtsSetWidget readerTtsSetWidget) {
        return readerTtsSetWidget.c;
    }

    static /* synthetic */ TtsRoot$Tts[] h(ReaderTtsSetWidget readerTtsSetWidget) {
        return readerTtsSetWidget.h;
    }

    private boolean a(TtsRoot$Tts ttsRoot$Tts) {
        String string = a.d(this.getContext(), "speech_voice", "");
        if (string.equals("") || this.p) {
            return ttsRoot$Tts.getSelected().equals("1");
        }
        return ttsRoot$Tts.getName().equals(string);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c() {
        int n = 0;
        while (n < this.c.length) {
            if (n == this.n) {
                this.c[n].setBackgroundResource(2130837757);
            } else {
                this.c[n].setBackgroundResource(2130838190);
                this.c[n].setText(this.l[n]);
            }
            ++n;
        }
    }

    public final void a() {
        this.setVisibility(View.VISIBLE);
        this.c();
    }

    public final void a(SpeechSynthesizer speechSynthesizer) {
        this.q = speechSynthesizer;
        String[] arrstring = new String[]{this.getContext().getString(2131034542), this.getContext().getString(2131034540), this.getContext().getString(2131034541), this.getContext().getString(2131034543)};
        this.l = arrstring;
        this.b = new TextView[3];
        this.b[0] = (TextView) this.findViewById(2131493962);
        this.b[1] = (TextView) this.findViewById(2131493963);
        this.b[2] = (TextView) this.findViewById(2131493964);
        this.setVoiceSourceView();
        this.c = new TextView[4];
        this.c[0] = (TextView) this.findViewById(2131493966);
        this.c[1] = (TextView) this.findViewById(2131493967);
        this.c[2] = (TextView) this.findViewById(2131493968);
        this.c[3] = (TextView) this.findViewById(2131493969);
        for (int j = 0; j < this.c.length; ++j) {
            this.c[j].setOnClickListener((View.OnClickListener) ((Object) new cj(this, j)));
        }
        this.d = (TextView) this.findViewById(2131493965);
        this.d.setOnClickListener((View.OnClickListener) ((Object) new cg(this)));
        this.e = (SeekBar) this.findViewById(2131493960);
        this.e.setProgress(a.a(this.getContext(), "speech_speed", 50));
        this.e.setOnSeekBarChangeListener((SeekBar.OnSeekBarChangeListener) ((Object) new ch(this)));
        this.f = (Button) this.findViewById(2131493970);
        this.f.setOnClickListener((View.OnClickListener) ((Object) new ci(this)));
        this.i = new Timer();
    }

    public final boolean b() {
        return this.o;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setOnPlayChangeListener(cn cn2) {
        this.g = cn2;
    }

    public void setPause(boolean bl) {
        this.o = bl;
    }

    public void setResetVoice(boolean bl) {
        this.p = bl;
    }

    public void setSpeechVoice(String string) {
        if (this.q == null) {
            return;
        }
        this.g.a(false);
        this.q.setParameter("voice_name", string);
        a.e(this.getContext(), "speech_voice", string);
        this.g.a();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setVoiceSourceView() {
        block7:
        {
            var1_1 = TtsRoot.getInfoFromJson(SpeechUtility.getUtility().getParameter("tts"));
            if (var1_1 == null) return;
            if (var1_1.getRet().equals("0") == false) return;
            var2_2 = var1_1.getResult();
            if (var2_2 == null) return;
            var3_3 = var2_2.getTts();
            if (var3_3 == null) return;
            if (var3_3.length <= 3) {
                var9_4 = var3_3;
                lbl10:
                // 3 sources:
                do {
                    this.h = var9_4;
                    var10_10 = this.h.length > 3 ? 3 : this.h.length;
                    for (var11_11 = 0; var11_11 < var10_10; ++var11_11) {
                        this.b[var11_11].setVisibility(View.VISIBLE);
                        this.b[var11_11].setText(this.h[var11_11].getNickname());
                        this.b[var11_11].setTag(this.h[var11_11].getName());
                        this.b[var11_11].setOnClickListener((View.OnClickListener) new cm(this, var11_11));
                        if (this.a(this.h[var11_11])) {
                            this.b[var11_11].setBackgroundResource(2130837757);
                            if (!this.p) continue;
                            this.setSpeechVoice(this.h[var11_11].getName());
                            this.p = false;
                            continue;
                        }
                        this.b[var11_11].setBackgroundResource(2130838190);
                    }
                    if (var10_10 >= 3) return;
                    while (var10_10 < 3) {
                        this.b[var10_10].setVisibility(4);
                        ++var10_10;
                    }
                    return;
                    break;
                } while (true);
            }
            for (var4_5 = 0; var4_5 < var3_3.length; ++var4_5) {
                if (!this.a(var3_3[var4_5])) continue;
                var5_6 = var4_5;
                break block7;
            }
            var5_6 = 0;
        }
        if (var5_6 >= 3)**GOTO lbl41
        var9_4 = var3_3;
        **GOTO lbl10
        lbl41:
        // 1 sources:
        var6_7 = new TtsRoot$Tts[var3_3.length];
        var6_7[0] = var3_3[var5_6];
        var7_8 = 1;
        for (var8_9 = 0; var8_9 < var3_3.length; ++var8_9) {
            if (var8_9 == var5_6) continue;
            var6_7[var7_8] = var3_3[var8_9];
            ++var7_8;
        }
        var9_4 = var6_7;
        **while (true)
    }
}
