package android.support.v7.widget;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.design.widget.K;
import android.support.v4.widget.CursorAdapter;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.b.c;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.TextView.OnEditorActionListener;
import com.handmark.pulltorefresh.library.internal.e;
import java.util.WeakHashMap;

public class SearchView extends LinearLayoutCompat
  implements c
{
  static final aM a;
  private static final boolean b;
  private boolean A;
  private CharSequence B;
  private boolean C;
  private boolean D;
  private int E;
  private boolean F;
  private CharSequence G;
  private CharSequence H;
  private boolean I;
  private int J;
  private SearchableInfo K;
  private Bundle L;
  private Runnable M = new aA(this);
  private final Runnable N = new aE(this);
  private Runnable O = new aF(this);
  private final WeakHashMap<String, Drawable.ConstantState> P = new WeakHashMap();
  private final View.OnClickListener Q = new aJ(this);
  private View.OnKeyListener R = new aK(this);
  private final TextView.OnEditorActionListener S = new aL(this);
  private final AdapterView.OnItemClickListener T = new aB(this);
  private final AdapterView.OnItemSelectedListener U = new aC(this);
  private TextWatcher V = new aD(this);
  private final SearchView.SearchAutoComplete c;
  private final View d;
  private final View e;
  private final View f;
  private final ImageView g;
  private final ImageView h;
  private final ImageView i;
  private final ImageView j;
  private final View k;
  private final ImageView l;
  private final Drawable m;
  private final int n;
  private final int o;
  private final Intent p;
  private final Intent q;
  private final CharSequence r;
  private K s;
  private K t;
  private View.OnFocusChangeListener u;
  private K v;
  private View.OnClickListener w;
  private boolean x;
  private boolean y;
  private CursorAdapter z;

  static
  {
    if (Build.VERSION.SDK_INT >= 8);
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      a = new aM();
      return;
    }
  }

  public SearchView(Context paramContext)
  {
    this(paramContext, null);
  }

  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.searchViewStyle);
  }

  public SearchView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e locale = e.a(paramContext, paramAttributeSet, R.styleable.SearchView, paramInt, 0);
    locale.c();
    LayoutInflater.from(paramContext).inflate(locale.f(R.styleable.SearchView_layout, R.layout.abc_search_view), this, true);
    this.c = ((SearchView.SearchAutoComplete)findViewById(R.id.search_src_text));
    this.c.a(this);
    this.d = findViewById(R.id.search_edit_frame);
    this.e = findViewById(R.id.search_plate);
    this.f = findViewById(R.id.submit_area);
    this.g = ((ImageView)findViewById(R.id.search_button));
    this.h = ((ImageView)findViewById(R.id.search_go_btn));
    this.i = ((ImageView)findViewById(R.id.search_close_btn));
    this.j = ((ImageView)findViewById(R.id.search_voice_btn));
    this.l = ((ImageView)findViewById(R.id.search_mag_icon));
    this.e.setBackgroundDrawable(locale.a(R.styleable.SearchView_queryBackground));
    this.f.setBackgroundDrawable(locale.a(R.styleable.SearchView_submitBackground));
    this.g.setImageDrawable(locale.a(R.styleable.SearchView_searchIcon));
    this.h.setImageDrawable(locale.a(R.styleable.SearchView_goIcon));
    this.i.setImageDrawable(locale.a(R.styleable.SearchView_closeIcon));
    this.j.setImageDrawable(locale.a(R.styleable.SearchView_voiceIcon));
    this.l.setImageDrawable(locale.a(R.styleable.SearchView_searchIcon));
    this.m = locale.a(R.styleable.SearchView_searchHintIcon);
    this.n = locale.f(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
    this.o = locale.f(R.styleable.SearchView_commitIcon, 0);
    this.g.setOnClickListener(this.Q);
    this.i.setOnClickListener(this.Q);
    this.h.setOnClickListener(this.Q);
    this.j.setOnClickListener(this.Q);
    this.c.setOnClickListener(this.Q);
    this.c.addTextChangedListener(this.V);
    this.c.setOnEditorActionListener(this.S);
    this.c.setOnItemClickListener(this.T);
    this.c.setOnItemSelectedListener(this.U);
    this.c.setOnKeyListener(this.R);
    this.c.setOnFocusChangeListener(new aG(this));
    setIconifiedByDefault(locale.a(R.styleable.SearchView_iconifiedByDefault, true));
    int i1 = locale.d(R.styleable.SearchView_android_maxWidth, -1);
    if (i1 != -1)
      setMaxWidth(i1);
    this.r = locale.c(R.styleable.SearchView_defaultQueryHint);
    this.B = locale.c(R.styleable.SearchView_queryHint);
    int i2 = locale.a(R.styleable.SearchView_android_imeOptions, -1);
    if (i2 != -1)
      setImeOptions(i2);
    int i3 = locale.a(R.styleable.SearchView_android_inputType, -1);
    if (i3 != -1)
      setInputType(i3);
    setFocusable(locale.a(R.styleable.SearchView_android_focusable, true));
    locale.b();
    this.p = new Intent("android.speech.action.WEB_SEARCH");
    this.p.addFlags(268435456);
    this.p.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    this.q = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    this.q.addFlags(268435456);
    this.k = findViewById(this.c.getDropDownAnchor());
    if (this.k != null)
    {
      if (Build.VERSION.SDK_INT < 11)
        break label806;
      this.k.addOnLayoutChangeListener(new aH(this));
    }
    while (true)
    {
      a(this.x);
      m();
      return;
      label806: this.k.getViewTreeObserver().addOnGlobalLayoutListener(new aI(this));
    }
  }

  private Intent a(Cursor paramCursor, int paramInt, String paramString)
  {
    try
    {
      str1 = aS.a(paramCursor, "suggest_intent_action");
      if ((str1 == null) && (Build.VERSION.SDK_INT >= 8))
      {
        str1 = this.K.getSuggestIntentAction();
        break label216;
        str2 = aS.a(paramCursor, "suggest_intent_data");
        if ((b) && (str2 == null))
          str2 = this.K.getSuggestIntentData();
        if (str2 == null)
          break label229;
        String str3 = aS.a(paramCursor, "suggest_intent_data_id");
        if (str3 == null)
          break label229;
        str2 = str2 + "/" + Uri.encode(str3);
        break label229;
        while (true)
        {
          String str4 = aS.a(paramCursor, "suggest_intent_query");
          return a(str1, (Uri)localObject, aS.a(paramCursor, "suggest_intent_extra_data"), str4, paramInt, paramString);
          Uri localUri = Uri.parse(str2);
          localObject = localUri;
        }
      }
    }
    catch (RuntimeException localRuntimeException1)
    {
      while (true)
      {
        String str2;
        try
        {
          int i2 = paramCursor.getPosition();
          i1 = i2;
          Log.w("SearchView", "Search suggestions cursor at row " + i1 + " returned exception.", localRuntimeException1);
          return null;
        }
        catch (RuntimeException localRuntimeException2)
        {
          int i1 = -1;
          continue;
        }
        label216: if (str1 != null)
          continue;
        String str1 = "android.intent.action.SEARCH";
        continue;
        label229: if (str2 != null)
          continue;
        Object localObject = null;
      }
    }
  }

  private Intent a(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    Intent localIntent = new Intent(paramString1);
    localIntent.addFlags(268435456);
    if (paramUri != null)
      localIntent.setData(paramUri);
    localIntent.putExtra("user_query", this.H);
    if (paramString3 != null)
      localIntent.putExtra("query", paramString3);
    if (paramString2 != null)
      localIntent.putExtra("intent_extra_data_key", paramString2);
    if (this.L != null)
      localIntent.putExtra("app_data", this.L);
    if (paramInt != 0)
    {
      localIntent.putExtra("action_key", paramInt);
      localIntent.putExtra("action_msg", paramString4);
    }
    if (b)
      localIntent.setComponent(this.K.getSearchActivity());
    return localIntent;
  }

  private void a(int paramInt, String paramString1, String paramString2)
  {
    Intent localIntent = a("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(localIntent);
  }

  private void a(Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    try
    {
      getContext().startActivity(paramIntent);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("SearchView", "Failed launch activity: " + paramIntent, localRuntimeException);
    }
  }

  private void a(boolean paramBoolean)
  {
    boolean bool1 = true;
    int i1 = 8;
    this.y = paramBoolean;
    int i2;
    boolean bool2;
    label33: int i3;
    if (paramBoolean)
    {
      i2 = 0;
      if (TextUtils.isEmpty(this.c.getText()))
        break label112;
      bool2 = bool1;
      this.g.setVisibility(i2);
      b(bool2);
      View localView = this.d;
      if (!paramBoolean)
        break label118;
      i3 = i1;
      label61: localView.setVisibility(i3);
      ImageView localImageView = this.l;
      if (!this.x)
        break label124;
      label81: localImageView.setVisibility(i1);
      i();
      if (bool2)
        break label129;
    }
    while (true)
    {
      d(bool1);
      h();
      return;
      i2 = i1;
      break;
      label112: bool2 = false;
      break label33;
      label118: i3 = 0;
      break label61;
      label124: i1 = 0;
      break label81;
      label129: bool1 = false;
    }
  }

  private boolean a(int paramInt)
  {
    int i1;
    if (this.v != null)
    {
      boolean bool = this.v.g();
      i1 = 0;
      if (bool);
    }
    else
    {
      Cursor localCursor = this.z.getCursor();
      if ((localCursor != null) && (localCursor.moveToPosition(paramInt)))
        a(a(localCursor, 0, null));
      c(false);
      this.c.dismissDropDown();
      i1 = 1;
    }
    return i1;
  }

  static boolean a(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }

  private void b(CharSequence paramCharSequence)
  {
    this.c.setText(paramCharSequence);
    SearchView.SearchAutoComplete localSearchAutoComplete = this.c;
    if (TextUtils.isEmpty(paramCharSequence));
    for (int i1 = 0; ; i1 = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i1);
      return;
    }
  }

  private void b(boolean paramBoolean)
  {
    int i1 = 8;
    if ((this.A) && (g()) && (hasFocus()) && ((paramBoolean) || (!this.F)))
      i1 = 0;
    this.h.setVisibility(i1);
  }

  private void c(boolean paramBoolean)
  {
    if (paramBoolean)
      post(this.M);
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(this.M);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    }
    while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }

  private void d(boolean paramBoolean)
  {
    int i1;
    if ((this.F) && (!this.y) && (paramBoolean))
    {
      i1 = 0;
      this.h.setVisibility(8);
    }
    while (true)
    {
      this.j.setVisibility(i1);
      return;
      i1 = 8;
    }
  }

  private int f()
  {
    return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
  }

  private boolean g()
  {
    return ((this.A) || (this.F)) && (!this.y);
  }

  private void h()
  {
    int i1 = 8;
    if ((g()) && ((this.h.getVisibility() == 0) || (this.j.getVisibility() == 0)))
      i1 = 0;
    this.f.setVisibility(i1);
  }

  private void i()
  {
    int i1 = 1;
    int i2;
    label35: int i3;
    label47: Drawable localDrawable;
    if (!TextUtils.isEmpty(this.c.getText()))
    {
      i2 = i1;
      if ((i2 == 0) && ((!this.x) || (this.I)))
        break label90;
      ImageView localImageView = this.i;
      i3 = 0;
      if (i1 == 0)
        break label95;
      localImageView.setVisibility(i3);
      localDrawable = this.i.getDrawable();
      if (localDrawable != null)
        if (i2 == 0)
          break label102;
    }
    label90: label95: label102: for (int[] arrayOfInt = ENABLED_STATE_SET; ; arrayOfInt = EMPTY_STATE_SET)
    {
      localDrawable.setState(arrayOfInt);
      return;
      i2 = 0;
      break;
      i1 = 0;
      break label35;
      i3 = 8;
      break label47;
    }
  }

  private void l()
  {
    post(this.N);
  }

  private void m()
  {
    Object localObject;
    SearchView.SearchAutoComplete localSearchAutoComplete;
    if (this.B != null)
    {
      localObject = this.B;
      localSearchAutoComplete = this.c;
      if (localObject == null)
        localObject = "";
      if ((this.x) && (this.m != null))
        break label94;
    }
    while (true)
    {
      localSearchAutoComplete.setHint((CharSequence)localObject);
      return;
      if ((b) && (this.K != null) && (this.K.getHintId() != 0))
      {
        localObject = getContext().getText(this.K.getHintId());
        break;
      }
      localObject = this.r;
      break;
      label94: int i1 = (int)(1.25D * this.c.getTextSize());
      this.m.setBounds(0, 0, i1, i1);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
      localSpannableStringBuilder.setSpan(new ImageSpan(this.m), 1, 2, 33);
      localSpannableStringBuilder.append((CharSequence)localObject);
      localObject = localSpannableStringBuilder;
    }
  }

  private void n()
  {
    Editable localEditable = this.c.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0))
      if (this.s != null)
      {
        K localK = this.s;
        localEditable.toString();
        if (localK.e());
      }
      else
      {
        if (this.K != null)
          a(0, null, localEditable.toString());
        c(false);
        this.c.dismissDropDown();
      }
  }

  private void o()
  {
    if (TextUtils.isEmpty(this.c.getText()))
    {
      if ((this.x) && ((this.t == null) || (!this.t.d())))
      {
        clearFocus();
        a(true);
      }
      return;
    }
    this.c.setText("");
    this.c.requestFocus();
    c(true);
  }

  private void p()
  {
    a(false);
    this.c.requestFocus();
    c(true);
    if (this.w != null)
      this.w.onClick(this);
  }

  private void q()
  {
    a.a(this.c);
    a.b(this.c);
  }

  public final void a()
  {
    if (this.I)
      return;
    this.I = true;
    this.J = this.c.getImeOptions();
    this.c.setImeOptions(0x2000000 | this.J);
    this.c.setText("");
    setIconified(false);
  }

  final void a(CharSequence paramCharSequence)
  {
    b(paramCharSequence);
  }

  public final void b()
  {
    setQuery("", false);
    clearFocus();
    a(true);
    this.c.setImeOptions(this.J);
    this.I = false;
  }

  final int c()
  {
    return this.n;
  }

  public void clearFocus()
  {
    this.D = true;
    c(false);
    super.clearFocus();
    this.c.clearFocus();
    this.D = false;
  }

  final int d()
  {
    return this.o;
  }

  final void e()
  {
    a(this.y);
    l();
    if (this.c.hasFocus())
      q();
  }

  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.N);
    post(this.O);
    super.onDetachedFromWindow();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.y)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getSize(paramInt1);
    switch (i1)
    {
    default:
    case -2147483648:
    case 1073741824:
    case 0:
    }
    while (true)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), paramInt2);
      return;
      if (this.E > 0)
      {
        i2 = Math.min(this.E, i2);
        continue;
      }
      i2 = Math.min(f(), i2);
      continue;
      if (this.E <= 0)
        continue;
      i2 = Math.min(this.E, i2);
      continue;
      if (this.E > 0)
      {
        i2 = this.E;
        continue;
      }
      i2 = f();
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    l();
  }

  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.D);
    do
      return false;
    while (!isFocusable());
    if (!this.y)
    {
      boolean bool = this.c.requestFocus(paramInt, paramRect);
      if (bool)
        a(false);
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }

  public void setAppSearchData(Bundle paramBundle)
  {
    this.L = paramBundle;
  }

  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      o();
      return;
    }
    p();
  }

  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (this.x == paramBoolean)
      return;
    this.x = paramBoolean;
    a(paramBoolean);
    m();
  }

  public void setImeOptions(int paramInt)
  {
    this.c.setImeOptions(paramInt);
  }

  public void setInputType(int paramInt)
  {
    this.c.setInputType(paramInt);
  }

  public void setMaxWidth(int paramInt)
  {
    this.E = paramInt;
    requestLayout();
  }

  public void setOnCloseListener$2f0b952f(K paramK)
  {
    this.t = paramK;
  }

  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.u = paramOnFocusChangeListener;
  }

  public void setOnQueryTextListener$4f4ba414(K paramK)
  {
    this.s = paramK;
  }

  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    this.w = paramOnClickListener;
  }

  public void setOnSuggestionListener$6f7f4845(K paramK)
  {
    this.v = paramK;
  }

  public void setQuery(CharSequence paramCharSequence, boolean paramBoolean)
  {
    this.c.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      this.c.setSelection(this.c.length());
      this.H = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence)))
      n();
  }

  public void setQueryHint(CharSequence paramCharSequence)
  {
    this.B = paramCharSequence;
    m();
  }

  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    this.C = paramBoolean;
    aS localaS;
    if ((this.z instanceof aS))
    {
      localaS = (aS)this.z;
      if (!paramBoolean)
        break label35;
    }
    label35: for (int i1 = 2; ; i1 = 1)
    {
      localaS.a(i1);
      return;
    }
  }

  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    int i1 = 1;
    this.K = paramSearchableInfo;
    int i4;
    Intent localIntent;
    if (this.K != null)
    {
      if (b)
      {
        this.c.setThreshold(this.K.getSuggestThreshold());
        this.c.setImeOptions(this.K.getImeOptions());
        int i3 = this.K.getInputType();
        if ((i3 & 0xF) == i1)
        {
          i3 &= -65537;
          if (this.K.getSuggestAuthority() != null)
            i3 = 0x80000 | (i3 | 0x10000);
        }
        this.c.setInputType(i3);
        if (this.z != null)
          this.z.changeCursor(null);
        if (this.K.getSuggestAuthority() != null)
        {
          this.z = new aS(getContext(), this, this.K, this.P);
          this.c.setAdapter(this.z);
          aS localaS = (aS)this.z;
          if (!this.C)
            break label294;
          i4 = 2;
          localaS.a(i4);
        }
      }
      m();
    }
    else
    {
      if (!b)
        break label329;
      if ((this.K == null) || (!this.K.getVoiceSearchEnabled()))
        break label324;
      if (!this.K.getVoiceSearchLaunchWebSearch())
        break label300;
      localIntent = this.p;
    }
    while (true)
    {
      label234: int i2;
      if (localIntent != null)
        if (getContext().getPackageManager().resolveActivity(localIntent, 65536) != null)
        {
          i2 = i1;
          label259: if (i2 == 0)
            break label329;
        }
      while (true)
      {
        this.F = i1;
        if (this.F)
          this.c.setPrivateImeOptions("nm");
        a(this.y);
        return;
        label294: i4 = i1;
        break;
        label300: if (!this.K.getVoiceSearchLaunchRecognizer())
          break label334;
        localIntent = this.q;
        break label234;
        i2 = 0;
        break label259;
        label324: i2 = 0;
        break label259;
        label329: i1 = 0;
      }
      label334: localIntent = null;
    }
  }

  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    this.A = paramBoolean;
    a(this.y);
  }

  public void setSuggestionsAdapter(CursorAdapter paramCursorAdapter)
  {
    this.z = paramCursorAdapter;
    this.c.setAdapter(this.z);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.SearchView
 * JD-Core Version:    0.6.0
 */