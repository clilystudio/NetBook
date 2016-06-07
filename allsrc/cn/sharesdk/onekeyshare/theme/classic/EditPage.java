package cn.sharesdk.onekeyshare.theme.classic;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.onekeyshare.EditPageFakeActivity;
import cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo;
import com.arcsoft.hpay100.a.a;
import com.mob.tools.b.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class EditPage extends EditPageFakeActivity
  implements TextWatcher, View.OnClickListener
{
  private static final int DIM_COLOR = 2133996082;
  private static final int MAX_TEXT_COUNT = 140;
  private Drawable background;
  private EditText etContent;
  private Bitmap image;
  private EditPageFakeActivity.ImageInfo imgInfo;
  private ImageView ivImage;
  private ImageView ivPin;
  private LinearLayout llBody;
  private LinearLayout llPlat;
  private TitleLayout llTitle;
  private Platform[] platformList;
  private ProgressBar progressBar;
  private RelativeLayout rlPage;
  private RelativeLayout rlThumb;
  private TextView tvCounter;
  private View[] views;

  private void genBackground()
  {
    this.background = new ColorDrawable(2133996082);
    if (this.backgroundView != null);
    try
    {
      Bitmap localBitmap = a.a(a.a(this.backgroundView, this.backgroundView.getWidth(), this.backgroundView.getHeight()), 20, 8);
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(this.activity.getResources(), localBitmap);
      Drawable[] arrayOfDrawable = new Drawable[2];
      arrayOfDrawable[0] = localBitmapDrawable;
      arrayOfDrawable[1] = this.background;
      this.background = new LayerDrawable(arrayOfDrawable);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  private LinearLayout getAtLine(String paramString)
  {
    if (!isShowAtUserLayout(paramString))
      return null;
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams1.rightMargin = a.a(getContext(), 4);
    localLayoutParams1.gravity = 83;
    localLayoutParams1.weight = 1.0F;
    localLinearLayout.setLayoutParams(localLayoutParams1);
    localLinearLayout.setOnClickListener(new EditPage.5(this));
    TextView localTextView1 = new TextView(getContext());
    int i = a.d(this.activity, "btn_back_nor");
    if (i > 0)
      localTextView1.setBackgroundResource(i);
    int j = a.a(getContext(), 32);
    localTextView1.setLayoutParams(new LinearLayout.LayoutParams(j, j));
    localTextView1.setTextSize(1, 18.0F);
    localTextView1.setText(getAtUserButtonText(paramString));
    localTextView1.setPadding(0, 0, 0, a.a(getContext(), 2));
    localTextView1.setTypeface(Typeface.DEFAULT_BOLD);
    localTextView1.setTextColor(-16777216);
    localTextView1.setGravity(17);
    localLinearLayout.addView(localTextView1);
    TextView localTextView2 = new TextView(getContext());
    localTextView2.setTextSize(1, 18.0F);
    localTextView2.setTextColor(-16777216);
    int k = a.e(this.activity, "list_friends");
    Context localContext = getContext();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getName(paramString);
    localTextView2.setText(localContext.getString(k, arrayOfObject));
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams2.gravity = 16;
    localTextView2.setLayoutParams(localLayoutParams2);
    localLinearLayout.addView(localTextView2);
    return localLinearLayout;
  }

  private LinearLayout getBodyBottom()
  {
    LinearLayout localLinearLayout1 = new LinearLayout(getContext());
    localLinearLayout1.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    LinearLayout localLinearLayout2 = getAtLine(((Platform)this.platforms.get(0)).getName());
    if (localLinearLayout2 != null)
      localLinearLayout1.addView(localLinearLayout2);
    this.tvCounter = new TextView(getContext());
    this.tvCounter.setText("140");
    this.tvCounter.setTextColor(-3158065);
    this.tvCounter.setTextSize(1, 18.0F);
    this.tvCounter.setTypeface(Typeface.DEFAULT_BOLD);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    this.tvCounter.setLayoutParams(localLayoutParams);
    localLinearLayout1.addView(this.tvCounter);
    return localLinearLayout1;
  }

  private ImageView getImagePin()
  {
    this.ivPin = new ImageView(getContext());
    int i = a.d(this.activity, "pin");
    if (i > 0)
      this.ivPin.setImageResource(i);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(a.a(getContext(), 80), a.a(getContext(), 36));
    localLayoutParams.topMargin = a.a(getContext(), 6);
    localLayoutParams.addRule(6, this.llBody.getId());
    localLayoutParams.addRule(11);
    this.ivPin.setLayoutParams(localLayoutParams);
    this.ivPin.setVisibility(8);
    return this.ivPin;
  }

  private LinearLayout getMainBody()
  {
    LinearLayout localLinearLayout1 = new LinearLayout(getContext());
    localLinearLayout1.setOrientation(1);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams1.weight = 1.0F;
    int i = a.a(getContext(), 4);
    localLayoutParams1.setMargins(i, i, i, i);
    localLinearLayout1.setLayoutParams(localLayoutParams1);
    LinearLayout localLinearLayout2 = new LinearLayout(getContext());
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams2.weight = 1.0F;
    localLinearLayout1.addView(localLinearLayout2, localLayoutParams2);
    this.etContent = new EditText(getContext());
    this.etContent.setGravity(51);
    this.etContent.setBackgroundDrawable(null);
    this.etContent.setText(String.valueOf(this.shareParamMap.get("text")));
    this.etContent.addTextChangedListener(this);
    LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams3.weight = 1.0F;
    this.etContent.setLayoutParams(localLayoutParams3);
    localLinearLayout2.addView(this.etContent);
    localLinearLayout2.addView(getThumbView());
    localLinearLayout1.addView(getBodyBottom());
    return localLinearLayout1;
  }

  private String getName(String paramString)
  {
    if (paramString == null)
      return "";
    int i = a.e(getContext(), paramString.toLowerCase());
    return getContext().getString(i);
  }

  private LinearLayout getPageBody()
  {
    this.llBody = new LinearLayout(getContext());
    this.llBody.setId(2);
    int i = a.d(this.activity, "edittext_back");
    if (i > 0)
      this.llBody.setBackgroundResource(i);
    this.llBody.setOrientation(1);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(5, this.llTitle.getId());
    localLayoutParams.addRule(3, this.llTitle.getId());
    localLayoutParams.addRule(7, this.llTitle.getId());
    if (!this.dialogMode)
      localLayoutParams.addRule(12);
    int j = a.a(getContext(), 3);
    localLayoutParams.setMargins(j, j, j, j);
    this.llBody.setLayoutParams(localLayoutParams);
    this.llBody.addView(getMainBody());
    this.llBody.addView(getSep());
    this.llBody.addView(getPlatformList());
    return this.llBody;
  }

  private TitleLayout getPageTitle()
  {
    this.llTitle = new TitleLayout(getContext());
    this.llTitle.setId(1);
    this.llTitle.getBtnBack().setOnClickListener(this);
    int i = a.e(this.activity, "multi_share");
    if (i > 0)
      this.llTitle.getTvTitle().setText(i);
    this.llTitle.getBtnRight().setVisibility(0);
    int j = a.e(this.activity, "share");
    if (j > 0)
      this.llTitle.getBtnRight().setText(j);
    this.llTitle.getBtnRight().setOnClickListener(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(9);
    localLayoutParams.addRule(10);
    localLayoutParams.addRule(11);
    this.llTitle.setLayoutParams(localLayoutParams);
    return this.llTitle;
  }

  private RelativeLayout getPageView()
  {
    this.rlPage = new RelativeLayout(getContext());
    this.rlPage.setBackgroundDrawable(this.background);
    if (this.dialogMode)
    {
      RelativeLayout localRelativeLayout = new RelativeLayout(getContext());
      localRelativeLayout.setBackgroundColor(-1070452174);
      int i = a.a(getContext(), 8);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(a.l(getContext())[0] - (i << 1), -2);
      localLayoutParams.topMargin = i;
      localLayoutParams.bottomMargin = i;
      localLayoutParams.addRule(13);
      localRelativeLayout.setLayoutParams(localLayoutParams);
      this.rlPage.addView(localRelativeLayout);
      localRelativeLayout.addView(getPageTitle());
      localRelativeLayout.addView(getPageBody());
      localRelativeLayout.addView(getImagePin());
    }
    while (true)
    {
      return this.rlPage;
      this.rlPage.addView(getPageTitle());
      this.rlPage.addView(getPageBody());
      this.rlPage.addView(getImagePin());
    }
  }

  private Bitmap getPlatLogo(Platform paramPlatform)
  {
    if (paramPlatform == null);
    int i;
    do
    {
      do
        return null;
      while (paramPlatform.getName() == null);
      String str = "logo_" + paramPlatform.getName();
      i = a.d(this.activity, str.toLowerCase());
    }
    while (i <= 0);
    return BitmapFactory.decodeResource(this.activity.getResources(), i);
  }

  private LinearLayout getPlatformList()
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    TextView localTextView = new TextView(getContext());
    int i = a.e(this.activity, "share_to");
    if (i > 0)
      localTextView.setText(i);
    localTextView.setTextColor(-3158065);
    localTextView.setTextSize(1, 18.0F);
    int j = a.a(getContext(), 9);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams1.gravity = 16;
    localLayoutParams1.setMargins(j, 0, 0, 0);
    localTextView.setLayoutParams(localLayoutParams1);
    localLinearLayout.addView(localTextView);
    HorizontalScrollView localHorizontalScrollView = new HorizontalScrollView(getContext());
    localHorizontalScrollView.setHorizontalScrollBarEnabled(false);
    localHorizontalScrollView.setHorizontalFadingEdgeEnabled(false);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams2.setMargins(j, j, j, j);
    localHorizontalScrollView.setLayoutParams(localLayoutParams2);
    localLinearLayout.addView(localHorizontalScrollView);
    this.llPlat = new LinearLayout(getContext());
    this.llPlat.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
    localHorizontalScrollView.addView(this.llPlat);
    return localLinearLayout;
  }

  private View getSep()
  {
    View localView = new View(getContext());
    localView.setBackgroundColor(-16777216);
    localView.setLayoutParams(new LinearLayout.LayoutParams(-1, a.a(getContext(), 1)));
    return localView;
  }

  private RelativeLayout getThumbView()
  {
    this.rlThumb = new RelativeLayout(getContext());
    this.rlThumb.setId(1);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(a.a(getContext(), 82), a.a(getContext(), 98));
    this.rlThumb.setLayoutParams(localLayoutParams);
    this.ivImage = new ImageView(getContext());
    int i = a.d(this.activity, "btn_back_nor");
    if (i > 0)
      this.ivImage.setBackgroundResource(i);
    this.ivImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    this.ivImage.setImageBitmap(this.image);
    int j = a.a(getContext(), 4);
    this.ivImage.setPadding(j, j, j, j);
    int k = a.a(getContext(), 74);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(k, k);
    int m = a.a(getContext(), 16);
    int n = a.a(getContext(), 8);
    localLayoutParams1.setMargins(0, m, n, 0);
    this.ivImage.setLayoutParams(localLayoutParams1);
    this.ivImage.setOnClickListener(new EditPage.2(this));
    this.rlThumb.addView(this.ivImage);
    int i1 = a.a(getContext(), 24);
    this.progressBar = new ProgressBar(getContext());
    this.progressBar.setPadding(i1, i1, i1, i1);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(k, k);
    localLayoutParams2.setMargins(0, m, n, 0);
    this.progressBar.setLayoutParams(localLayoutParams2);
    this.rlThumb.addView(this.progressBar);
    Button localButton = new Button(getContext());
    localButton.setOnClickListener(new EditPage.3(this));
    int i2 = a.d(this.activity, "img_cancel");
    if (i2 > 0)
      localButton.setBackgroundResource(i2);
    int i3 = a.a(getContext(), 20);
    RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(i3, i3);
    localLayoutParams3.addRule(11);
    localLayoutParams3.addRule(12);
    localButton.setLayoutParams(localLayoutParams3);
    this.rlThumb.addView(localButton);
    if (!haveImage())
      this.rlThumb.setVisibility(8);
    return this.rlThumb;
  }

  private void hideSoftInput()
  {
    try
    {
      ((InputMethodManager)this.activity.getSystemService("input_method")).hideSoftInputFromWindow(this.etContent.getWindowToken(), 0);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  private void showThumb()
  {
    initImageList(new EditPage.4(this));
  }

  public void afterPlatformListGot()
  {
    int i;
    int j;
    int k;
    FrameLayout.LayoutParams localLayoutParams1;
    int m;
    int n;
    label81: FrameLayout localFrameLayout;
    int i1;
    if (this.platformList == null)
    {
      i = 0;
      this.views = new View[i];
      j = a.a(getContext(), 24);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(j, j);
      k = a.a(getContext(), 9);
      localLayoutParams.setMargins(0, 0, k, 0);
      localLayoutParams1 = new FrameLayout.LayoutParams(-1, -1);
      localLayoutParams1.gravity = 51;
      m = 0;
      n = 0;
      if (m >= i)
        break label366;
      localFrameLayout = new FrameLayout(getContext());
      localFrameLayout.setLayoutParams(localLayoutParams);
      if (m >= i - 1)
        localFrameLayout.setLayoutParams(new LinearLayout.LayoutParams(j, j));
      this.llPlat.addView(localFrameLayout);
      localFrameLayout.setOnClickListener(this);
      ImageView localImageView = new ImageView(getContext());
      localImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
      localImageView.setImageBitmap(getPlatLogo(this.platformList[m]));
      localImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
      localFrameLayout.addView(localImageView);
      this.views[m] = new View(getContext());
      this.views[m].setBackgroundColor(-805306369);
      this.views[m].setOnClickListener(this);
      String str = this.platformList[m].getName();
      Iterator localIterator = this.platforms.iterator();
      i1 = n;
      label270: if (!localIterator.hasNext())
        break label332;
      if (!str.equals(((Platform)localIterator.next()).getName()))
        break label388;
      this.views[m].setVisibility(4);
    }
    label388: for (int i2 = m; ; i2 = i1)
    {
      i1 = i2;
      break label270;
      i = this.platformList.length;
      break;
      label332: this.views[m].setLayoutParams(localLayoutParams1);
      localFrameLayout.addView(this.views[m]);
      m++;
      n = i1;
      break label81;
      label366: j.a(0, 333L, new EditPage.6(this, n, j, k));
      return;
    }
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onClick(View paramView)
  {
    int i = 0;
    if (paramView.equals(this.llTitle.getBtnBack()))
    {
      if (i >= this.views.length)
        break label253;
      if (this.views[i].getVisibility() != 4);
    }
    label213: label253: for (Platform localPlatform = this.platformList[i]; ; localPlatform = null)
    {
      if (localPlatform != null)
        ShareSDK.logDemoEvent(5, localPlatform);
      finish();
      int k;
      do
      {
        return;
        i++;
        break;
        if (!paramView.equals(this.llTitle.getBtnRight()))
          break label213;
        String str = this.etContent.getText().toString();
        this.shareParamMap.put("text", str);
        this.platforms.clear();
        for (int j = 0; j < this.views.length; j++)
        {
          if (this.views[j].getVisibility() == 0)
            continue;
          this.platforms.add(this.platformList[j]);
        }
        if (this.platforms.size() > 0)
        {
          setResultAndFinish();
          return;
        }
        k = a.e(this.activity, "select_one_plat_at_least");
      }
      while (k <= 0);
      Toast.makeText(getContext(), k, 0).show();
      return;
      if ((paramView instanceof FrameLayout))
      {
        ((FrameLayout)paramView).getChildAt(1).performClick();
        return;
      }
      if (paramView.getVisibility() == 4)
      {
        paramView.setVisibility(0);
        return;
      }
      paramView.setVisibility(4);
      return;
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.activity.getResources().getConfiguration().orientation == 2)
    {
      hideSoftInput();
      this.activity.getWindow().setSoftInputMode(35);
      this.rlPage.setBackgroundColor(2133996082);
      this.rlPage.postDelayed(new EditPage.7(this), 1000L);
      return;
    }
    hideSoftInput();
    this.activity.getWindow().setSoftInputMode(37);
    this.rlPage.setBackgroundColor(2133996082);
    this.rlPage.postDelayed(new EditPage.8(this), 1000L);
  }

  public void onCreate()
  {
    if ((this.shareParamMap == null) || (this.platforms == null) || (this.platforms.size() <= 0))
    {
      finish();
      return;
    }
    genBackground();
    this.activity.setContentView(getPageView());
    onTextChanged(this.etContent.getText(), 0, this.etContent.length(), 0);
    showThumb();
    new EditPage.1(this).start();
  }

  public boolean onFinish()
  {
    hideSoftInput();
    return super.onFinish();
  }

  public void onResult(HashMap<String, Object> paramHashMap)
  {
    String str = getJoinSelectedUser(paramHashMap);
    if (str != null)
      this.etContent.append(str);
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 140 - this.etContent.length();
    this.tvCounter.setText(String.valueOf(i));
    TextView localTextView = this.tvCounter;
    if (i > 0);
    for (int j = -3158065; ; j = -65536)
    {
      localTextView.setTextColor(j);
      return;
    }
  }

  public void setActivity(Activity paramActivity)
  {
    super.setActivity(paramActivity);
    Window localWindow = paramActivity.getWindow();
    if (paramActivity.getResources().getConfiguration().orientation == 2)
    {
      localWindow.setSoftInputMode(35);
      return;
    }
    localWindow.setSoftInputMode(37);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.EditPage
 * JD-Core Version:    0.6.0
 */