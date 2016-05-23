package com.clilystudio.app.netbook.api;

import android.net.Uri;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;

import com.github.kevinsawicki.http.HttpRequest;
import com.github.kevinsawicki.http.HttpRequest.HttpRequestException;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.umeng.a.b;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.AdsResult;
import com.clilystudio.app.netbook.model.AliPayOrder;
import com.clilystudio.app.netbook.model.AutoCompleteRoot;
import com.clilystudio.app.netbook.model.BookAdd;
import com.clilystudio.app.netbook.model.BookGenderRecommend;
import com.clilystudio.app.netbook.model.BookHelpList;
import com.clilystudio.app.netbook.model.BookHelpResult;
import com.clilystudio.app.netbook.model.BookInfo;
import com.clilystudio.app.netbook.model.BookListRoot;
import com.clilystudio.app.netbook.model.BookRankDetailRoot;
import com.clilystudio.app.netbook.model.BookRankRoot;
import com.clilystudio.app.netbook.model.BookReviewRoot;
import com.clilystudio.app.netbook.model.BookShelfSyncTime;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.model.BookTagRoot;
import com.clilystudio.app.netbook.model.BookTopRoot;
import com.clilystudio.app.netbook.model.BookUpdate;
import com.clilystudio.app.netbook.model.CategoryLevelRoot;
import com.clilystudio.app.netbook.model.CategoryRoot;
import com.clilystudio.app.netbook.model.ChangeGenderRoot;
import com.clilystudio.app.netbook.model.ChangeNickNameRoot;
import com.clilystudio.app.netbook.model.Chapter;
import com.clilystudio.app.netbook.model.ChapterKeysRoot;
import com.clilystudio.app.netbook.model.ChapterRoot;
import com.clilystudio.app.netbook.model.ChapterSingleKey;
import com.clilystudio.app.netbook.model.ChargeTypes;
import com.clilystudio.app.netbook.model.ChineseAllPromRoot;
import com.clilystudio.app.netbook.model.CommentDetail;
import com.clilystudio.app.netbook.model.DeleteResult;
import com.clilystudio.app.netbook.model.DiscussSummaryList;
import com.clilystudio.app.netbook.model.FollowResult;
import com.clilystudio.app.netbook.model.FollowersResult;
import com.clilystudio.app.netbook.model.FollowingsResult;
import com.clilystudio.app.netbook.model.GameCatRoot;
import com.clilystudio.app.netbook.model.GameDetail;
import com.clilystudio.app.netbook.model.GameGiftResponse;
import com.clilystudio.app.netbook.model.GameGiftRoot;
import com.clilystudio.app.netbook.model.GameGroupRoot;
import com.clilystudio.app.netbook.model.GameLayoutRoot;
import com.clilystudio.app.netbook.model.GamePostRoot;
import com.clilystudio.app.netbook.model.GameRoot;
import com.clilystudio.app.netbook.model.GamesGiftRoot;
import com.clilystudio.app.netbook.model.GirlTopicList;
import com.clilystudio.app.netbook.model.GirlTopicResult;
import com.clilystudio.app.netbook.model.HotCommentRoot;
import com.clilystudio.app.netbook.model.HotKeywordResult;
import com.clilystudio.app.netbook.model.HotTweetResult;
import com.clilystudio.app.netbook.model.IKanshuUrlResult;
import com.clilystudio.app.netbook.model.MenuAd;
import com.clilystudio.app.netbook.model.MhdListRoot;
import com.clilystudio.app.netbook.model.MixTocRoot;
import com.clilystudio.app.netbook.model.MysteryBookList;
import com.clilystudio.app.netbook.model.NotifCountRoot;
import com.clilystudio.app.netbook.model.NotificationRoot;
import com.clilystudio.app.netbook.model.PayBalance;
import com.clilystudio.app.netbook.model.PayChargeRecord;
import com.clilystudio.app.netbook.model.PayConsumeRecord;
import com.clilystudio.app.netbook.model.PayResult;
import com.clilystudio.app.netbook.model.PayVoucherRecord;
import com.clilystudio.app.netbook.model.PostCountRoot;
import com.clilystudio.app.netbook.model.PostDetail;
import com.clilystudio.app.netbook.model.PostDetailComment;
import com.clilystudio.app.netbook.model.PostPublish;
import com.clilystudio.app.netbook.model.PurchaseChapterResult;
import com.clilystudio.app.netbook.model.PurchaseVipResult;
import com.clilystudio.app.netbook.model.RecommendUgcRoot;
import com.clilystudio.app.netbook.model.RelateBookRoot;
import com.clilystudio.app.netbook.model.RemoteBookShelf;
import com.clilystudio.app.netbook.model.ResultServer;
import com.clilystudio.app.netbook.model.ResultStatus;
import com.clilystudio.app.netbook.model.ReviewHistory;
import com.clilystudio.app.netbook.model.ReviewList;
import com.clilystudio.app.netbook.model.ReviewResult;
import com.clilystudio.app.netbook.model.Root;
import com.clilystudio.app.netbook.model.SearchPromRoot;
import com.clilystudio.app.netbook.model.SearchResultRoot;
import com.clilystudio.app.netbook.model.SecretAppItemRoot;
import com.clilystudio.app.netbook.model.ShelfMsgRoot;
import com.clilystudio.app.netbook.model.SplashRoot;
import com.clilystudio.app.netbook.model.SyncUploadResult;
import com.clilystudio.app.netbook.model.TimelineResult;
import com.clilystudio.app.netbook.model.Toc;
import com.clilystudio.app.netbook.model.TocSourceRoot;
import com.clilystudio.app.netbook.model.TocSummary;
import com.clilystudio.app.netbook.model.Topic;
import com.clilystudio.app.netbook.model.TopicCount;
import com.clilystudio.app.netbook.model.TopicSummary;
import com.clilystudio.app.netbook.model.TweetResult;
import com.clilystudio.app.netbook.model.TweetsResult;
import com.clilystudio.app.netbook.model.UGCBookDetailRoot;
import com.clilystudio.app.netbook.model.UGCBookListRoot;
import com.clilystudio.app.netbook.model.UGCNewCollection;
import com.clilystudio.app.netbook.model.UgcFilterRoot;
import com.clilystudio.app.netbook.model.UserInfo;
import com.clilystudio.app.netbook.model.UserInfoResult;
import com.clilystudio.app.netbook.model.UserVipInfo;
import com.clilystudio.app.netbook.model.UshaqiOnlineConfig;
import com.clilystudio.app.netbook.model.VipPlan;
import com.clilystudio.app.netbook.model.VoteResult;
import com.clilystudio.app.netbook.model.WXPayOrder;
import com.clilystudio.app.netbook.model.YyfPayOrder;
import com.clilystudio.app.netbook.model.mixtoc.EsChapterRoot;
import com.clilystudio.app.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.app.netbook.model.mixtoc.LdChapterRoot;
import com.clilystudio.app.netbook.model.mixtoc.LdTocRoot;
import com.clilystudio.app.netbook.model.mixtoc.SgChapterRoot;
import com.clilystudio.app.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.app.netbook.model.mixtoc.SsChapterJson;
import com.clilystudio.app.netbook.model.mixtoc.SsTocRoot;
import com.xiaomi.mistatistic.sdk.c;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ApiService
{
  public static String a;
  private static final String b = ApiService.class.getSimpleName();
  private static String d = "zhuishushenqi.com";
  private static final String e = "http://api." + d;
  private static String f;
  private static String g;
  private static String h;
  private static String i;
  private static String j;
  private static String k;
  private static final Gson l;
  private final f c;

  static
  {
    String str;
    if ("localServer".equals("Official"))
      str = "http://192.168.88.99:8080";
    while (true)
    {
      f = str;
      g = "http://chapter." + d;
      h = "http://chapter2." + d;
      a = "http://statics." + d;
      i = "http://m.baidu.com/s?word=";
      j = "http://tieba.baidu.com/f?kw=";
      k = "http://m.sm.cn/s?q=";
      l = new GsonBuilder().registerTypeAdapter(Date.class, new a()).create();
      return;
      if ("macServer".equals("Official"))
        str = "http://192.168.88.19:8080";
      else if ("frullyServer".equals("Official"))
        str = "http://192.168.88.240:8080";
      else
        str = e;
    }
  }

  public ApiService(f paramf)
  {
    c.a(new com.xiaomi.mistatistic.sdk.a.a());
    this.c = paramf;
  }

  public static String Q(String paramString)
  {
    return i + paramString;
  }

  public static String R(String paramString)
  {
    return j + paramString;
  }

  public static String S(String paramString)
  {
    return k + paramString;
  }

  private HttpRequest a(HttpRequest paramHttpRequest)
  {
    long l1 = new Date().getTime();
    if (e.a())
      e.a(paramHttpRequest);
    try
    {
      boolean bool = b(paramHttpRequest).c();
      a(paramHttpRequest.a().toString(), l1, paramHttpRequest.b(), "");
      if (!bool)
        throw new IOException("Unexpected response code: " + paramHttpRequest.b());
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      a(paramHttpRequest.a().toString(), l1, paramHttpRequest.b(), localHttpRequestException.getClass().getName());
      v();
      throw localHttpRequestException;
    }
    return paramHttpRequest;
  }

  private HttpRequest a(HttpRequest paramHttpRequest, int paramInt)
  {
    try
    {
      if (!b(paramHttpRequest, paramInt).c())
        throw new IOException("Unexpected response code: " + paramHttpRequest.b());
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      v();
      throw localHttpRequestException;
    }
    return paramHttpRequest;
  }

  private Root a(String paramString, HashMap<String, String> paramHashMap)
  {
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(f + paramString));
      localHttpRequest.a(paramHashMap);
      Root localRoot = (Root)a(localHttpRequest, Root.class);
      return localRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      label52: break label52;
    }
  }

  // ERROR //
  private static <V> V a(HttpRequest paramHttpRequest, Class<V> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 211	com/github/kevinsawicki/http/HttpRequest:e	()Ljava/io/BufferedReader;
    //   4: astore_2
    //   5: getstatic 107	com/ushaqi/zhuishushenqi/api/ApiService:l	Lcom/google/gson/Gson;
    //   8: aload_2
    //   9: aload_1
    //   10: invokevirtual 217	com/google/gson/Gson:fromJson	(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    //   13: astore 6
    //   15: aload_2
    //   16: invokevirtual 222	java/io/Reader:close	()V
    //   19: aload 6
    //   21: areturn
    //   22: astore 5
    //   24: new 224	com/ushaqi/zhuishushenqi/api/ApiService$JsonException
    //   27: dup
    //   28: aload 5
    //   30: invokespecial 227	com/ushaqi/zhuishushenqi/api/ApiService$JsonException:<init>	(Lcom/google/gson/JsonParseException;)V
    //   33: athrow
    //   34: astore_3
    //   35: aload_2
    //   36: invokevirtual 222	java/io/Reader:close	()V
    //   39: aload_3
    //   40: athrow
    //   41: astore 7
    //   43: aload 6
    //   45: areturn
    //   46: astore 4
    //   48: goto -9 -> 39
    //
    // Exception table:
    //   from	to	target	type
    //   5	15	22	com/google/gson/JsonParseException
    //   5	15	34	finally
    //   24	34	34	finally
    //   15	19	41	java/io/IOException
    //   35	39	46	java/io/IOException
  }

  private <V> V a(String paramString, Class<V> paramClass)
  {
    try
    {
      Object localObject = a(a(HttpRequest.a(f + paramString)), paramClass);
      return localObject;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static String a(String paramString, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    return String.format("http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d", arrayOfObject);
  }

  public static String a(String paramString1, int paramInt, String paramString2)
  {
    String str = am_CommonUtils.e(paramString2);
    String[] arrayOfString = com.arcsoft.hpay100.a.a.O(paramString1);
    if (arrayOfString != null)
    {
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = arrayOfString[0];
      arrayOfObject[1] = arrayOfString[1];
      arrayOfObject[2] = Integer.valueOf(paramInt);
      arrayOfObject[3] = str;
      return String.format("http://book.easou.com/ta/show.m?gid=%s&nid=%s&st=%d&cu=%s", arrayOfObject);
    }
    return null;
  }

  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return String.format("http://novel.mse.sogou.com/content.php?md=%s&bid=%s&cmd=%s&url=%s&chapter=%s&page=1&referred=detail", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5 });
  }

  public static void a(String paramString)
  {
    if (paramString.equals(d));
    while (d.contains("192.168"))
      return;
    d = paramString;
    f = "http://api." + d;
    g = "http://chapter." + d;
    a = "http://statics." + d;
  }

  private static void a(String paramString1, long paramLong, int paramInt, String paramString2)
  {
    try
    {
      long l1 = new Date().getTime();
      if (l1 > paramLong)
      {
        c.a(new com.xiaomi.mistatistic.sdk.b.a(paramString1, l1 - paramLong, paramInt, paramString2));
        b.a(MyApplication.a_getInstance(), "api_http_error", paramString2);
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static String ad(String paramString)
  {
    return paramString + "&distillate=true";
  }

  private HttpRequest b(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.b(15000).a(15000);
    f localf = this.c;
    if ("1".equals(b.b(MyApplication.a_getInstance(), "ua-toggle")));
    for (String str = localf.b(); ; str = "")
    {
      paramHttpRequest.a(str);
      paramHttpRequest.a("X-User-Agent", this.c.b());
      paramHttpRequest.a("X-Device-Id", am_CommonUtils.h());
      return paramHttpRequest;
    }
  }

  private HttpRequest b(HttpRequest paramHttpRequest, int paramInt)
  {
    paramHttpRequest.b(15000).a(15000);
    paramHttpRequest.a(this.c.a(paramInt));
    if (paramInt == 6)
      paramHttpRequest.b("http://bookshelf.html5.qq.com/page?t=pad");
    return paramHttpRequest;
  }

  public static String b(String paramString1, int paramInt, String paramString2)
  {
    String str = am_CommonUtils.e(am_CommonUtils.e(paramString2));
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    arrayOfObject[2] = str;
    return String.format("http://book.soso.com/#!/detail/%s/%d/%s", arrayOfObject);
  }

  private static <V> List<V> b(HttpRequest paramHttpRequest, Class<V> paramClass)
  {
    BufferedReader localBufferedReader = paramHttpRequest.e();
    ArrayList localArrayList;
    try
    {
      JsonArray localJsonArray = new JsonParser().parse(localBufferedReader).getAsJsonArray();
      localArrayList = new ArrayList();
      Iterator localIterator = localJsonArray.iterator();
      while (localIterator.hasNext())
      {
        JsonElement localJsonElement = (JsonElement)localIterator.next();
        localArrayList.add(l.fromJson(localJsonElement, paramClass));
      }
    }
    catch (JsonParseException localJsonParseException)
    {
      localJsonParseException = localJsonParseException;
      localJsonParseException.printStackTrace();
      throw new ApiService.JsonException(localJsonParseException);
    }
    finally
    {
    }
    try
    {
      localBufferedReader.close();
      label101: throw localObject;
      try
      {
        localBufferedReader.close();
        return localArrayList;
      }
      catch (IOException localIOException2)
      {
        return localArrayList;
      }
    }
    catch (IOException localIOException1)
    {
      break label101;
    }
  }

  public static void j(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString));
    String str3;
    do
    {
      String[] arrayOfString1;
      do
      {
        return;
        arrayOfString1 = paramString.split(",");
      }
      while (arrayOfString1.length < 4);
      String[] arrayOfString2 = new String[4];
      for (int m = 0; m < arrayOfString1.length; m++)
        arrayOfString2[m] = arrayOfString1[m].trim();
      String str1 = arrayOfString2[0];
      String str2 = arrayOfString2[1];
      str3 = arrayOfString2[2];
      if ((!TextUtils.isEmpty(str1)) && (!i.equals(str1)))
        i = str1;
      if ((!TextUtils.isEmpty(str2)) && (!j.equals(str2)))
        j = str2;
    }
    while ((TextUtils.isEmpty(str3)) || (k.equals(str3)));
    k = str3;
  }

  private static void v()
  {
    b.a(MyApplication.a_getInstance(), "server_error");
  }

  private static ChapterRoot w()
  {
    ChapterRoot localChapterRoot = new ChapterRoot();
    localChapterRoot.setStatus(-3);
    localChapterRoot.setChapter(new Chapter());
    return localChapterRoot;
  }

  private static ChapterRoot x()
  {
    ChapterRoot localChapterRoot = new ChapterRoot();
    localChapterRoot.setStatus(-3);
    localChapterRoot.setChapter(new Chapter());
    return localChapterRoot;
  }

  public final BookShelfSyncTime A(String paramString)
  {
    String str = f + String.format("/user/bookshelf-updated?token=%s", new Object[] { paramString });
    try
    {
      BookShelfSyncTime localBookShelfSyncTime = (BookShelfSyncTime)a(a(HttpRequest.a(str)), BookShelfSyncTime.class);
      return localBookShelfSyncTime;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final CommentDetail A(String paramString1, String paramString2)
  {
    String str = f + String.format("/post/%s/comment/%s", new Object[] { paramString1, paramString2 });
    try
    {
      CommentDetail localCommentDetail = (CommentDetail)a(a(HttpRequest.a(str)), CommentDetail.class);
      return localCommentDetail;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final RemoteBookShelf B(String paramString)
  {
    String str = f + String.format("/user/bookshelf?token=%s", new Object[] { paramString });
    try
    {
      RemoteBookShelf localRemoteBookShelf = (RemoteBookShelf)a(a(HttpRequest.a(str)), RemoteBookShelf.class);
      return localRemoteBookShelf;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final void B(String paramString1, String paramString2)
  {
    String str = f + String.format("/recommend-app/android/%s/download", new Object[] { paramString1 });
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.b(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString2);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      a(localHttpRequest2, ResultStatus.class);
      return;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final BookReviewRoot C(String paramString)
  {
    String str = f + String.format("/post/review/best-by-book?book=%s", new Object[] { paramString });
    try
    {
      BookReviewRoot localBookReviewRoot = (BookReviewRoot)a(a(HttpRequest.a(str)), BookReviewRoot.class);
      return localBookReviewRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final UGCBookDetailRoot C(String paramString1, String paramString2)
  {
    String str = f + String.format("/book-list/%s/draft?token=%s", new Object[] { paramString2, paramString1 });
    try
    {
      UGCBookDetailRoot localUGCBookDetailRoot = (UGCBookDetailRoot)a(a(HttpRequest.a(str)), UGCBookDetailRoot.class);
      return localUGCBookDetailRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus D(String paramString1, String paramString2)
  {
    String str = f + "/user/collected-book-list";
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString1);
      localHashMap.put("bookList", paramString2);
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      label92: break label92;
    }
  }

  public final ReviewResult D(String paramString)
  {
    String str = f + String.format("/post/review/%s", new Object[] { paramString });
    try
    {
      ReviewResult localReviewResult = (ReviewResult)a(a(HttpRequest.a(str)), ReviewResult.class);
      return localReviewResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookHelpResult E(String paramString)
  {
    String str = f + String.format("/post/help/%s", new Object[] { paramString });
    try
    {
      BookHelpResult localBookHelpResult = (BookHelpResult)a(a(HttpRequest.a(str)), BookHelpResult.class);
      return localBookHelpResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus E(String paramString1, String paramString2)
  {
    String str = f + "/user/collected-book-list/remove";
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.b(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString1);
      localHashMap.put("bookList", paramString2);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest2, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GirlTopicResult F(String paramString)
  {
    String str = f + String.format("/post/%s", new Object[] { paramString });
    try
    {
      GirlTopicResult localGirlTopicResult = (GirlTopicResult)a(a(HttpRequest.a(str)), GirlTopicResult.class);
      return localGirlTopicResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final Root F(String paramString1, String paramString2)
  {
    String str = f + String.format("/post/%s/like", new Object[] { paramString1 });
    HashMap localHashMap = new HashMap();
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.b(str);
      localHashMap.put("token", paramString2);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      Root localRoot = (Root)a(localHttpRequest2, Root.class);
      return localRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final NotifCountRoot G(String paramString)
  {
    return (NotifCountRoot)a(String.format("/user/notification/count?token=%s", new Object[] { paramString }), NotifCountRoot.class);
  }

  public final SyncUploadResult G(String paramString1, String paramString2)
  {
    String str = f + "/user/bookshelf";
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.c(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString1);
      localHashMap.put("books", paramString2);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      SyncUploadResult localSyncUploadResult = (SyncUploadResult)a(localHttpRequest2, SyncUploadResult.class);
      return localSyncUploadResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
    }
    return null;
  }

  public final PostDetail H(String paramString)
  {
    String str = f + String.format("/post/%s", new Object[] { paramString });
    try
    {
      PostDetail localPostDetail = (PostDetail)a(a(HttpRequest.a(str)), PostDetail.class);
      return localPostDetail;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final SyncUploadResult H(String paramString1, String paramString2)
  {
    String str = f + "/user/feedingBooks";
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.c(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString1);
      localHashMap.put("books", paramString2);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      SyncUploadResult localSyncUploadResult = (SyncUploadResult)a(localHttpRequest2, SyncUploadResult.class);
      return localSyncUploadResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
    }
    return null;
  }

  public final SyncUploadResult I(String paramString1, String paramString2)
  {
    String str = f + String.format("/user/bookshelf?token=%s&books=%s", new Object[] { paramString1, paramString2 });
    try
    {
      SyncUploadResult localSyncUploadResult = (SyncUploadResult)a(a(HttpRequest.d(str)), SyncUploadResult.class);
      return localSyncUploadResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
    }
    return null;
  }

  public final TopicCount I(String paramString)
  {
    String str = f + String.format("/post/total-count?books=%s", new Object[] { paramString });
    try
    {
      TopicCount localTopicCount = (TopicCount)a(a(HttpRequest.a(str)), TopicCount.class);
      return localTopicCount;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final AdsResult J(String paramString)
  {
    String str = f + String.format("/advert?platform=android&position=%s", new Object[] { paramString });
    try
    {
      AdsResult localAdsResult = (AdsResult)a(a(HttpRequest.a(str)), AdsResult.class);
      return localAdsResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final SyncUploadResult J(String paramString1, String paramString2)
  {
    String str = f + String.format("/user/feedingBooks?token=%s&books=%s", new Object[] { paramString1, paramString2 });
    try
    {
      SyncUploadResult localSyncUploadResult = (SyncUploadResult)a(a(HttpRequest.d(str)), SyncUploadResult.class);
      return localSyncUploadResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
    }
    return null;
  }

  public final GameGiftResponse K(String paramString1, String paramString2)
  {
    String str = f + "/gameGift/check";
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.b(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString2);
      localHashMap.put("giftId", paramString1);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      GameGiftResponse localGameGiftResponse = (GameGiftResponse)a(localHttpRequest2, GameGiftResponse.class);
      return localGameGiftResponse;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      label96: break label96;
    }
  }

  public final UserInfo K(String paramString)
  {
    String str = f + String.format("/user/detail-info?token=%s", new Object[] { paramString });
    try
    {
      UserInfo localUserInfo = (UserInfo)a(a(HttpRequest.a(str)), UserInfo.class);
      return localUserInfo;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final Root L(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString);
    return a("/user/notification/read-important", localHashMap);
  }

  public final Root M(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString);
    return a("/user/notification/read-unimportant", localHashMap);
  }

  public final AutoCompleteRoot N(String paramString)
  {
    String str1 = am_CommonUtils.e(paramString);
    String str2 = f + String.format("/book/auto-complete?query=%s", new Object[] { str1 });
    try
    {
      AutoCompleteRoot localAutoCompleteRoot = (AutoCompleteRoot)a(a(HttpRequest.a(str2)), AutoCompleteRoot.class);
      return localAutoCompleteRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final UserVipInfo O(String paramString)
  {
    String str = f + String.format("/user/account/vip?token=%s", new Object[] { paramString });
    try
    {
      UserVipInfo localUserVipInfo = (UserVipInfo)a(a(HttpRequest.a(str)), UserVipInfo.class);
      return localUserVipInfo;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus P(String paramString)
  {
    String str = f + "/user/logout";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final HotCommentRoot T(String paramString)
  {
    String str = f + String.format("/post/%s/comment/best", new Object[] { paramString });
    try
    {
      HotCommentRoot localHotCommentRoot = (HotCommentRoot)a(a(HttpRequest.a(str)), HotCommentRoot.class);
      return localHotCommentRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final UGCBookDetailRoot U(String paramString)
  {
    String str = f + String.format("/book-list/%s", new Object[] { paramString });
    try
    {
      UGCBookDetailRoot localUGCBookDetailRoot = (UGCBookDetailRoot)a(a(HttpRequest.a(str)), UGCBookDetailRoot.class);
      return localUGCBookDetailRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final RelateBookRoot V(String paramString)
  {
    String str = f + "/books/by-ids" + paramString;
    try
    {
      RelateBookRoot localRelateBookRoot = (RelateBookRoot)a(a(HttpRequest.a(str)), RelateBookRoot.class);
      return localRelateBookRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus W(String paramString)
  {
    String str = f + "/user/add-exp-week";
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.b(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString);
      localHashMap.put("type", "rate");
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest2, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final RelateBookRoot X(String paramString)
  {
    String str = f + String.format("/book/%s/recommend", new Object[] { paramString });
    try
    {
      RelateBookRoot localRelateBookRoot = (RelateBookRoot)a(a(HttpRequest.a(str)), RelateBookRoot.class);
      return localRelateBookRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GameDetail Y(String paramString)
  {
    String str = f + String.format("/game/%s", new Object[] { paramString });
    try
    {
      GameDetail localGameDetail = (GameDetail)a(a(HttpRequest.a(str)), GameDetail.class);
      return localGameDetail;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GameGroupRoot Z(String paramString)
  {
    String str = f + String.format("/game/group/%s", new Object[] { paramString });
    try
    {
      GameGroupRoot localGameGroupRoot = (GameGroupRoot)a(a(HttpRequest.a(str)), GameGroupRoot.class);
      return localGameGroupRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookHelpList a(String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt1);
    arrayOfObject[3] = Integer.valueOf(20);
    String str = String.format("/post/help?duration=%s&sort=%s&start=%d&limit=%d", arrayOfObject);
    if (paramBoolean)
      str = ad(str);
    try
    {
      BookHelpList localBookHelpList = (BookHelpList)a(a(HttpRequest.a(str)), BookHelpList.class);
      return localBookHelpList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookListRoot a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = am_CommonUtils.e(paramString3);
    arrayOfObject[3] = am_CommonUtils.e(paramString4);
    arrayOfObject[4] = Integer.valueOf(paramInt1);
    arrayOfObject[5] = Integer.valueOf(50);
    String str = String.format("/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d", arrayOfObject);
    try
    {
      BookListRoot localBookListRoot = (BookListRoot)a(a(HttpRequest.a(str)), BookListRoot.class);
      return localBookListRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterRoot a(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    String str1 = am_CommonUtils.e(paramString3);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = str1;
    String str2 = String.format("http://api.easou.com/api/bookapp/chapter.m?gid=%s&nid=%s&sort=%d&chapter_name=%s&cid=eef_", arrayOfObject);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.a(str2), 3);
      boolean bool = localHttpRequest.c();
      int m = localHttpRequest.b();
      if ((!bool) && (m >= 500))
        return x();
      EsChapterRoot localEsChapterRoot = (EsChapterRoot)a(localHttpRequest, EsChapterRoot.class);
      if (localEsChapterRoot != null)
      {
        if (localEsChapterRoot.getContent() != null)
        {
          ChapterRoot localChapterRoot1 = new ChapterRoot();
          String str3 = com.arcsoft.hpay100.a.a.z(localEsChapterRoot.getContent());
          Chapter localChapter = new Chapter();
          localChapter.setLink(paramString4);
          localChapter.setBody(str3);
          localChapterRoot1.setChapter(localChapter);
          return localChapterRoot1;
        }
        if (!localEsChapterRoot.isSuccess())
        {
          ChapterRoot localChapterRoot2 = x();
          return localChapterRoot2;
        }
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
    return null;
  }

  public final DiscussSummaryList a(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = paramString3;
    arrayOfObject[1] = paramString1;
    arrayOfObject[2] = paramString2;
    arrayOfObject[3] = Integer.valueOf(paramInt1);
    arrayOfObject[4] = Integer.valueOf(20);
    String str = String.format("/post/by-block?block=%s&duration=%s&sort=%s&type=all&start=%d&limit=%d", arrayOfObject);
    if (paramBoolean)
      str = ad(str);
    try
    {
      DiscussSummaryList localDiscussSummaryList = (DiscussSummaryList)a(a(HttpRequest.a(str)), DiscussSummaryList.class);
      return localDiscussSummaryList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GameRoot a(int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(20);
    String str = String.format("/game/ranklist?start=%d&limit=%d", arrayOfObject);
    try
    {
      GameRoot localGameRoot = (GameRoot)a(a(HttpRequest.a(str)), GameRoot.class);
      return localGameRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PayChargeRecord a(String paramString, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(10);
    String str = String.format("/charge/order?token=%s&start=%d&limit=%d&platform=android", arrayOfObject);
    try
    {
      PayChargeRecord localPayChargeRecord = (PayChargeRecord)a(a(HttpRequest.a(str)), PayChargeRecord.class);
      return localPayChargeRecord;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PayResult a(String paramString1, String paramString2)
  {
    String str = f + String.format("/charge/order/%s?token=%s", new Object[] { paramString1, paramString2 });
    try
    {
      PayResult localPayResult = (PayResult)a(a(HttpRequest.a(str)), PayResult.class);
      return localPayResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PayVoucherRecord a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(e);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt1);
    arrayOfObject[3] = Integer.valueOf(10);
    String str = String.format("/voucher?token=%s&type=%s&start=%d&limit=%d", arrayOfObject);
    try
    {
      PayVoucherRecord localPayVoucherRecord = (PayVoucherRecord)a(a(HttpRequest.a(str)), PayVoucherRecord.class);
      return localPayVoucherRecord;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = f + String.format("/user/twitter/%s/reply/comment/%s", new Object[] { paramString2, paramString3 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("content", paramString4);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final PostPublish a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    String str1 = f + "/post/review";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("book", paramString2);
    localHashMap.put("title", paramString3);
    localHashMap.put("content", paramString4);
    localHashMap.put("rating", paramString5);
    String str2;
    if (paramBoolean)
      str2 = "book";
    while (true)
    {
      localHashMap.put("from", str2);
      try
      {
        HttpRequest localHttpRequest = b(HttpRequest.b(str1));
        localHttpRequest.a(localHashMap);
        PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
        return localPostPublish;
        str2 = "community";
      }
      catch (HttpRequest.HttpRequestException localHttpRequestException)
      {
        localHttpRequestException.printStackTrace();
        throw localHttpRequestException.getCause();
      }
    }
  }

  public final PurchaseChapterResult a(String paramString1, String paramString2, int paramInt)
  {
    String str = f + "/purchase/buy";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("chapter", paramString2);
    if (paramInt == 1)
      localHashMap.put("type", "auto");
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PurchaseChapterResult localPurchaseChapterResult = (PurchaseChapterResult)a(localHttpRequest, PurchaseChapterResult.class);
      return localPurchaseChapterResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final ResultStatus a(UGCNewCollection paramUGCNewCollection, String paramString)
  {
    String str = f + "/book-list";
    try
    {
      localHttpRequest = b(HttpRequest.b(str));
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString);
      localHashMap.put("title", paramUGCNewCollection.getTitle());
      localHashMap.put("desc", paramUGCNewCollection.getDesc());
      localHttpRequest.a(localHashMap);
      Iterator localIterator = paramUGCNewCollection.getBooks().iterator();
      while (localIterator.hasNext())
      {
        BookSummary localBookSummary = (BookSummary)localIterator.next();
        localHttpRequest.a("books[]", localBookSummary.getId());
        localHttpRequest.a("comments[]", localBookSummary.getAppendComment());
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      HttpRequest localHttpRequest;
      localHttpRequestException.printStackTrace();
      return null;
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      label158: break label158;
    }
  }

  public final ResultStatus a(UGCNewCollection paramUGCNewCollection, String paramString1, String paramString2)
  {
    String str = f + String.format("/book-list/%s", new Object[] { paramString2 });
    try
    {
      localHttpRequest = b(HttpRequest.b(str));
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString1);
      localHashMap.put("title", paramUGCNewCollection.getTitle());
      localHashMap.put("desc", paramUGCNewCollection.getDesc());
      localHttpRequest.a(localHashMap);
      Iterator localIterator = paramUGCNewCollection.getBooks().iterator();
      while (localIterator.hasNext())
      {
        BookSummary localBookSummary = (BookSummary)localIterator.next();
        localHttpRequest.a("books[]", localBookSummary.getId());
        localHttpRequest.a("comments[]", localBookSummary.getAppendComment());
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      HttpRequest localHttpRequest;
      localHttpRequestException.printStackTrace();
      return null;
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      label171: break label171;
    }
  }

  public final ReviewList a(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString3;
    arrayOfObject[2] = paramString2;
    arrayOfObject[3] = Integer.valueOf(paramInt1);
    arrayOfObject[4] = Integer.valueOf(20);
    String str = String.format("/post/review?duration=%s&sort=%s&type=%s&start=%d&limit=%d", arrayOfObject);
    if (paramBoolean)
      str = ad(str);
    try
    {
      ReviewList localReviewList = (ReviewList)a(a(HttpRequest.a(str)), ReviewList.class);
      return localReviewList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final Root a(String paramString, Uri paramUri)
  {
    String str = f + "/user/change-avatar";
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a("token", null, null, paramString).a("avatar", paramUri.getPath(), "image/jpeg", new File(paramUri.getPath())).c();
      Root localRoot = (Root)a(localHttpRequest, Root.class);
      return localRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final UGCBookListRoot a(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt1);
    arrayOfObject[3] = Integer.valueOf(20);
    arrayOfObject[4] = paramString3;
    String str = String.format("/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s", arrayOfObject);
    try
    {
      UGCBookListRoot localUGCBookListRoot = (UGCBookListRoot)a(a(HttpRequest.a(str)), UGCBookListRoot.class);
      return localUGCBookListRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final UshaqiOnlineConfig a()
  {
    try
    {
      UshaqiOnlineConfig localUshaqiOnlineConfig = (UshaqiOnlineConfig)a(a(HttpRequest.a("http://alertserver.ushaqi.com/server_config")), UshaqiOnlineConfig.class);
      return localUshaqiOnlineConfig;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
  }

  public final VoteResult a(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/user/twitter/%s/vote", new Object[] { paramString2 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("n", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      VoteResult localVoteResult = (VoteResult)a(localHttpRequest, VoteResult.class);
      return localVoteResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final SsTocRoot a(int paramInt1, int paramInt2, String paramString)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = paramString;
    String str = String.format("http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200", arrayOfObject);
    try
    {
      SsTocRoot localSsTocRoot = (SsTocRoot)a(a(HttpRequest.a(str), 6), SsTocRoot.class);
      return localSsTocRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final List<BookUpdate> a(List<String> paramList)
  {
    if (paramList.isEmpty())
      return Collections.emptyList();
    String str1 = TextUtils.join(",", paramList.toArray());
    String str2 = f + String.format("/book?view=updated&id=%s", new Object[] { str1 });
    try
    {
      List localList = b(a(HttpRequest.a(str2)), BookUpdate.class);
      return localList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final List<BookSummary> a(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    StringBuffer localStringBuffer = new StringBuffer("?");
    int m = 0;
    if (m < paramArrayOfString.length)
    {
      if (m == 0)
        localStringBuffer.append("ids=" + paramArrayOfString[m]);
      while (true)
      {
        m++;
        break;
        localStringBuffer.append("&ids=" + paramArrayOfString[m]);
      }
    }
    String str = f + "/books/by-ids" + localStringBuffer;
    try
    {
      SearchResultRoot localSearchResultRoot = (SearchResultRoot)a(a(HttpRequest.a(str)), SearchResultRoot.class);
      if (localSearchResultRoot != null)
      {
        List localList = localSearchResultRoot.getBooks();
        return localList;
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
    return localArrayList;
  }

  public final ChineseAllPromRoot aa(String paramString)
  {
    String str = f + String.format("/book/%s/chinese-all-promo", new Object[] { paramString });
    try
    {
      ChineseAllPromRoot localChineseAllPromRoot = (ChineseAllPromRoot)a(a(HttpRequest.a(str)), ChineseAllPromRoot.class);
      return localChineseAllPromRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GameGiftRoot ab(String paramString)
  {
    String str = f + String.format("/gameGift/list?platform=android&gameId=%s", new Object[] { paramString });
    try
    {
      GameGiftRoot localGameGiftRoot = (GameGiftRoot)a(a(HttpRequest.a(str)), GameGiftRoot.class);
      return localGameGiftRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookGenderRecommend ac(String paramString)
  {
    String str = f + String.format("/book/recommend?gender=%s", new Object[] { paramString });
    try
    {
      BookGenderRecommend localBookGenderRecommend = (BookGenderRecommend)a(a(HttpRequest.a(str)), BookGenderRecommend.class);
      return localBookGenderRecommend;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GamesGiftRoot b(int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(0);
    arrayOfObject[1] = Integer.valueOf(30);
    String str = String.format("/game/giftCodeList?start=%d&limit=%d", arrayOfObject);
    try
    {
      GamesGiftRoot localGamesGiftRoot = (GamesGiftRoot)a(a(HttpRequest.a(str)), GamesGiftRoot.class);
      return localGamesGiftRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GirlTopicList b(String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt1);
    arrayOfObject[3] = Integer.valueOf(20);
    String str = String.format("/post/by-block?block=girl&duration=%s&sort=%s&start=%d&limit=%d", arrayOfObject);
    if (paramBoolean)
      str = ad(str);
    try
    {
      GirlTopicList localGirlTopicList = (GirlTopicList)a(a(HttpRequest.a(str)), GirlTopicList.class);
      return localGirlTopicList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final HotKeywordResult b()
  {
    String str = f + String.format("/book/hot-word", new Object[0]);
    try
    {
      HotKeywordResult localHotKeywordResult = (HotKeywordResult)a(a(HttpRequest.a(str)), HotKeywordResult.class);
      return localHotKeywordResult;
    }
    catch (Exception localException)
    {
      throw localException.getCause();
    }
  }

  public final PayBalance b(String paramString)
  {
    String str = f + String.format("/user/account?token=%s", new Object[] { paramString });
    try
    {
      PayBalance localPayBalance = (PayBalance)a(a(HttpRequest.a(str)), PayBalance.class);
      return localPayBalance;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PayConsumeRecord b(String paramString, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(10);
    String str = String.format("/purchase/record?token=%s&start=%d&limit=%d", arrayOfObject);
    try
    {
      PayConsumeRecord localPayConsumeRecord = (PayConsumeRecord)a(a(HttpRequest.a(str)), PayConsumeRecord.class);
      return localPayConsumeRecord;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish b(String paramString1, String paramString2, String paramString3)
  {
    String str = f + "/user/twitter/article";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("title", paramString2);
    localHashMap.put("content", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final PostPublish b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = f + String.format("/user/twitter/%s/comment/%s/report", new Object[] { paramString2, paramString3 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("reason", paramString4);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final PostPublish b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    String str = f + "/post";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("book", paramString2);
    localHashMap.put("title", paramString3);
    localHashMap.put("content", paramString4);
    localHashMap.put("votes", paramString5);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus b(UGCNewCollection paramUGCNewCollection, String paramString)
  {
    String str = f + "/book-list/draft";
    try
    {
      localHttpRequest = b(HttpRequest.b(str));
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString);
      localHashMap.put("title", paramUGCNewCollection.getTitle());
      localHashMap.put("desc", paramUGCNewCollection.getDesc());
      localHttpRequest.a(localHashMap);
      Iterator localIterator = paramUGCNewCollection.getBooks().iterator();
      while (localIterator.hasNext())
      {
        BookSummary localBookSummary = (BookSummary)localIterator.next();
        localHttpRequest.a("books[]", localBookSummary.getId());
        localHttpRequest.a("comments[]", localBookSummary.getAppendComment());
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      HttpRequest localHttpRequest;
      localHttpRequestException.printStackTrace();
      return null;
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      label158: break label158;
    }
  }

  public final ResultStatus b(UGCNewCollection paramUGCNewCollection, String paramString1, String paramString2)
  {
    String str = f + String.format("/book-list/%s/draft", new Object[] { paramString2 });
    try
    {
      localHttpRequest = b(HttpRequest.c(str));
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString1);
      localHashMap.put("title", paramUGCNewCollection.getTitle());
      localHashMap.put("desc", paramUGCNewCollection.getDesc());
      localHttpRequest.a(localHashMap);
      Iterator localIterator = paramUGCNewCollection.getBooks().iterator();
      while (localIterator.hasNext())
      {
        BookSummary localBookSummary = (BookSummary)localIterator.next();
        localHttpRequest.a("books[]", localBookSummary.getId());
        localHttpRequest.a("comments[]", localBookSummary.getAppendComment());
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      HttpRequest localHttpRequest;
      localHttpRequestException.printStackTrace();
      return null;
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      label171: break label171;
    }
  }

  public final Topic b(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt1);
    arrayOfObject[3] = Integer.valueOf(20);
    String str = String.format("/post/by-book?book=%s&sort=%s&type=normal,vote&start=%d&limit=%d", arrayOfObject);
    try
    {
      Topic localTopic = (Topic)a(a(HttpRequest.a(str)), Topic.class);
      return localTopic;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final WXPayOrder b(String paramString1, String paramString2)
  {
    String str = e + "/charge/weixinpay";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("productId", String.valueOf(paramString2));
    localHashMap.put("spbillCreateIp", "192.168.10.1");
    localHashMap.put("tradeType", "APP");
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      WXPayOrder localWXPayOrder = (WXPayOrder)a(localHttpRequest, WXPayOrder.class);
      return localWXPayOrder;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final String b(String paramString, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    String str1 = String.format("http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", arrayOfObject);
    try
    {
      String str2 = SsChapterJson.getChapterUrl(a(HttpRequest.a(str1), 6).d());
      return str2;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookReviewRoot c(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt1);
    arrayOfObject[3] = Integer.valueOf(20);
    String str = String.format("/post/review/by-book?book=%s&sort=%s&start=%d&limit=%d", arrayOfObject);
    try
    {
      BookReviewRoot localBookReviewRoot = (BookReviewRoot)a(a(HttpRequest.a(str)), BookReviewRoot.class);
      return localBookReviewRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookTagRoot c(String paramString, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = am_CommonUtils.e(paramString);
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(50);
    String str = String.format("/book/by-tags?tags=%s&start=%d&limit=%d", arrayOfObject);
    try
    {
      BookTagRoot localBookTagRoot = (BookTagRoot)a(a(HttpRequest.a(str)), BookTagRoot.class);
      return localBookTagRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterRoot c(String paramString, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    String str = String.format("http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", arrayOfObject);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.a(str), 6);
      boolean bool = localHttpRequest.c();
      int m = localHttpRequest.b();
      if ((!bool) && (m >= 500))
        return x();
      ChapterRoot localChapterRoot = SsChapterJson.getChapterRoot(localHttpRequest.d());
      return localChapterRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterRoot c(String paramString1, int paramInt, String paramString2)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    arrayOfObject[2] = paramString2;
    String str1 = String.format("http://m.leidian.com/index.php?c=ebook&a=chapterData&fmt=json&bid=%s&idx=%d&tk=%s", arrayOfObject);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.a(str1), 8);
      boolean bool = localHttpRequest.c();
      int m = localHttpRequest.b();
      if ((!bool) && (m >= 500))
        return x();
      LdChapterRoot localLdChapterRoot = (LdChapterRoot)a(localHttpRequest, LdChapterRoot.class);
      if ((localLdChapterRoot != null) && (localLdChapterRoot.getContent() != null))
      {
        ChapterRoot localChapterRoot = new ChapterRoot();
        String str2 = localLdChapterRoot.getContent();
        String str3 = null;
        if (str2 != null)
          str3 = str2.replaceAll("<p>", "").replaceAll("</p>", "\n");
        String str4 = com.arcsoft.hpay100.a.a.z(str3);
        Chapter localChapter = new Chapter();
        localChapter.setLink(localLdChapterRoot.getSrc());
        localChapter.setBody(str4);
        localChapterRoot.setChapter(localChapter);
        return localChapterRoot;
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
    return null;
  }

  public final ChargeTypes c()
  {
    String str = e + "/charge/product?platform=android";
    try
    {
      ChargeTypes localChargeTypes = (ChargeTypes)a(a(HttpRequest.a(str)), ChargeTypes.class);
      return localChargeTypes;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostCountRoot c(String paramString)
  {
    String str = f + String.format("/post/post-count-by-book?bookId=%s", new Object[] { paramString });
    try
    {
      PostCountRoot localPostCountRoot = (PostCountRoot)a(a(HttpRequest.a(str)), PostCountRoot.class);
      return localPostCountRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish c(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/user/twitter/%s/comment", new Object[] { paramString2 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("content", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final PostPublish c(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = f + "/post";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("block", "girl");
    localHashMap.put("title", paramString2);
    localHashMap.put("content", paramString3);
    localHashMap.put("votes", paramString4);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish c(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    String str = f + "/user/twitter/book";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("bookId", paramString2);
    localHashMap.put("title", paramString3);
    localHashMap.put("content", paramString4);
    localHashMap.put("score", paramString5);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public final ResultStatus c(UGCNewCollection paramUGCNewCollection, String paramString1, String paramString2)
  {
    String str = f + String.format("/book-list/%s/public", new Object[] { paramString2 });
    try
    {
      localHttpRequest = b(HttpRequest.c(str));
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString1);
      localHashMap.put("title", paramUGCNewCollection.getTitle());
      localHashMap.put("desc", paramUGCNewCollection.getDesc());
      localHttpRequest.a(localHashMap);
      Iterator localIterator = paramUGCNewCollection.getBooks().iterator();
      while (localIterator.hasNext())
      {
        BookSummary localBookSummary = (BookSummary)localIterator.next();
        localHttpRequest.a("books[]", localBookSummary.getId());
        localHttpRequest.a("comments[]", localBookSummary.getAppendComment());
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      HttpRequest localHttpRequest;
      localHttpRequestException.printStackTrace();
      return null;
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      label171: break label171;
    }
  }

  public final YyfPayOrder c(String paramString1, String paramString2)
  {
    String str = e + "/charge/youyifupay";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("productId", String.valueOf(paramString2));
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      YyfPayOrder localYyfPayOrder = (YyfPayOrder)a(localHttpRequest, YyfPayOrder.class);
      return localYyfPayOrder;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final AliPayOrder d(String paramString1, String paramString2)
  {
    String str = e + "/charge/alipay";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("productId", String.valueOf(paramString2));
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      AliPayOrder localAliPayOrder = (AliPayOrder)a(localHttpRequest, AliPayOrder.class);
      Log.d("tag", "req.contentLength :" + localHttpRequest.f());
      Log.d("tag", "aliPayOrder :" + localAliPayOrder.toString());
      return localAliPayOrder;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookRankRoot d()
  {
    String str = f + "/ranking/gender";
    try
    {
      BookRankRoot localBookRankRoot = (BookRankRoot)a(a(HttpRequest.a(str)), BookRankRoot.class);
      return localBookRankRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GamePostRoot d(String paramString, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(10);
    String str = String.format("/post/by-game?game=%s&start=%s&limit=%d", arrayOfObject);
    try
    {
      GamePostRoot localGamePostRoot = (GamePostRoot)a(a(HttpRequest.a(str)), GamePostRoot.class);
      return localGamePostRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish d(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = f + "/post";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("title", paramString2);
    localHashMap.put("content", paramString3);
    localHashMap.put("votes", paramString4);
    localHashMap.put("block", "ramble");
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final TimelineResult d(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/user/twitter/timeline/%s?token=%s", new Object[] { paramString2, paramString1 });
    HttpRequest localHttpRequest;
    if (paramString3 != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("last", paramString3);
      localHttpRequest = HttpRequest.a(str, localHashMap, false);
    }
    try
    {
      while (true)
      {
        TimelineResult localTimelineResult = (TimelineResult)a(a(localHttpRequest), TimelineResult.class);
        return localTimelineResult;
        localHttpRequest = HttpRequest.a(str);
      }
    }
    catch (Exception localException)
    {
      Log.e(b, localException.getMessage());
    }
    return null;
  }

  public final Topic d(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    String str = String.format("/user/collected-post?token=%s&start=%s", arrayOfObject);
    try
    {
      Topic localTopic = (Topic)a(a(HttpRequest.a(str)), Topic.class);
      return localTopic;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final List<TocSummary> d(String paramString)
  {
    String str = f + String.format("/toc?view=summary&book=%s", new Object[] { paramString });
    try
    {
      List localList = b(a(HttpRequest.a(str)), TocSummary.class);
      return localList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final CategoryRoot e()
  {
    String str = f + "/cats/lv2/statistics";
    try
    {
      CategoryRoot localCategoryRoot = (CategoryRoot)a(a(HttpRequest.a(str)), CategoryRoot.class);
      return localCategoryRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final DeleteResult e(String paramString1, String paramString2)
  {
    String str = e + String.format("/charge/order/%s?token=%s", new Object[] { paramString1, paramString2 });
    try
    {
      DeleteResult localDeleteResult = (DeleteResult)a(a(HttpRequest.d(str)), DeleteResult.class);
      return localDeleteResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final PostDetailComment e(String paramString, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(30);
    String str = String.format("/post/%s/comment?start=%d&limit=%d", arrayOfObject);
    try
    {
      PostDetailComment localPostDetailComment = (PostDetailComment)a(a(HttpRequest.a(str)), PostDetailComment.class);
      return localPostDetailComment;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish e(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/user/twitter/%s/report", new Object[] { paramString2 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("reason", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      a(localHttpRequest, PostPublish.class);
      return null;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final PostPublish e(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = f + "/post";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("book", paramString2);
    localHashMap.put("title", paramString3);
    localHashMap.put("content", paramString4);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final Toc e(String paramString)
  {
    String str = f + String.format("/toc/%s?view=chapters", new Object[] { paramString });
    try
    {
      Toc localToc = (Toc)a(a(HttpRequest.a(str)), Toc.class);
      return localToc;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final Topic e(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    String str = String.format("/user/posted?token=%s&start=%s", arrayOfObject);
    try
    {
      Topic localTopic = (Topic)a(a(HttpRequest.a(str)), Topic.class);
      return localTopic;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookAdd f(String paramString1, String paramString2, String paramString3)
  {
    String str = f + "/book/add";
    HashMap localHashMap = new HashMap();
    localHashMap.put("title", paramString1);
    localHashMap.put("author", paramString2);
    localHashMap.put("device", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      BookAdd localBookAdd = (BookAdd)a(localHttpRequest, BookAdd.class);
      return localBookAdd;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final CategoryLevelRoot f()
  {
    String str = f + "/cats/lv2";
    try
    {
      CategoryLevelRoot localCategoryLevelRoot = (CategoryLevelRoot)a(a(HttpRequest.a(str)), CategoryLevelRoot.class);
      return localCategoryLevelRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterSingleKey f(String paramString1, String paramString2)
  {
    String str = f + String.format("/purchase/chapter/%s/key?token=%s", new Object[] { paramString1, paramString2 });
    try
    {
      ChapterSingleKey localChapterSingleKey = (ChapterSingleKey)a(a(HttpRequest.a(str)), ChapterSingleKey.class);
      return localChapterSingleKey;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final MixTocRoot f(String paramString)
  {
    String str = f + String.format("/mix-toc/%s", new Object[] { paramString });
    try
    {
      MixTocRoot localMixTocRoot = (MixTocRoot)a(a(HttpRequest.a(str)), MixTocRoot.class);
      return localMixTocRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostDetailComment f(String paramString, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(30);
    String str = String.format("/post/review/%s/comment?start=%d&limit=%d", arrayOfObject);
    try
    {
      PostDetailComment localPostDetailComment = (PostDetailComment)a(a(HttpRequest.a(str)), PostDetailComment.class);
      return localPostDetailComment;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus f(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = f + String.format("/post/%s/comment", new Object[] { paramString1 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString2);
    localHashMap.put("content", paramString3);
    localHashMap.put("replyTo", paramString4);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final UGCBookListRoot f(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    String str = String.format("/user/collected-book-list?token=%s&start=%d", arrayOfObject);
    try
    {
      UGCBookListRoot localUGCBookListRoot = (UGCBookListRoot)a(a(HttpRequest.a(str)), UGCBookListRoot.class);
      return localUGCBookListRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final Account g(String paramString1, String paramString2, String paramString3)
  {
    String str = f + "/user/login";
    HashMap localHashMap = new HashMap();
    localHashMap.put("platform_code", paramString1);
    localHashMap.put("platform_uid", paramString2);
    localHashMap.put("platform_token", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      Account localAccount = (Account)a(localHttpRequest, Account.class);
      return localAccount;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterKeysRoot g(String paramString1, String paramString2)
  {
    String str = f + String.format("/purchase/book/%s/chapters/bought?token=%s", new Object[] { paramString2, paramString1 });
    try
    {
      ChapterKeysRoot localChapterKeysRoot = (ChapterKeysRoot)a(a(HttpRequest.a(str)), ChapterKeysRoot.class);
      return localChapterKeysRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final MhdListRoot g()
  {
    try
    {
      MhdListRoot localMhdListRoot = (MhdListRoot)a(a(HttpRequest.a("http://mhjk.1391.com/comic/bigbooklist")), MhdListRoot.class);
      return localMhdListRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish g(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = f + "/post";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("title", paramString2);
    localHashMap.put("content", paramString3);
    localHashMap.put("block", paramString4);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final TocSourceRoot g(String paramString)
  {
    String str = f + String.format("/aggregation-source/by-book?book=%s&v=5", new Object[] { paramString });
    try
    {
      TocSourceRoot localTocSourceRoot = (TocSourceRoot)a(a(HttpRequest.a(str)), TocSourceRoot.class);
      return localTocSourceRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final UGCBookListRoot g(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    String str = String.format("/user/posted-book-list?token=%s&start=%d", arrayOfObject);
    try
    {
      UGCBookListRoot localUGCBookListRoot = (UGCBookListRoot)a(a(HttpRequest.a(str)), UGCBookListRoot.class);
      return localUGCBookListRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final FollowingsResult h(String paramString)
  {
    String str = f + String.format("/user/followings/%s", new Object[] { paramString });
    try
    {
      FollowingsResult localFollowingsResult = (FollowingsResult)a(a(HttpRequest.a(str)), FollowingsResult.class);
      return localFollowingsResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final MysteryBookList h()
  {
    String str = f + "/book/mystery-box";
    try
    {
      MysteryBookList localMysteryBookList = (MysteryBookList)a(a(HttpRequest.a(str)), MysteryBookList.class);
      return localMysteryBookList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish h(String paramString1, String paramString2, String paramString3)
  {
    String str = f + "/post/help";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("title", paramString2);
    localHashMap.put("content", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus h(String paramString1, String paramString2)
  {
    String str = f + "/user/follow";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("followeeId", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final UGCBookListRoot h(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    String str = String.format("/user/draft-book-list?token=%s&start=%d", arrayOfObject);
    try
    {
      UGCBookListRoot localUGCBookListRoot = (UGCBookListRoot)a(a(HttpRequest.a(str)), UGCBookListRoot.class);
      return localUGCBookListRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final FollowersResult i(String paramString)
  {
    String str = f + String.format("/user/followers/%s", new Object[] { paramString });
    try
    {
      FollowersResult localFollowersResult = (FollowersResult)a(a(HttpRequest.a(str)), FollowersResult.class);
      return localFollowersResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final PostPublish i(String paramString1, String paramString2, String paramString3)
  {
    String str = f + "/post";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("content", paramString3);
    localHashMap.put("game", paramString2);
    localHashMap.put("block", "game");
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final RecommendUgcRoot i(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(3);
    String str = String.format("/book-list/%s/recommend?limit=%s", arrayOfObject);
    try
    {
      RecommendUgcRoot localRecommendUgcRoot = (RecommendUgcRoot)a(a(HttpRequest.a(str)), RecommendUgcRoot.class);
      return localRecommendUgcRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus i(String paramString1, String paramString2)
  {
    String str = f + "/user/unfollow";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("followeeId", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final List<MenuAd> i()
  {
    String str = f + "/recommend-app/android/piority";
    try
    {
      List localList = b(a(HttpRequest.a(str)), MenuAd.class);
      return localList;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final HotTweetResult j(String paramString)
  {
    String str = f + "/user/twitter/hottweets";
    HttpRequest localHttpRequest;
    if (paramString != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("last", paramString);
      localHttpRequest = HttpRequest.a(str, localHashMap, false);
    }
    try
    {
      while (true)
      {
        HotTweetResult localHotTweetResult = (HotTweetResult)a(a(localHttpRequest), HotTweetResult.class);
        return localHotTweetResult;
        localHttpRequest = HttpRequest.a(str);
      }
    }
    catch (Exception localException)
    {
      Log.e(b, localException.getMessage());
    }
    return null;
  }

  public final PostPublish j(String paramString1, String paramString2)
  {
    String str = f + "/user/twitter";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("content", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final ResultStatus j(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/post/%s/comment", new Object[] { paramString1 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString2);
    localHashMap.put("content", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final SplashRoot j()
  {
    String str = f + "/splashes/android";
    try
    {
      SplashRoot localSplashRoot = (SplashRoot)a(a(HttpRequest.a(str)), SplashRoot.class);
      return localSplashRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PostPublish k(String paramString1, String paramString2)
  {
    String str = f + String.format("/user/twitter/delete/%s", new Object[] { paramString2 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final TopicSummary k()
  {
    String str = f + "/post/post-count";
    try
    {
      TopicSummary localTopicSummary = (TopicSummary)a(a(HttpRequest.a(str)), TopicSummary.class);
      return localTopicSummary;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final TweetsResult k(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(f);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = am_CommonUtils.e().getUser().getId();
    String str = String.format("/user/%s/twitter", arrayOfObject);
    HttpRequest localHttpRequest;
    if (paramString != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("last", paramString);
      localHttpRequest = HttpRequest.a(str, localHashMap, false);
    }
    try
    {
      while (true)
      {
        TweetsResult localTweetsResult = (TweetsResult)a(a(localHttpRequest), TweetsResult.class);
        return localTweetsResult;
        localHttpRequest = HttpRequest.a(str);
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final VoteResult k(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/post/%s/vote", new Object[] { paramString1 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString2);
    localHashMap.put("n", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      VoteResult localVoteResult = (VoteResult)a(localHttpRequest, VoteResult.class);
      return localVoteResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final PostDetailComment l(String paramString1, String paramString2)
  {
    String str = f + String.format("/user/twitter/%s/comments", new Object[] { paramString1 });
    HttpRequest localHttpRequest;
    if (paramString2 != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("last", paramString2);
      localHttpRequest = HttpRequest.a(str, localHashMap, false);
    }
    try
    {
      while (true)
      {
        PostDetailComment localPostDetailComment = (PostDetailComment)a(a(localHttpRequest), PostDetailComment.class);
        return localPostDetailComment;
        localHttpRequest = HttpRequest.a(str);
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final ResultStatus l(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/post/%s/comment/%s/report", new Object[] { paramString1, paramString2 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("reason", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final ShelfMsgRoot l()
  {
    String str = f + "/notification/shelfMessage?platform=android";
    try
    {
      ShelfMsgRoot localShelfMsgRoot = (ShelfMsgRoot)a(a(HttpRequest.a(str)), ShelfMsgRoot.class);
      return localShelfMsgRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final TweetResult l(String paramString)
  {
    String str = f + String.format("/user/twitter/%s", new Object[] { paramString });
    try
    {
      TweetResult localTweetResult = (TweetResult)a(a(HttpRequest.a(str)), TweetResult.class);
      return localTweetResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final PostPublish m(String paramString1, String paramString2)
  {
    String str = f + String.format("/user/twitter/retweet/%s", new Object[] { paramString2 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PostPublish localPostPublish = (PostPublish)a(localHttpRequest, PostPublish.class);
      return localPostPublish;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final ResultStatus m(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/post/review/%s/helpful", new Object[] { paramString2 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("is_helpful", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final UserInfoResult m(String paramString)
  {
    String str = f + String.format("/user/info/%s", new Object[] { paramString });
    try
    {
      UserInfoResult localUserInfoResult = (UserInfoResult)a(a(HttpRequest.a(str)), UserInfoResult.class);
      return localUserInfoResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final VipPlan m()
  {
    String str = f + "/purchase/vip/plan";
    try
    {
      VipPlan localVipPlan = (VipPlan)a(a(HttpRequest.a(str)), VipPlan.class);
      return localVipPlan;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final FollowResult n(String paramString1, String paramString2)
  {
    String str = f + String.format("/user/%s/has/followed/%s", new Object[] { paramString1, paramString2 });
    try
    {
      FollowResult localFollowResult = (FollowResult)a(b(HttpRequest.a(str)), FollowResult.class);
      return localFollowResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final ResultStatus n(String paramString1, String paramString2, String paramString3)
  {
    String str = f + "/statistics/read";
    HashMap localHashMap = new HashMap();
    localHashMap.put("date", paramString1);
    localHashMap.put("uuid", paramString2);
    localHashMap.put("book", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final SecretAppItemRoot n()
  {
    String str = f + "/recommend-app/android/mystery-box";
    try
    {
      SecretAppItemRoot localSecretAppItemRoot = (SecretAppItemRoot)a(a(HttpRequest.a(str)), SecretAppItemRoot.class);
      return localSecretAppItemRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final List<BookSummary> n(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = am_CommonUtils.e(paramString);
    String str2 = f + String.format("/book/fuzzy-search?query=%s", new Object[] { str1 });
    try
    {
      SearchResultRoot localSearchResultRoot = (SearchResultRoot)a(a(HttpRequest.a(str2)), SearchResultRoot.class);
      if (localSearchResultRoot != null)
      {
        List localList = localSearchResultRoot.getBooks();
        return localList;
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
    return localArrayList;
  }

  public final ResultStatus o(String paramString1, String paramString2, String paramString3)
  {
    String str = f + String.format("/post/%s/comment/%s/like", new Object[] { paramString1, paramString2 });
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.b(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString3);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      localHttpRequest2.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest2, ResultStatus.class);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      label101: break label101;
    }
  }

  public final SearchResultRoot o(String paramString)
  {
    String str1 = am_CommonUtils.e(paramString);
    String str2 = f + "/book/accurate-search?author=" + str1;
    try
    {
      SearchResultRoot localSearchResultRoot = (SearchResultRoot)a(a(HttpRequest.a(str2)), SearchResultRoot.class);
      return localSearchResultRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final TweetsResult o(String paramString1, String paramString2)
  {
    String str = f + String.format("/user/%s/twitter", new Object[] { paramString1 });
    HttpRequest localHttpRequest;
    if (paramString2 != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("last", paramString2);
      localHttpRequest = HttpRequest.a(str, localHashMap, false);
    }
    try
    {
      while (true)
      {
        TweetsResult localTweetsResult = (TweetsResult)a(a(localHttpRequest), TweetsResult.class);
        return localTweetsResult;
        localHttpRequest = HttpRequest.a(str);
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final UgcFilterRoot o()
  {
    String str = f + "/book-list/tagType";
    try
    {
      UgcFilterRoot localUgcFilterRoot = (UgcFilterRoot)a(a(HttpRequest.a(str)), UgcFilterRoot.class);
      return localUgcFilterRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterRoot p(String paramString1, String paramString2)
  {
    String str1 = String.format("http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s", new Object[] { paramString2, am_CommonUtils.e(paramString1) });
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.a(str1), 7);
      boolean bool = localHttpRequest.c();
      int m = localHttpRequest.b();
      if ((!bool) && (m >= 500))
        return x();
      SgChapterRoot localSgChapterRoot = (SgChapterRoot)a(localHttpRequest, SgChapterRoot.class);
      if ((localSgChapterRoot != null) && (localSgChapterRoot.getContent() != null) && (localSgChapterRoot.getContent().length > 0))
      {
        ChapterRoot localChapterRoot = new ChapterRoot();
        String str2 = com.arcsoft.hpay100.a.a.z(localSgChapterRoot.getContent()[0].getBlock());
        Chapter localChapter = new Chapter();
        localChapter.setLink(paramString1);
        if ((str2 != null) && (str2.contains("</")))
          str2 = Html.fromHtml(str2.replace("\n", "<br>")).toString();
        localChapter.setBody(str2);
        localChapterRoot.setChapter(localChapter);
        return localChapterRoot;
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
    return null;
  }

  public final GameRoot p()
  {
    String str = f + "/game?platform=android";
    try
    {
      GameRoot localGameRoot = (GameRoot)a(a(HttpRequest.a(str)), GameRoot.class);
      return localGameRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultServer p(String paramString1, String paramString2, String paramString3)
  {
    String str = f + "/statistics/install";
    HashMap localHashMap = new HashMap();
    localHashMap.put("platform", "android");
    localHashMap.put("device-id", paramString1);
    localHashMap.put("recommended", paramString2);
    localHashMap.put("op", paramString3);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultServer localResultServer = (ResultServer)a(localHttpRequest, ResultServer.class);
      return localResultServer;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final SearchResultRoot p(String paramString)
  {
    String str1 = am_CommonUtils.e(paramString);
    String str2 = f + String.format("/book/fuzzy-search?query=%s", new Object[] { str1 }) + "&onlyTitle=true";
    try
    {
      SearchResultRoot localSearchResultRoot = (SearchResultRoot)a(a(HttpRequest.a(str2)), SearchResultRoot.class);
      return localSearchResultRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GameLayoutRoot q()
  {
    String str = f + "/game/layoutv2/?platform=android";
    try
    {
      GameLayoutRoot localGameLayoutRoot = (GameLayoutRoot)a(a(HttpRequest.a(str)), GameLayoutRoot.class);
      return localGameLayoutRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ReviewHistory q(String paramString1, String paramString2)
  {
    String str = f + String.format("/post/review/one-by-book-user?book=%s&token=%s", new Object[] { paramString1, paramString2 });
    try
    {
      ReviewHistory localReviewHistory = (ReviewHistory)a(a(HttpRequest.a(str)), ReviewHistory.class);
      return localReviewHistory;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final SearchPromRoot q(String paramString)
  {
    String str1 = am_CommonUtils.e(paramString);
    String str2 = f + String.format("/book/search/%s/chinese-all-promo", new Object[] { str1 });
    try
    {
      SearchPromRoot localSearchPromRoot = (SearchPromRoot)a(a(HttpRequest.a(str2)), SearchPromRoot.class);
      return localSearchPromRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookInfo r(String paramString)
  {
    String str = f + String.format("/book/%s", new Object[] { paramString });
    try
    {
      BookInfo localBookInfo = (BookInfo)a(a(HttpRequest.a(str)), BookInfo.class);
      return localBookInfo;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final GameCatRoot r()
  {
    String str = f + "/game/cat/topgames";
    try
    {
      GameCatRoot localGameCatRoot = (GameCatRoot)a(a(HttpRequest.a(str)), GameCatRoot.class);
      return localGameCatRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final NotificationRoot r(String paramString1, String paramString2)
  {
    String str1;
    if (com.arcsoft.hpay100.a.a.Q(paramString2))
      str1 = String.format("/user/notification/important?token=%s", new Object[] { paramString1 });
    while (true)
    {
      String str2 = f + str1;
      try
      {
        NotificationRoot localNotificationRoot = (NotificationRoot)a(a(HttpRequest.a(str2)), NotificationRoot.class);
        return localNotificationRoot;
        str1 = String.format("/user/notification/important?token=%s&startTime=%s", new Object[] { paramString1, paramString2 });
      }
      catch (HttpRequest.HttpRequestException localHttpRequestException)
      {
        throw localHttpRequestException.getCause();
      }
    }
  }

  public final GameLayoutRoot s()
  {
    String str = f + "/game/layoutv2/microgame";
    try
    {
      GameLayoutRoot localGameLayoutRoot = (GameLayoutRoot)a(a(HttpRequest.a(str)), GameLayoutRoot.class);
      return localGameLayoutRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final NotificationRoot s(String paramString1, String paramString2)
  {
    String str1;
    if (com.arcsoft.hpay100.a.a.Q(paramString2))
      str1 = String.format("/user/notification/unimportant?token=%s", new Object[] { paramString1 });
    while (true)
    {
      String str2 = f + str1;
      try
      {
        NotificationRoot localNotificationRoot = (NotificationRoot)a(a(HttpRequest.a(str2)), NotificationRoot.class);
        return localNotificationRoot;
        str1 = String.format("/user/notification/unimportant?token=%s&startTime=%s", new Object[] { paramString1, paramString2 });
      }
      catch (HttpRequest.HttpRequestException localHttpRequestException)
      {
        throw localHttpRequestException.getCause();
      }
    }
  }

  public final SgTocRoot s(String paramString)
  {
    String str = String.format("http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s", new Object[] { paramString });
    try
    {
      SgTocRoot localSgTocRoot = (SgTocRoot)a(a(HttpRequest.a(str), 7), SgTocRoot.class);
      return localSgTocRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final IKanshuUrlResult t()
  {
    String str = f + "/promotion/17k";
    try
    {
      IKanshuUrlResult localIKanshuUrlResult = (IKanshuUrlResult)a(a(HttpRequest.a(str)), IKanshuUrlResult.class);
      return localIKanshuUrlResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final PurchaseVipResult t(String paramString1, String paramString2)
  {
    String str = f + "/purchase/vip/plan";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("plan", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      PurchaseVipResult localPurchaseVipResult = (PurchaseVipResult)a(localHttpRequest, PurchaseVipResult.class);
      return localPurchaseVipResult;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final LdTocRoot t(String paramString)
  {
    String str = String.format("http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000", new Object[] { paramString });
    try
    {
      LdTocRoot localLdTocRoot = (LdTocRoot)a(a(HttpRequest.a(str), 8), LdTocRoot.class);
      return localLdTocRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final BookTopRoot u()
  {
    String str = f + "/favorite/book/top";
    try
    {
      BookTopRoot localBookTopRoot = (BookTopRoot)a(a(HttpRequest.a(str)), BookTopRoot.class);
      return localBookTopRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ChangeNickNameRoot u(String paramString1, String paramString2)
  {
    String str = f + "/user/change-nickname";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("nickname", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ChangeNickNameRoot localChangeNickNameRoot = (ChangeNickNameRoot)a(localHttpRequest, ChangeNickNameRoot.class);
      return localChangeNickNameRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final String u(String paramString)
  {
    String str1 = String.format("http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0", new Object[] { paramString });
    try
    {
      String str2 = a(HttpRequest.a(str1), 8).d();
      return str2;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ChangeGenderRoot v(String paramString1, String paramString2)
  {
    String str = f + "/user/change-gender";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("gender", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ChangeGenderRoot localChangeGenderRoot = (ChangeGenderRoot)a(localHttpRequest, ChangeGenderRoot.class);
      return localChangeGenderRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final EsTocRoot v(String paramString)
  {
    String[] arrayOfString = com.arcsoft.hpay100.a.a.O(paramString);
    if (arrayOfString == null)
      return null;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = arrayOfString[0];
    arrayOfObject[1] = arrayOfString[1];
    String str = String.format("http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_", arrayOfObject);
    try
    {
      EsTocRoot localEsTocRoot = (EsTocRoot)a(a(HttpRequest.a(str), 3), EsTocRoot.class);
      return localEsTocRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final int w(String paramString)
  {
    String str = String.format("http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s", new Object[] { paramString });
    try
    {
      int m = SsChapterJson.getTocCount(a(HttpRequest.a(str), 6).d());
      return m;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus w(String paramString1, String paramString2)
  {
    String str = f + String.format("/post/%s/report", new Object[] { paramString1 });
    HashMap localHashMap = new HashMap();
    localHashMap.put("reason", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterRoot x(String paramString)
  {
    String str1 = String.format("/chapter/%s", new Object[] { am_CommonUtils.e(paramString) });
    String str2 = h + str1;
    String str3 = str2 + "?" + com.arcsoft.hpay100.a.a.A(str1);
    ChapterRoot localChapterRoot;
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.a(str3);
      if (e.a())
        e.a(localHttpRequest1);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      boolean bool = localHttpRequest2.c();
      int m = localHttpRequest2.b();
      if ((!bool) && (m >= 500))
        return w();
      localChapterRoot = (ChapterRoot)a(localHttpRequest2, ChapterRoot.class);
      if ((localChapterRoot != null) && (localChapterRoot.getChapter() != null))
      {
        localChapterRoot.getChapter().setLink(paramString);
        return localChapterRoot;
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
    return localChapterRoot;
  }

  public final ResultStatus x(String paramString1, String paramString2)
  {
    String str = f + "/user/add-exp";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("type", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final ChapterRoot y(String paramString)
  {
    String str1 = am_CommonUtils.e(paramString);
    String str2 = g + String.format("/chapter/%s", new Object[] { str1 });
    ChapterRoot localChapterRoot;
    try
    {
      HttpRequest localHttpRequest1 = HttpRequest.a(str2);
      if (e.a())
        e.a(localHttpRequest1);
      HttpRequest localHttpRequest2 = b(localHttpRequest1);
      boolean bool = localHttpRequest2.c();
      int m = localHttpRequest2.b();
      if ((!bool) && (m >= 500))
        return w();
      localChapterRoot = (ChapterRoot)a(localHttpRequest2, ChapterRoot.class);
      if ((localChapterRoot != null) && (localChapterRoot.getChapter() != null))
      {
        localChapterRoot.getChapter().setLink(paramString);
        return localChapterRoot;
      }
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
    return localChapterRoot;
  }

  public final ResultStatus y(String paramString1, String paramString2)
  {
    String str = f + "/user/collected-post";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("post", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }

  public final BookRankDetailRoot z(String paramString)
  {
    String str = f + String.format("/ranking/%s", new Object[] { paramString });
    try
    {
      BookRankDetailRoot localBookRankDetailRoot = (BookRankDetailRoot)a(a(HttpRequest.a(str)), BookRankDetailRoot.class);
      return localBookRankDetailRoot;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      throw localHttpRequestException.getCause();
    }
  }

  public final ResultStatus z(String paramString1, String paramString2)
  {
    String str = f + "/user/collected-post/remove";
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", paramString1);
    localHashMap.put("post", paramString2);
    try
    {
      HttpRequest localHttpRequest = b(HttpRequest.b(str));
      localHttpRequest.a(localHashMap);
      ResultStatus localResultStatus = (ResultStatus)a(localHttpRequest, ResultStatus.class);
      return localResultStatus;
    }
    catch (HttpRequest.HttpRequestException localHttpRequestException)
    {
      localHttpRequestException.printStackTrace();
      throw localHttpRequestException.getCause();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.api.ApiService
 * JD-Core Version:    0.6.2
 */