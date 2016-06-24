package com.clilystudio.netbook.reader;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.TtsRoot;
import com.clilystudio.netbook.util.t;
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
        this.a = new Handler(){
            @Override
            public final void handleMessage(Message message) {
                if (message.what < ReaderTtsSetWidget.g(ReaderTtsSetWidget.this).length && message.arg1 > 0) {
                    ReaderTtsSetWidget.g(ReaderTtsSetWidget.this)[message.what].setText(t.b(1000 * message.arg1));
                    return;
                }
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, message.what, true);
            }
        };
    }

    public ReaderTtsSetWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Handler(){
            @Override
            public final void handleMessage(Message message) {
                if (message.what < ReaderTtsSetWidget.g(ReaderTtsSetWidget.this).length && message.arg1 > 0) {
                    ReaderTtsSetWidget.g(ReaderTtsSetWidget.this)[message.what].setText(t.b(1000 * message.arg1));
                    return;
                }
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, message.what, true);
            }
        };
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
            readerTtsSetWidget.c[n].setBackgroundResource(R.drawable.tts_widget_text_bg);
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

    static /* synthetic */ void b(final ReaderTtsSetWidget readerTtsSetWidget, final int n) {
        readerTtsSetWidget.o = false;
        if (readerTtsSetWidget.j != null) {
            readerTtsSetWidget.j.cancel();
        }
        readerTtsSetWidget.m = readerTtsSetWidget.k[n];
        readerTtsSetWidget.j = new TimerTask() {
            @Override
            public void run() {
                if (!ReaderTtsSetWidget.d(readerTtsSetWidget)) {
                    if (ReaderTtsSetWidget.e(readerTtsSetWidget) > 0) {
                        ReaderTtsSetWidget.f(readerTtsSetWidget);
                    }
                    Message message = new Message();
                    message.what = n;
                    message.arg1 = ReaderTtsSetWidget.e(readerTtsSetWidget);
                    readerTtsSetWidget.a.sendMessage(message);
                }
            }
        };
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
                readerTtsSetWidget.b[n4].setBackgroundResource(R.drawable.common_red_bg_normal);
            } else {
                readerTtsSetWidget.h[n4].setSelected("0");
                readerTtsSetWidget.b[n4].setBackgroundResource(R.drawable.tts_widget_text_bg);
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
                this.c[n].setBackgroundResource(R.drawable.common_red_bg_normal);
            } else {
                this.c[n].setBackgroundResource(R.drawable.tts_widget_text_bg);
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
        String[] arrstring = new String[]{this.getContext().getString(R.string.tts_speech_time_5), this.getContext().getString(R.string.tts_speech_time_15), this.getContext().getString(R.string.tts_speech_time_30), this.getContext().getString(R.string.tts_speech_time_60)};
        this.l = arrstring;
        this.b = new TextView[3];
        this.b[0] = (TextView) this.findViewById(R.id.tts_voice1);
        this.b[1] = (TextView) this.findViewById(R.id.tts_voice2);
        this.b[2] = (TextView) this.findViewById(R.id.tts_voice3);
        this.setVoiceSourceView();
        this.c = new TextView[4];
        this.c[0] = (TextView) this.findViewById(R.id.tts_time1);
        this.c[1] = (TextView) this.findViewById(R.id.tts_time2);
        this.c[2] = (TextView) this.findViewById(R.id.tts_time3);
        this.c[3] = (TextView) this.findViewById(R.id.tts_time4);
        for (int j = 0; j < this.c.length; ++j) {
            final int finalJ = j;
            this.c[j].setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (ReaderTtsSetWidget.b(ReaderTtsSetWidget.this) == finalJ) {
                        ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, finalJ, false);
                        ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, -1);
                    } else {
                        ReaderTtsSetWidget.b(ReaderTtsSetWidget.this, finalJ);
                        ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, finalJ);
                    }
                    ReaderTtsSetWidget.c(ReaderTtsSetWidget.this);
                    ReaderTtsSetWidget.a(ReaderTtsSetWidget.this).c();
                }
            });
        }
        this.d = (TextView) this.findViewById(R.id.tts_voice_more);
        this.d.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderTtsSetWidget.this.setVisibility(View.GONE);
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this).b();
//                SpeechUtility.getUtility().openEngineSettings("tts");
            }
        });
        this.e = (SeekBar) this.findViewById(R.id.tts_voice_speed);
        this.e.setProgress(a.a(this.getContext(), "speech_speed", 50));
        this.e.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {

            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, false);
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this).a(false);
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this).a(seekBar.getProgress());
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this).a();
            }
        });
        this.f = (Button) this.findViewById(R.id.tts_exit);
        this.f.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, ReaderTtsSetWidget.b(ReaderTtsSetWidget.this), true);
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, true);
                ReaderTtsSetWidget.a(ReaderTtsSetWidget.this, -1);
            }
        });
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

    public void setVoiceSourceView() {
        return;
     }
}
