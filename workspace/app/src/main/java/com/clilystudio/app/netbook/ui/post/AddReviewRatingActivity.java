package com.clilystudio.app.netbook.ui.post;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.clilystudio.app.netbook.ui.BaseActivity;
import uk.me.lewisdeane.ldialogs.h;

public class AddReviewRatingActivity extends BaseActivity
  implements View.OnClickListener
{
  private int a;

  private void a(int paramInt)
  {
    int i = 6 - paramInt;
    int[] arrayOfInt = { 2131493273, 2131493275, 2131493277, 2131493279, 2131493281 };
    int j = 0;
    if (j < 5)
    {
      ImageView localImageView = (ImageView)findViewById(arrayOfInt[j]);
      if (j == i - 1)
        localImageView.setImageResource(2130837820);
      while (true)
      {
        j++;
        break;
        localImageView.setImageResource(2130837818);
      }
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 256)
    {
      setResult(256);
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onBackPressed()
  {
    if ((this.a > 0) && (this.a <= 5))
    {
      if (getIntent().getBooleanExtra("isFromBookReviewList", false))
      {
        h localh = new h(this);
        localh.d = "提示";
        localh.e = "离开将丢失已编辑的内容，确定离开？";
        localh.b("留在此页", null);
        localh.a("离开", new H(this));
        localh.a().show();
        return;
      }
      Intent localIntent = getIntent();
      localIntent.putExtra("extraNextRating", this.a);
      setResult(-1, localIntent);
      finish();
      return;
    }
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131493273:
    case 2131493275:
    case 2131493277:
    case 2131493279:
    default:
    case 2131493272:
    case 2131493274:
    case 2131493276:
    case 2131493278:
    case 2131493280:
    }
    while (true)
    {
      a(this.a);
      return;
      this.a = 5;
      continue;
      this.a = 4;
      continue;
      this.a = 3;
      continue;
      this.a = 2;
      continue;
      this.a = 1;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903148);
    a(2131034297, 2131034419, new G(this));
    int[] arrayOfInt = { 2131493272, 2131493274, 2131493276, 2131493278, 2131493280 };
    for (int i = 0; i < 5; i++)
      findViewById(arrayOfInt[i]).setOnClickListener(this);
    int j = getIntent().getIntExtra("AddBookReviewRating", 0);
    if ((j > 0) && (j <= 5))
    {
      this.a = j;
      a(this.a);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.AddReviewRatingActivity
 * JD-Core Version:    0.6.2
 */