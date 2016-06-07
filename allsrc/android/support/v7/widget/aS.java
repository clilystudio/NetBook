package android.support.v7.widget;

import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.ResourceCursorAdapter;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

final class aS extends ResourceCursorAdapter
  implements View.OnClickListener
{
  private final SearchView a;
  private final SearchableInfo b;
  private final Context c;
  private final WeakHashMap<String, Drawable.ConstantState> d;
  private final int e;
  private boolean f = false;
  private int g = 1;
  private ColorStateList h;
  private int i = -1;
  private int j = -1;
  private int k = -1;
  private int l = -1;
  private int m = -1;
  private int n = -1;

  public aS(Context paramContext, SearchView paramSearchView, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, paramSearchView.c(), null, true);
    this.mContext.getSystemService("search");
    this.a = paramSearchView;
    this.b = paramSearchableInfo;
    this.e = paramSearchView.d();
    this.c = paramContext;
    this.d = paramWeakHashMap;
  }

  private Drawable a(ComponentName paramComponentName)
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    ActivityInfo localActivityInfo;
    int i1;
    try
    {
      localActivityInfo = localPackageManager.getActivityInfo(paramComponentName, 128);
      i1 = localActivityInfo.getIconResource();
      if (i1 == 0)
        return null;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.w("SuggestionsAdapter", localNameNotFoundException.toString());
      return null;
    }
    Drawable localDrawable = localPackageManager.getDrawable(paramComponentName.getPackageName(), i1, localActivityInfo.applicationInfo);
    if (localDrawable == null)
    {
      Log.w("SuggestionsAdapter", "Invalid icon resource " + i1 + " for " + paramComponentName.flattenToShortString());
      return null;
    }
    return localDrawable;
  }

  private Drawable a(Uri paramUri)
  {
    try
    {
      boolean bool = "android.resource".equals(paramUri.getScheme());
      if (bool)
        try
        {
          Drawable localDrawable2 = b(paramUri);
          return localDrawable2;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          throw new FileNotFoundException("Resource does not exist: " + paramUri);
        }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("SuggestionsAdapter", "Icon not found: " + paramUri + ", " + localFileNotFoundException.getMessage());
      return null;
    }
    InputStream localInputStream = this.c.getContentResolver().openInputStream(paramUri);
    if (localInputStream == null)
      throw new FileNotFoundException("Failed to open " + paramUri);
    try
    {
      Drawable localDrawable1 = Drawable.createFromStream(localInputStream, null);
      try
      {
        localInputStream.close();
        return localDrawable1;
      }
      catch (IOException localIOException2)
      {
        Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException2);
        return localDrawable1;
      }
    }
    finally
    {
    }
    try
    {
      localInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException1);
    }
  }

  private Drawable a(String paramString)
  {
    Drawable localDrawable1;
    if ((paramString == null) || (paramString.length() == 0) || ("0".equals(paramString)))
      localDrawable1 = null;
    while (true)
    {
      return localDrawable1;
      try
      {
        int i1 = Integer.parseInt(paramString);
        String str = "android.resource://" + this.c.getPackageName() + "/" + i1;
        localDrawable1 = b(str);
        if (localDrawable1 != null)
          continue;
        Drawable localDrawable3 = ContextCompat.getDrawable(this.c, i1);
        a(str, localDrawable3);
        return localDrawable3;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        localDrawable1 = b(paramString);
        if (localDrawable1 != null)
          continue;
        Drawable localDrawable2 = a(Uri.parse(paramString));
        a(paramString, localDrawable2);
        return localDrawable2;
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        Log.w("SuggestionsAdapter", "Icon resource not found: " + paramString);
      }
    }
    return null;
  }

  private static String a(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1)
      return null;
    try
    {
      String str = paramCursor.getString(paramInt);
      return str;
    }
    catch (Exception localException)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", localException);
    }
    return null;
  }

  public static String a(Cursor paramCursor, String paramString)
  {
    return a(paramCursor, paramCursor.getColumnIndex(paramString));
  }

  private static void a(Cursor paramCursor)
  {
    if (paramCursor != null);
    for (Bundle localBundle = paramCursor.getExtras(); ; localBundle = null)
    {
      if ((localBundle != null) && (localBundle.getBoolean("in_progress")));
      return;
    }
  }

  private static void a(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
      return;
    }
    paramImageView.setVisibility(0);
    paramDrawable.setVisible(false, false);
    paramDrawable.setVisible(true, false);
  }

  private static void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
  }

  private void a(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null)
      this.d.put(paramString, paramDrawable.getConstantState());
  }

  private Drawable b(Uri paramUri)
  {
    String str = paramUri.getAuthority();
    if (TextUtils.isEmpty(str))
      throw new FileNotFoundException("No authority: " + paramUri);
    Resources localResources;
    List localList;
    try
    {
      localResources = this.mContext.getPackageManager().getResourcesForApplication(str);
      localList = paramUri.getPathSegments();
      if (localList == null)
        throw new FileNotFoundException("No path: " + paramUri);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new FileNotFoundException("No package found for authority: " + paramUri);
    }
    int i1 = localList.size();
    if (i1 == 1);
    int i2;
    while (true)
    {
      try
      {
        int i3 = Integer.parseInt((String)localList.get(0));
        i2 = i3;
        if (i2 != 0)
          break;
        throw new FileNotFoundException("No resource found for: " + paramUri);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new FileNotFoundException("Single path segment is not a resource ID: " + paramUri);
      }
      if (i1 == 2)
      {
        i2 = localResources.getIdentifier((String)localList.get(1), (String)localList.get(0), str);
        continue;
      }
      throw new FileNotFoundException("More than two path segments: " + paramUri);
    }
    return localResources.getDrawable(i2);
  }

  private Drawable b(String paramString)
  {
    Drawable.ConstantState localConstantState = (Drawable.ConstantState)this.d.get(paramString);
    if (localConstantState == null)
      return null;
    return localConstantState.newDrawable();
  }

  public final void a(int paramInt)
  {
    this.g = paramInt;
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    aT localaT = (aT)paramView.getTag();
    if (this.n != -1);
    for (int i1 = paramCursor.getInt(this.n); ; i1 = 0)
    {
      if (localaT.a != null)
      {
        String str3 = a(paramCursor, this.i);
        a(localaT.a, str3);
      }
      Object localObject3;
      label211: Object localObject1;
      label247: ImageView localImageView1;
      if (localaT.b != null)
      {
        String str2 = a(paramCursor, this.k);
        if (str2 != null)
        {
          if (this.h == null)
          {
            TypedValue localTypedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(R.attr.textColorSearchUrl, localTypedValue, true);
            this.h = this.mContext.getResources().getColorStateList(localTypedValue.resourceId);
          }
          SpannableString localSpannableString = new SpannableString(str2);
          localSpannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.h, null), 0, str2.length(), 33);
          localObject3 = localSpannableString;
          if (!TextUtils.isEmpty((CharSequence)localObject3))
            break label361;
          if (localaT.a != null)
          {
            localaT.a.setSingleLine(false);
            localaT.a.setMaxLines(2);
          }
          a(localaT.b, (CharSequence)localObject3);
        }
      }
      else
      {
        if (localaT.c != null)
        {
          ImageView localImageView2 = localaT.c;
          if (this.l != -1)
            break label390;
          localObject1 = null;
          a(localImageView2, (Drawable)localObject1, 4);
        }
        if (localaT.d != null)
        {
          localImageView1 = localaT.d;
          if (this.m != -1)
            break label543;
        }
      }
      label390: label531: label543: for (Drawable localDrawable1 = null; ; localDrawable1 = a(paramCursor.getString(this.m)))
      {
        a(localImageView1, localDrawable1, 8);
        if ((this.g != 2) && ((this.g != 1) || ((i1 & 0x1) == 0)))
          break label562;
        localaT.e.setVisibility(0);
        localaT.e.setTag(localaT.a.getText());
        localaT.e.setOnClickListener(this);
        return;
        localObject3 = a(paramCursor, this.j);
        break;
        label361: if (localaT.a == null)
          break label211;
        localaT.a.setSingleLine(true);
        localaT.a.setMaxLines(1);
        break label211;
        localObject1 = a(paramCursor.getString(this.l));
        if (localObject1 != null)
          break label247;
        ComponentName localComponentName = this.b.getSearchActivity();
        String str1 = localComponentName.flattenToShortString();
        if (this.d.containsKey(str1))
        {
          Drawable.ConstantState localConstantState = (Drawable.ConstantState)this.d.get(str1);
          if (localConstantState == null);
          for (localObject1 = null; ; localObject1 = localConstantState.newDrawable(this.c.getResources()))
          {
            label461: if (localObject1 != null)
              break label531;
            localObject1 = this.mContext.getPackageManager().getDefaultActivityIcon();
            break;
          }
        }
        Drawable localDrawable2 = a(localComponentName);
        if (localDrawable2 == null);
        for (Object localObject2 = null; ; localObject2 = localDrawable2.getConstantState())
        {
          this.d.put(str1, localObject2);
          localObject1 = localDrawable2;
          break label461;
          break;
        }
      }
      label562: localaT.e.setVisibility(8);
      return;
    }
  }

  public final void changeCursor(Cursor paramCursor)
  {
    try
    {
      super.changeCursor(paramCursor);
      if (paramCursor != null)
      {
        this.i = paramCursor.getColumnIndex("suggest_text_1");
        this.j = paramCursor.getColumnIndex("suggest_text_2");
        this.k = paramCursor.getColumnIndex("suggest_text_2_url");
        this.l = paramCursor.getColumnIndex("suggest_icon_1");
        this.m = paramCursor.getColumnIndex("suggest_icon_2");
        this.n = paramCursor.getColumnIndex("suggest_flags");
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("SuggestionsAdapter", "error changing cursor and caching columns", localException);
    }
  }

  public final CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null);
    String str2;
    do
    {
      do
      {
        return null;
        String str1 = a(paramCursor, "suggest_intent_query");
        if (str1 != null)
          return str1;
        if (!this.b.shouldRewriteQueryFromData())
          continue;
        String str3 = a(paramCursor, "suggest_intent_data");
        if (str3 != null)
          return str3;
      }
      while (!this.b.shouldRewriteQueryFromText());
      str2 = a(paramCursor, "suggest_text_1");
    }
    while (str2 == null);
    return str2;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView1;
    try
    {
      View localView2 = super.getView(paramInt, paramView, paramViewGroup);
      return localView2;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", localRuntimeException);
      localView1 = newView(this.mContext, this.mCursor, paramViewGroup);
      if (localView1 != null)
        ((aT)localView1.getTag()).a.setText(localRuntimeException.toString());
    }
    return localView1;
  }

  public final boolean hasStableIds()
  {
    return false;
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = super.newView(paramContext, paramCursor, paramViewGroup);
    localView.setTag(new aT(localView));
    ((ImageView)localView.findViewById(R.id.edit_query)).setImageResource(this.e);
    return localView;
  }

  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    a(getCursor());
  }

  public final void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    a(getCursor());
  }

  public final void onClick(View paramView)
  {
    Object localObject = paramView.getTag();
    if ((localObject instanceof CharSequence))
      this.a.a((CharSequence)localObject);
  }

  public final Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null);
    for (String str1 = ""; (this.a.getVisibility() != 0) || (this.a.getWindowVisibility() != 0); str1 = paramCharSequence.toString())
      return null;
    SearchableInfo localSearchableInfo;
    Cursor localCursor;
    label83: String str2;
    while (true)
    {
      try
      {
        localSearchableInfo = this.b;
        if (localSearchableInfo != null)
          break label83;
        localCursor = null;
        if (localCursor != null)
        {
          localCursor.getCount();
          return localCursor;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", localRuntimeException);
      }
      return null;
      str2 = localSearchableInfo.getSuggestAuthority();
      if (str2 != null)
        break;
      localCursor = null;
    }
    Uri.Builder localBuilder = new Uri.Builder().scheme("content").authority(str2).query("").fragment("");
    String str3 = localSearchableInfo.getSuggestPath();
    if (str3 != null)
      localBuilder.appendEncodedPath(str3);
    localBuilder.appendPath("search_suggest_query");
    String str4 = localSearchableInfo.getSuggestSelection();
    if (str4 != null);
    for (String[] arrayOfString = { str1 }; ; arrayOfString = null)
    {
      localBuilder.appendQueryParameter("limit", "50");
      Uri localUri = localBuilder.build();
      localCursor = this.mContext.getContentResolver().query(localUri, null, str4, arrayOfString, null);
      break;
      localBuilder.appendPath(str1);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aS
 * JD-Core Version:    0.6.0
 */