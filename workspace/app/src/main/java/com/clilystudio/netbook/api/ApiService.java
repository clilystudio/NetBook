package com.clilystudio.netbook.api;

import android.net.Uri;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookHelpList;
import com.clilystudio.netbook.model.BookHelpResult;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.BookListRoot;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookReviewRoot;
import com.clilystudio.netbook.model.BookShelfSyncTime;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import com.clilystudio.netbook.model.BookTopRoot;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryRoot;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import com.clilystudio.netbook.model.ChangeNickNameRoot;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.ChapterSingleKey;
import com.clilystudio.netbook.model.ChargeTypes;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.CommentDetail;
import com.clilystudio.netbook.model.DeleteResult;
import com.clilystudio.netbook.model.DiscussSummaryList;
import com.clilystudio.netbook.model.FollowResult;
import com.clilystudio.netbook.model.FollowersResult;
import com.clilystudio.netbook.model.FollowingsResult;
import com.clilystudio.netbook.model.GirlTopicList;
import com.clilystudio.netbook.model.GirlTopicResult;
import com.clilystudio.netbook.model.HotCommentRoot;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.model.IKanshuUrlResult;
import com.clilystudio.netbook.model.MixTocRoot;
import com.clilystudio.netbook.model.MysteryBookList;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.model.PostCountRoot;
import com.clilystudio.netbook.model.PostDetail;
import com.clilystudio.netbook.model.PostDetailComment;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.model.PurchaseChapterResult;
import com.clilystudio.netbook.model.PurchaseVipResult;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.model.RemoteBookShelf;
import com.clilystudio.netbook.model.ResultServer;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.ReviewHistory;
import com.clilystudio.netbook.model.ReviewList;
import com.clilystudio.netbook.model.ReviewResult;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.model.ShelfMsgRoot;
import com.clilystudio.netbook.model.SyncUploadResult;
import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSourceRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.model.TopicSummary;
import com.clilystudio.netbook.model.TweetResult;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.model.UGCBookDetailRoot;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.model.UserInfoResult;
import com.clilystudio.netbook.model.UserVipInfo;
import com.clilystudio.netbook.model.UshaqiOnlineConfig;
import com.clilystudio.netbook.model.VipPlan;
import com.clilystudio.netbook.model.VoteResult;
import com.clilystudio.netbook.model.mixtoc.EsChapterRoot;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.LdChapterRoot;
import com.clilystudio.netbook.model.mixtoc.LdTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgChapterRoot;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsChapterJson;
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import com.github.kevinsawicki.http.HttpRequest;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.umeng.onlineconfig.OnlineConfigAgent;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

public class ApiService {
    private static final String b = ApiService.class.getSimpleName();
    private static String d = "zhuishushenqi.com";
    private static final String e = "http://api." + d;
    private static String f = e;
    private static String g = "http://chapter." + d;
    private static String h = "http://chapter2." + d;
    public static String a = "http://statics." + d;
    private static String i = "http://m.baidu.com/s?word=";
    private static String j = "http://tieba.baidu.com/f?kw=";
    private static String k = "http://m.sm.cn/s?q=";
    private static final Gson l = new GsonBuilder().registerTypeAdapter(Date.class, new DateDeserializer()).create();

    private final UserAgentManager c;

    public ApiService(UserAgentManager f2) {
        this.c = f2;
    }

    public static String Q(String string) {
        return i + string;
    }

    public static String R(String string) {
        return j + string;
    }

    public static String S(String string) {
        return k + string;
    }

    private static <V> V a(HttpRequest httpRequest, Class<V> class_) {
        BufferedReader bufferedReader = null;
        V v = null;
        try {
            bufferedReader = httpRequest.bufferedReader();
            v = l.fromJson(bufferedReader, class_);
        } catch (HttpRequest.HttpRequestException | JsonIOException | JsonSyntaxException e1) {
            e1.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
        return v;
    }

    public static String a(String string, int n) {
        return String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d", string, n);
    }

    public static String a(String string, int n, String string2) {
        String string3 = am.e(string2);
        String[] arrstring = com.clilystudio.netbook.hpay100.a.a.O(string);
        if (arrstring != null) {
            Object[] arrobject = new Object[]{arrstring[0], arrstring[1], n, string3};
            return String.format(Locale.CHINA, "http://book.easou.com/ta/show.m?gid=%s&nid=%s&st=%d&cu=%s", arrobject);
        }
        return null;
    }

    public static String a(String string, String string2, String string3, String string4, String string5) {
        return String.format(Locale.CHINA, "http://novel.mse.sogou.com/content.php?md=%s&bid=%s&cmd=%s&url=%s&chapter=%s&page=1&referred=detail", string, string2, string3, string4, string5);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(String string) {
        if (string.equals(d) || d.contains("192.168")) {
            return;
        }
        d = string;
        f = "http://api." + d;
        g = "http://chapter." + d;
        a = "http://statics." + d;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void a(String url, long timeCost, int responseCode, String exceptionName) {
        long l2;
        try {
            l2 = new Date().getTime();
            if (l2 <= timeCost) return;
        } catch (Exception var5_5) {
            return;
        }
    }

    private static String ad(String string) {
        return string + "&distillate=true";
    }

    public static String b(String string, int n, String string2) {
        String string3 = am.e(am.e(string2));
        return String.format(Locale.CHINA, "http://book.soso.com/#!/detail/%s/%d/%s", string, n, string3);
    }

    private static <V> List<V> b(HttpRequest httpRequest, Class<V> class_) {
        ArrayList<V> arrayList = null;
        BufferedReader bufferedReader = httpRequest.bufferedReader();
        try {
            JsonArray jsonArray = new JsonParser().parse(bufferedReader).getAsJsonArray();
            arrayList = new ArrayList<>();
            for (JsonElement jsonElement : jsonArray) {
                arrayList.add(l.fromJson(jsonElement, class_));
            }
        } catch (JsonParseException var5_7) {
            var5_7.printStackTrace();
        } finally {
            try {
                bufferedReader.close();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
        return arrayList;
    }

    private static ChapterRoot w() {
        ChapterRoot chapterRoot = new ChapterRoot();
        chapterRoot.setStatus(-3);
        chapterRoot.setChapter(new Chapter());
        return chapterRoot;
    }

    private static ChapterRoot x() {
        ChapterRoot chapterRoot = new ChapterRoot();
        chapterRoot.setStatus(-3);
        chapterRoot.setChapter(new Chapter());
        return chapterRoot;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private HttpRequest a(HttpRequest httpRequest) {
        long l = new Date().getTime();
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.a2(httpRequest);
        }
        try {
            boolean bl = this.b(httpRequest).ok();
            ApiService.a(httpRequest.url().toString(), l, httpRequest.code(), "");
            if (!bl) {
                Log.e("ApiService", "Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException var4_4) {
            ApiService.a(httpRequest.url().toString(), l, httpRequest.code(), var4_4.getClass().getName());
        }
        return httpRequest;
    }

    private HttpRequest a(HttpRequest httpRequest, int n) {
        try {
            if (!this.b(httpRequest, n).ok()) {
                Log.e(b, "Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException var3_3) {
            var3_3.printStackTrace();
        }
        return httpRequest;
    }

    private Root a(String var1_1, HashMap<String, String> var2_2) {
        HttpRequest var4_3 = this.b(HttpRequest.post(ApiService.f + var1_1));
        var4_3.form(var2_2);
        return ApiService.a(var4_3, Root.class);
    }

    private <V> V a(String string, Class<V> class_) {
        return ApiService.a(this.a(HttpRequest.post(f + string)), class_);
    }

    private HttpRequest b(HttpRequest httpRequest) {
        httpRequest.chunk(15000).bufferSize(15000);
        UserAgentManager f2 = this.c;
        String string = "1".equals(OnlineConfigAgent.getInstance().getConfigParams(MyApplication.getInstance(), "ua-toggle")) ? f2.getXUserAgent() : "";
        httpRequest.header(string);
        httpRequest.header("X-User-Agent", this.c.getXUserAgent());
        httpRequest.header("X-Device-Id", am.h());
        return httpRequest;
    }

    private HttpRequest b(HttpRequest httpRequest, int n) {
        httpRequest.chunk(15000).bufferSize(15000);
        httpRequest.userAgent(this.c.getUserAgent(n));
        if (n == 6) {
            httpRequest.referer("http://bookshelf.html5.qq.com/page?t=pad");
        }
        return httpRequest;
    }

    public final BookShelfSyncTime A(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/bookshelf-updated?token=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), BookShelfSyncTime.class);
    }

    public final CommentDetail A(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/%s/comment/%s", string, string2);
        return ApiService.a(this.a(HttpRequest.get(string3)), CommentDetail.class);
    }

    public final RemoteBookShelf B(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/bookshelf?token=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), RemoteBookShelf.class);
    }

    public final void B(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/recommend-app/android/%s/download", string);
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        ApiService.a(httpRequest2, ResultStatus.class);
    }

    public final BookReviewRoot C(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/review/best-by-book?book=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), BookReviewRoot.class);
    }

    public final UGCBookDetailRoot C(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/book-list/%s/draft?token=%s", string2, string);
        return ApiService.a(this.a(HttpRequest.get(string3)), UGCBookDetailRoot.class);
    }

    public final ResultStatus D(String var1_1, String var2_2) {
        String var3_3 = ApiService.f + "/user/collected-book-list";
        HttpRequest var5_4 = this.b(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<>();
        var6_5.put("token", var1_1);
        var6_5.put("bookList", var2_2);
        var5_4.form(var6_5);
        return ApiService.a(var5_4, ResultStatus.class);
    }

    public final ReviewResult D(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/review/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), ReviewResult.class);
    }

    public final BookHelpResult E(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/help/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), BookHelpResult.class);
    }

    public final ResultStatus E(String string, String string2) {
        String string3 = f + "/user/collected-book-list/remove";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("bookList", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.a(httpRequest2, ResultStatus.class);
    }

    public final GirlTopicResult F(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), GirlTopicResult.class);
    }

    public final Root F(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/%s/like", string);
        HashMap<String, String> hashMap = new HashMap<>();
        HttpRequest httpRequest = HttpRequest.post(string3);
        hashMap.put("token", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.a(httpRequest2, Root.class);
    }

    public final NotifCountRoot G(String string) {
        return this.a(String.format(Locale.CHINA, "/user/notification/count?token=%s", string), NotifCountRoot.class);
    }

    public final SyncUploadResult G(String string, String string2) {
        String string3 = f + "/user/bookshelf";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("books", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.a(httpRequest2, SyncUploadResult.class);
    }

    public final PostDetail H(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), PostDetail.class);
    }

    public final SyncUploadResult H(String string, String string2) {
        String string3 = f + "/user/feedingBooks";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("books", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.a(httpRequest2, SyncUploadResult.class);
    }

    public final SyncUploadResult I(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/bookshelf?token=%s&books=%s", string, string2);
        return ApiService.a(this.a(HttpRequest.put(string3)), SyncUploadResult.class);
    }

    public final TopicCount I(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/total-count?books=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), TopicCount.class);
    }

    public final SyncUploadResult J(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/feedingBooks?token=%s&books=%s", string, string2);
        return ApiService.a(this.a(HttpRequest.put(string3)), SyncUploadResult.class);
    }

    public final UserInfo K(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/detail-info?token=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), UserInfo.class);
    }

    public final Root L(String string) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        return this.a("/user/notification/read-important", hashMap);
    }

    public final Root M(String string) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        return this.a("/user/notification/read-unimportant", hashMap);
    }

    public final AutoCompleteRoot N(String string) {
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/auto-complete?query=%s", string2);
        return ApiService.a(this.a(HttpRequest.get(string3)), AutoCompleteRoot.class);
    }

    public final UserVipInfo O(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/account/vip?token=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), UserVipInfo.class);
    }

    public final ResultStatus P(String string) {
        String string2 = f + "/user/logout";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        HttpRequest httpRequest = this.b(HttpRequest.post(string2));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final HotCommentRoot T(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/%s/comment/best", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), HotCommentRoot.class);
    }

    public final UGCBookDetailRoot U(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book-list/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), UGCBookDetailRoot.class);
    }

    public final RelateBookRoot V(String string) {
        String string2 = f + "/books/by-ids" + string;
        return ApiService.a(this.a(HttpRequest.get(string2)), RelateBookRoot.class);
    }

    public final ResultStatus W(String string) {
        String string2 = f + "/user/add-exp-week";
        HttpRequest httpRequest = HttpRequest.post(string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("type", "rate");
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.a(httpRequest2, ResultStatus.class);
    }

    public final RelateBookRoot X(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/%s/recommend", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), RelateBookRoot.class);
    }

    public final BookHelpList a(String string, String string2, int n, int n2, boolean bl) {
        String string3 = f + String.format(Locale.CHINA, "/post/help?duration=%s&sort=%s&start=%d&limit=%d", string, string2, n, n2);
        if (bl) {
            string3 = ApiService.ad(string3);
        }
        return ApiService.a(this.a(HttpRequest.get(string3)), BookHelpList.class);
    }

    public final BookListRoot a(String string, String string2, String string3, String string4, int n, int n2) {
        String string5 = f + String.format(Locale.CHINA, "/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d", string, string2, am.e(string3), am.e(string4), n, n2);
        return ApiService.a(this.a(HttpRequest.get(string5)), BookListRoot.class);
    }

    public final ChapterRoot a(String string, String string2, int n, String string3, String string4) {
        String string5 = am.e(string3);
        Object[] arrobject = new Object[]{string, string2, n, string5};
        String string6 = String.format(Locale.CHINA, "http://api.easou.com/api/bookapp/chapter.m?gid=%s&nid=%s&sort=%d&chapter_name=%s&cid=eef_", arrobject);
        HttpRequest httpRequest = this.b(HttpRequest.get(string6), 3);
        boolean bl = httpRequest.ok();
        int n2 = httpRequest.code();
        if (!bl && n2 >= 500) {
            return ApiService.x();
        }
        EsChapterRoot esChapterRoot = ApiService.a(httpRequest, EsChapterRoot.class);
        if (esChapterRoot == null) return null;
        if (esChapterRoot.getContent() != null) {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string7 = com.clilystudio.netbook.hpay100.a.a.z(esChapterRoot.getContent());
            Chapter chapter = new Chapter();
            chapter.setLink(string4);
            chapter.setBody(string7);
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
        if (esChapterRoot.isSuccess()) return null;
        return ApiService.x();
    }

    public final DiscussSummaryList a(String string, String string2, int n, int n2, String string3, boolean bl) {
        String string4 = f + String.format(Locale.CHINA, "/post/by-block?block=%s&duration=%s&sort=%s&type=all&start=%d&limit=%d", string3, string, string2, n, n2);
        if (bl) {
            string4 = ApiService.ad(string4);
        }
        return ApiService.a(this.a(HttpRequest.get(string4)), DiscussSummaryList.class);
    }

    public final PostPublish a(String string, String string2, String string3, String string4) {
        String string5 = f + String.format(Locale.CHINA, "/user/twitter/%s/reply/comment/%s", string2, string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("content", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final PostPublish a(String string, String string2, String string3, String string4, String string5, boolean bl) {
        String string6 = f + "/post/review";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("book", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        hashMap.put("rating", string5);
        String string7 = bl ? "book" : "community";
        hashMap.put("from", string7);
        HttpRequest httpRequest = this.b(HttpRequest.post(string6));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final PurchaseChapterResult a(String string, String string2, int n) {
        String string3 = f + "/purchase/buy";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("chapter", string2);
        if (n == 1) {
            hashMap.put("type", "auto");
        }
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PurchaseChapterResult.class);
    }

    public final ResultStatus a(UGCNewCollection var1_1, String var2_2) {
        String var3_3 = ApiService.f + "/book-list";
        HttpRequest var5_4 = this.b(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<>();
        var6_5.put("token", var2_2);
        var6_5.put("title", var1_1.getTitle());
        var6_5.put("desc", var1_1.getDesc());
        var5_4.form(var6_5);
        for (BookSummary var13_7 : var1_1.getBooks()) {
            var5_4.form("books[]", var13_7.getId());
            var5_4.form("comments[]", var13_7.getAppendComment());
        }
        return ApiService.a(var5_4, ResultStatus.class);
    }

    public final ResultStatus a(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.f + String.format(Locale.CHINA, "/book-list/%s", var3_3);
        HttpRequest var6_5 = this.b(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        for (BookSummary var14_8 : var1_1.getBooks()) {
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.a(var6_5, ResultStatus.class);
    }

    public final ReviewList a(String string, String string2, String string3, int n, int n2, boolean bl) {
        String string4 = f + String.format(Locale.CHINA, "/post/review?duration=%s&sort=%s&type=%s&start=%d&limit=%d", string, string3, string2, n, n2);
        if (bl) {
            string4 = ApiService.ad(string4);
        }
        return ApiService.a(this.a(HttpRequest.get(string4)), ReviewList.class);
    }

    public final Root a(String string, Uri uri) {
        String string2 = f + "/user/change-avatar";
        HttpRequest httpRequest = this.b(HttpRequest.post(string2));
        httpRequest.part("token", null, null, string).part("avatar", uri.getPath(), "image/jpeg", new File(uri.getPath())).ok();
        return ApiService.a(httpRequest, Root.class);
    }

    public final UGCBookListRoot a(String string, String string2, int n, int n2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s", string, string2, n, n2, string3);
        return ApiService.a(this.a(HttpRequest.get(string4)), UGCBookListRoot.class);
    }

    public final UshaqiOnlineConfig a() {
        return ApiService.a(this.a(HttpRequest.get("http://alertserver.ushaqi.com/server_config")), UshaqiOnlineConfig.class);
    }

    public final VoteResult a(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/%s/vote", string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("n", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, VoteResult.class);
    }

    public final SsTocRoot a(int n, int n2, String string) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200", n, n2, string);
        return ApiService.a(this.a(HttpRequest.get(string2), 6), SsTocRoot.class);
    }

    public final List<BookUpdate> a(List<String> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        String string = TextUtils.join(",", list.toArray());
        String string2 = f + String.format(Locale.CHINA, "/book?view=updated&id=%s", string);
        return ApiService.b(this.a(HttpRequest.get(string2)), BookUpdate.class);
    }

    public final List<BookSummary> a(String[] arrstring) {
        ArrayList<BookSummary> arrayList = new ArrayList<>();
        StringBuilder stringBuffer = new StringBuilder("?");
        for (int j = 0; j < arrstring.length; ++j) {
            if (j == 0) {
                stringBuffer.append("ids=").append(arrstring[j]);
                continue;
            }
            stringBuffer.append("&ids=").append(arrstring[j]);
        }
        String string = f + "/books/by-ids" + stringBuffer;
        SearchResultRoot searchResultRoot = ApiService.a(this.a(HttpRequest.get(string)), SearchResultRoot.class);
        if (searchResultRoot == null) return arrayList;
        return searchResultRoot.getBooks();
    }

    public final ChineseAllPromRoot aa(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/%s/chinese-all-promo", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), ChineseAllPromRoot.class);
    }

    public final BookGenderRecommend ac(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/recommend?gender=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), BookGenderRecommend.class);
    }

    public final GirlTopicList b(String string, String string2, int n, int n2, boolean bl) {
        String string3 = f + String.format(Locale.CHINA, "/post/by-block?block=girl&duration=%s&sort=%s&start=%d&limit=%d", string, string2, n, n2);
        if (bl) {
            string3 = ApiService.ad(string3);
        }
        return ApiService.a(this.a(HttpRequest.get(string3)), GirlTopicList.class);
    }

    public final HotKeywordResult b() {
        String string = f + "/book/hot-word";
        return ApiService.a(this.a(HttpRequest.get(string)), HotKeywordResult.class);
    }

    public final PostPublish b(String string, String string2, String string3) {
        String string4 = f + "/user/twitter/article";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final PostPublish b(String string, String string2, String string3, String string4) {
        String string5 = f + String.format(Locale.CHINA, "/user/twitter/%s/comment/%s/report", string2, string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("reason", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final PostPublish b(String string, String string2, String string3, String string4, String string5) {
        String string6 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("book", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        hashMap.put("votes", string5);
        HttpRequest httpRequest = this.b(HttpRequest.post(string6));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final ResultStatus b(UGCNewCollection var1_1, String var2_2) {
        String var3_3 = ApiService.f + "/book-list/draft";
        HttpRequest var5_4 = this.b(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<>();
        var6_5.put("token", var2_2);
        var6_5.put("title", var1_1.getTitle());
        var6_5.put("desc", var1_1.getDesc());
        var5_4.form(var6_5);
        for (BookSummary var13_7 : var1_1.getBooks()) {
            var5_4.form("books[]", var13_7.getId());
            var5_4.form("comments[]", var13_7.getAppendComment());
        }
        return ApiService.a(var5_4, ResultStatus.class);
    }

    public final ResultStatus b(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.f + String.format(Locale.CHINA, "/book-list/%s/draft", var3_3);
        HttpRequest var6_5 = this.b(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        for (BookSummary var14_8 : var1_1.getBooks()) {
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.a(var6_5, ResultStatus.class);
    }

    public final Topic b(String string, String string2, int n, int n2) {
        String string3 = f + String.format(Locale.CHINA, "/post/by-book?book=%s&sort=%s&type=normal,vote&start=%d&limit=%d", string, string2, n, n2);
        return ApiService.a(this.a(HttpRequest.get(string3)), Topic.class);
    }

    public final String b(String string, int n) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", string, n);
        return SsChapterJson.getChapterUrl(this.a(HttpRequest.get(string2), 6).body());
    }

    public final BookReviewRoot c(String string, String string2, int n, int n2) {
        String string3 = f + String.format(Locale.CHINA, "/post/review/by-book?book=%s&sort=%s&start=%d&limit=%d", string, string2, n, n2);
        return ApiService.a(this.a(HttpRequest.get(string3)), BookReviewRoot.class);
    }

    public final BookTagRoot c(String string, int n, int n2) {
        String string2 = f + String.format(Locale.CHINA, "/book/by-tags?tags=%s&start=%d&limit=%d", am.e(string), n, n2);
        return ApiService.a(this.a(HttpRequest.get(string2)), BookTagRoot.class);
    }

    public final ChapterRoot c(String string, int n) {
        Object[] arrobject = new Object[]{string, n};
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", arrobject);
        HttpRequest httpRequest = this.b(HttpRequest.get(string2), 6);
        boolean bl = httpRequest.ok();
        int n2 = httpRequest.code();
        if (bl) return SsChapterJson.getChapterRoot(httpRequest.body());
        if (n2 < 500) return SsChapterJson.getChapterRoot(httpRequest.body());
        return ApiService.x();
    }

    public final ChapterRoot c(String string, int n, String string2) {
        Object[] arrobject = new Object[]{string, n, string2};
        String string3 = String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&fmt=json&bid=%s&idx=%d&tk=%s", arrobject);
        HttpRequest httpRequest = this.b(HttpRequest.get(string3), 8);
        boolean bl = httpRequest.ok();
        int n2 = httpRequest.code();
        if (!bl && n2 >= 500) {
            return ApiService.x();
        }
        LdChapterRoot ldChapterRoot = ApiService.a(httpRequest, LdChapterRoot.class);
        if (ldChapterRoot == null || ldChapterRoot.getContent() == null) return null;
        {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string4 = ldChapterRoot.getContent();
            String string5 = null;
            if (string4 != null) {
                string5 = string4.replaceAll("<p>", "").replaceAll("</p>", "\n");
            }
            String string6 = com.clilystudio.netbook.hpay100.a.a.z(string5);
            Chapter chapter = new Chapter();
            chapter.setLink(ldChapterRoot.getSrc());
            chapter.setBody(string6);
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
    }

    public final ChargeTypes c() {
        String string = e + "/charge/product?platform=android";
        return ApiService.a(this.a(HttpRequest.get(string)), ChargeTypes.class);
    }

    public final PostCountRoot c(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/post-count-by-book?bookId=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), PostCountRoot.class);
    }

    public final PostPublish c(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/%s/comment", string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("content", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final PostPublish c(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("block", "girl");
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("votes", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final PostPublish c(String string, String string2, String string3, String string4, String string5) {
        String string6 = f + "/user/twitter/book";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("bookId", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        hashMap.put("score", string5);
        HttpRequest httpRequest = this.b(HttpRequest.post(string6));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final ResultStatus c(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.f + String.format(Locale.CHINA, "/book-list/%s/public", var3_3);
        HttpRequest var6_5 = this.b(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        for (BookSummary var14_8 : var1_1.getBooks()) {
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.a(var6_5, ResultStatus.class);
    }

    public final BookRankRoot d() {
        String string = f + "/ranking/gender";
        return ApiService.a(this.a(HttpRequest.get(string)), BookRankRoot.class);
    }

    public final PostPublish d(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("votes", string4);
        hashMap.put("block", "ramble");
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final TimelineResult d(String string, String string2, String string3) {
        HttpRequest httpRequest;
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/timeline/%s?token=%s", string2, string);
        if (string3 != null) {
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("last", string3);
            httpRequest = HttpRequest.get(string4, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string4);
        }
             return ApiService.a(this.a(httpRequest), TimelineResult.class);
     }

    public final Topic d(String string, int n) {
        String string2 = f + String.format(Locale.CHINA, "/user/collected-post?token=%s&start=%s", string, n);
        return ApiService.a(this.a(HttpRequest.get(string2)), Topic.class);
    }

    public final List<TocSummary> d(String string) {
        String string2 = f + String.format(Locale.CHINA, "/toc?view=summary&book=%s", string);
        return ApiService.b(this.a(HttpRequest.get(string2)), TocSummary.class);
    }

    public final CategoryRoot e() {
        String string = f + "/cats/lv2/statistics";
        return ApiService.a(this.a(HttpRequest.get(string)), CategoryRoot.class);
    }

    public final DeleteResult e(String string, String string2) {
        String string3 = e + String.format(Locale.CHINA, "/charge/order/%s?token=%s", string, string2);
        return ApiService.a(this.a(HttpRequest.put(string3)), DeleteResult.class);
    }

    public final PostDetailComment e(String string, int n, int n2) {
        String string2 = f + String.format(Locale.CHINA, "/post/%s/comment?start=%d&limit=%d", string, n, n2);
        return ApiService.a(this.a(HttpRequest.get(string2)), PostDetailComment.class);
    }

    public final PostPublish e(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/%s/report", string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("reason", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final PostPublish e(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("book", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final Toc e(String string) {
        String string2 = f + String.format(Locale.CHINA, "/toc/%s?view=chapters", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), Toc.class);
    }

    public final Topic e(String string, int n) {
        String string2 = f + String.format(Locale.CHINA, "/user/posted?token=%s&start=%s", string, n);
        return ApiService.a(this.a(HttpRequest.get(string2)), Topic.class);
    }

    public final BookAdd f(String string, String string2, String string3) {
        String string4 = f + "/book/add";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("title", string);
        hashMap.put("author", string2);
        hashMap.put("device", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, BookAdd.class);
    }

    public final CategoryLevelRoot f() {
        String string = f + "/cats/lv2";
        return ApiService.a(this.a(HttpRequest.get(string)), CategoryLevelRoot.class);
    }

    public final ChapterSingleKey f(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/purchase/chapter/%s/key?token=%s", string, string2);
        return ApiService.a(this.a(HttpRequest.get(string3)), ChapterSingleKey.class);
    }

    public final MixTocRoot f(String string) {
        String string2 = f + String.format(Locale.CHINA, "/mix-toc/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), MixTocRoot.class);
    }

    public final PostDetailComment f(String string, int n, int n2) {
        String string2 = f + String.format(Locale.CHINA, "/post/review/%s/comment?start=%d&limit=%d", string, n, n2);
        return ApiService.a(this.a(HttpRequest.get(string2)), PostDetailComment.class);
    }

    public final ResultStatus f(String string, String string2, String string3, String string4) {
        String string5 = f + String.format(Locale.CHINA, "/post/%s/comment", string);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string2);
        hashMap.put("content", string3);
        hashMap.put("replyTo", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final UGCBookListRoot f(String string, int n) {
        String string2 = f + String.format(Locale.CHINA, "/user/collected-book-list?token=%s&start=%d", string, n);
        return ApiService.a(this.a(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final Account g(String string, String string2, String string3) {
        String string4 = f + "/user/login";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("platform_code", string);
        hashMap.put("platform_uid", string2);
        hashMap.put("platform_token", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, Account.class);
    }

    public final ChapterKeysRoot g(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/purchase/book/%s/chapters/bought?token=%s", string2, string);
        return ApiService.a(this.a(HttpRequest.get(string3)), ChapterKeysRoot.class);
    }

    public final PostPublish g(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("block", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final TocSourceRoot g(String string) {
        String string2 = f + String.format(Locale.CHINA, "/aggregation-source/by-book?book=%s&v=5", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), TocSourceRoot.class);
    }

    public final UGCBookListRoot g(String string, int n) {
        String string2 = f + String.format(Locale.CHINA, "/user/posted-book-list?token=%s&start=%d", string, n);
        return ApiService.a(this.a(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final FollowingsResult h(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/followings/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), FollowingsResult.class);
    }

    public final MysteryBookList h() {
        String string = f + "/book/mystery-box";
        return ApiService.a(this.a(HttpRequest.get(string)), MysteryBookList.class);
    }

    public final PostPublish h(String string, String string2, String string3) {
        String string4 = f + "/post/help";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final ResultStatus h(String string, String string2) {
        String string3 = f + "/user/follow";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("followeeId", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final UGCBookListRoot h(String string, int n) {
        String string2 = f + String.format(Locale.CHINA, "/user/draft-book-list?token=%s&start=%d", string, n);
        return ApiService.a(this.a(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final FollowersResult i(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/followers/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), FollowersResult.class);
    }

    public final PostPublish i(String string, String string2, String string3) {
        String string4 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("content", string3);
        hashMap.put("game", string2);
        hashMap.put("block", "game");
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final RecommendUgcRoot i(String string, int n) {
        String string2 = f + String.format(Locale.CHINA, "/book-list/%s/recommend?limit=%s", string, n);
        return ApiService.a(this.a(HttpRequest.get(string2)), RecommendUgcRoot.class);
    }

    public final ResultStatus i(String string, String string2) {
        String string3 = f + "/user/unfollow";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("followeeId", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final HotTweetResult j(String string) {
        HttpRequest httpRequest;
        String string2 = f + "/user/twitter/hottweets";
        if (string != null) {
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("last", string);
            httpRequest = HttpRequest.get(string2, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string2);
        }
        return ApiService.a(this.a(httpRequest), HotTweetResult.class);
    }

    public final PostPublish j(String string, String string2) {
        String string3 = f + "/user/twitter";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("content", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final ResultStatus j(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/%s/comment", string);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string2);
        hashMap.put("content", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }
//
//    public final SplashRoot j() {
//        String string = f + "/splashes/android";
//        return ApiService.a(this.a(HttpRequest.get(string)), SplashRoot.class);
//    }

    public final PostPublish k(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/twitter/delete/%s", string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final TopicSummary k() {
        String string = f + "/post/post-count";
        return ApiService.a(this.a(HttpRequest.get(string)), TopicSummary.class);
    }

    public final TweetsResult k(String string) {
        HttpRequest httpRequest;
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{am.e().getUser().getId()};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/user/%s/twitter", arrobject)).toString();
        if (string != null) {
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("last", string);
            httpRequest = HttpRequest.get(string2, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string2);
        }
        return ApiService.a(this.a(httpRequest), TweetsResult.class);
    }

    public final VoteResult k(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/%s/vote", string);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string2);
        hashMap.put("n", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, VoteResult.class);
    }

    public final PostDetailComment l(String string, String string2) {
        HttpRequest httpRequest;
        String string3 = f + String.format(Locale.CHINA, "/user/twitter/%s/comments", string);
        if (string2 != null) {
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("last", string2);
            httpRequest = HttpRequest.get(string3, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string3);
        }
        return ApiService.a(this.a(httpRequest), PostDetailComment.class);
    }

    public final ResultStatus l(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/%s/comment/%s/report", string, string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("reason", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final ShelfMsgRoot l() {
        String string = f + "/notification/shelfMessage?platform=android";
        return ApiService.a(this.a(HttpRequest.get(string)), ShelfMsgRoot.class);
    }

    public final TweetResult l(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/twitter/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), TweetResult.class);
    }

    public final PostPublish m(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/twitter/retweet/%s", string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PostPublish.class);
    }

    public final ResultStatus m(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/review/%s/helpful", string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("is_helpful", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final UserInfoResult m(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/info/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), UserInfoResult.class);
    }

    public final VipPlan m() {
        String string = f + "/purchase/vip/plan";
        return ApiService.a(this.a(HttpRequest.get(string)), VipPlan.class);
    }

    public final FollowResult n(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/%s/has/followed/%s", string, string2);
        return ApiService.a(this.b(HttpRequest.get(string3)), FollowResult.class);
    }

    public final ResultStatus n(String string, String string2, String string3) {
        String string4 = f + "/statistics/read";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("date", string);
        hashMap.put("uuid", string2);
        hashMap.put("book", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final List<BookSummary> n(String string) {
         ArrayList<BookSummary> arrayList = new ArrayList<>();
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2);
        SearchResultRoot searchResultRoot = ApiService.a(this.a(HttpRequest.get(string3)), SearchResultRoot.class);
        if (searchResultRoot == null) return arrayList;
        return searchResultRoot.getBooks();
    }

    public final ResultStatus o(String var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.f + String.format(Locale.CHINA, "/post/%s/comment/%s/like", var1_1, var2_2);
        HttpRequest var6_5 = HttpRequest.post(var4_4);
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var3_3);
        HttpRequest var9_7 = this.b(var6_5);
        var9_7.form(var7_6);
        return ApiService.a(var9_7, ResultStatus.class);
    }

    public final SearchResultRoot o(String string) {
        String string2 = am.e(string);
        String string3 = f + "/book/accurate-search?author=" + string2;
        return ApiService.a(this.a(HttpRequest.get(string3)), SearchResultRoot.class);
    }

    public final TweetsResult o(String string, String string2) {
        HttpRequest httpRequest;
        String string3 = f + String.format(Locale.CHINA, "/user/%s/twitter", string);
        if (string2 != null) {
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("last", string2);
            httpRequest = HttpRequest.get(string3, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string3);
        }
        return ApiService.a(this.a(httpRequest), TweetsResult.class);
    }

    public final UgcFilterRoot o() {
        String string = f + "/book-list/tagType";
        return ApiService.a(this.a(HttpRequest.get(string)), UgcFilterRoot.class);
    }

    public final ChapterRoot p(String string, String string2) {
        String string3 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s", string2, am.e(string));
        HttpRequest httpRequest = this.b(HttpRequest.get(string3), 7);
        boolean bl = httpRequest.ok();
        int n = httpRequest.code();
        if (!bl && n >= 500) {
            return ApiService.x();
        }
        SgChapterRoot sgChapterRoot = ApiService.a(httpRequest, SgChapterRoot.class);
        if (sgChapterRoot == null || sgChapterRoot.getContent() == null || sgChapterRoot.getContent().length <= 0) return null;
        {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string4 = com.clilystudio.netbook.hpay100.a.a.z(sgChapterRoot.getContent()[0].getBlock());
            Chapter chapter = new Chapter();
            chapter.setLink(string);
            if (string4 != null && string4.contains("</")) {
                string4 = Html.fromHtml(string4.replace("\n", "<br>")).toString();
            }
            chapter.setBody(string4);
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
    }

    public final ResultServer p(String string, String string2, String string3) {
        String string4 = f + "/statistics/install";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("platform", "android");
        hashMap.put("device-id", string);
        hashMap.put("recommended", string2);
        hashMap.put("op", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultServer.class);
    }

    public final SearchResultRoot p(String string) {
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2) + "&onlyTitle=true";
        return ApiService.a(this.a(HttpRequest.get(string3)), SearchResultRoot.class);
    }

    public final ReviewHistory q(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/review/one-by-book-user?book=%s&token=%s", string, string2);
        return ApiService.a(this.a(HttpRequest.get(string3)), ReviewHistory.class);
    }

    public final SearchPromRoot q(String string) {
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/search/%s/chinese-all-promo", string2);
        return ApiService.a(this.a(HttpRequest.get(string3)), SearchPromRoot.class);
    }

    public final BookInfo r(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), BookInfo.class);
    }

    public final NotificationRoot r(String string, String string2) {
        String string3 = com.clilystudio.netbook.hpay100.a.a.Q(string2) ? String.format(Locale.CHINA, "/user/notification/important?token=%s", string) : String.format(Locale.CHINA, "/user/notification/important?token=%s&startTime=%s", string, string2);
        String string4 = f + string3;
        return ApiService.a(this.a(HttpRequest.get(string4)), NotificationRoot.class);
    }

    public final NotificationRoot s(String string, String string2) {
        String string3 = com.clilystudio.netbook.hpay100.a.a.Q(string2) ? String.format(Locale.CHINA, "/user/notification/unimportant?token=%s", string) : String.format(Locale.CHINA, "/user/notification/unimportant?token=%s&startTime=%s", string, string2);
        String string4 = f + string3;
        return ApiService.a(this.a(HttpRequest.get(string4)), NotificationRoot.class);
    }

    public final SgTocRoot s(String string) {
        String string2 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2), 7), SgTocRoot.class);
    }

    public final IKanshuUrlResult t() {
        String string = f + "/promotion/17k";
        return ApiService.a(this.a(HttpRequest.get(string)), IKanshuUrlResult.class);
    }

    public final PurchaseVipResult t(String string, String string2) {
        String string3 = f + "/purchase/vip/plan";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("plan", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, PurchaseVipResult.class);
    }

    public final LdTocRoot t(String string) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000", string);
        return ApiService.a(this.a(HttpRequest.get(string2), 8), LdTocRoot.class);
    }

    public final BookTopRoot u() {
        String string = f + "/favorite/book/top";
        return ApiService.a(this.a(HttpRequest.get(string)), BookTopRoot.class);
    }

    public final ChangeNickNameRoot u(String string, String string2) {
        String string3 = f + "/user/change-nickname";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("nickname", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ChangeNickNameRoot.class);
    }

    public final String u(String string) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0", string);
        return this.a(HttpRequest.get(string2), 8).body();
    }

    public final ChangeGenderRoot v(String string, String string2) {
        String string3 = f + "/user/change-gender";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("gender", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ChangeGenderRoot.class);
    }

    public final EsTocRoot v(String string) {
        String[] arrstring = com.clilystudio.netbook.hpay100.a.a.O(string);
        if (arrstring == null) {
            return null;
        }
        String string2 = String.format(Locale.CHINA, "http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_", arrstring[0], arrstring[1]);
        return ApiService.a(this.a(HttpRequest.get(string2), 3), EsTocRoot.class);
    }

    public final int w(String string) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s", string);
        return SsChapterJson.getTocCount(this.a(HttpRequest.get(string2), 6).body());
    }

    public final ResultStatus w(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/%s/report", string);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("reason", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final ChapterRoot x(String string) {
        String string2 = String.format(Locale.CHINA, "/chapter/%s", am.e(string));
        String string3 = h + string2;
        String string4 = string3 + "?" + com.clilystudio.netbook.hpay100.a.a.A(string2);
        HttpRequest httpRequest = HttpRequest.get(string4);
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.a2(httpRequest);
        }
        HttpRequest httpRequest2 = this.b(httpRequest);
        boolean bl = httpRequest2.ok();
        int n = httpRequest2.code();
        if (!bl && n >= 500) {
            return ApiService.w();
        }
        ChapterRoot chapterRoot = ApiService.a(httpRequest2, ChapterRoot.class);
        if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
        {
            chapterRoot.getChapter().setLink(string);
            return chapterRoot;
        }
    }

    public final ResultStatus x(String string, String string2) {
        String string3 = f + "/user/add-exp";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("type", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final ChapterRoot y(String string) {
        String string2 = am.e(string);
        String string3 = g + String.format(Locale.CHINA, "/chapter/%s", string2);
        HttpRequest httpRequest = HttpRequest.get(string3);
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.a2(httpRequest);
        }
        HttpRequest httpRequest2 = this.b(httpRequest);
        boolean bl = httpRequest2.ok();
        int n = httpRequest2.code();
        if (!bl && n >= 500) {
            return ApiService.w();
        }
        ChapterRoot chapterRoot = ApiService.a(httpRequest2, ChapterRoot.class);
        if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
        {
            chapterRoot.getChapter().setLink(string);
            return chapterRoot;
        }
    }

    public final ResultStatus y(String string, String string2) {
        String string3 = f + "/user/collected-post";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("post", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

    public final BookRankDetailRoot z(String string) {
        String string2 = f + String.format(Locale.CHINA, "/ranking/%s", string);
        return ApiService.a(this.a(HttpRequest.get(string2)), BookRankDetailRoot.class);
    }

    public final ResultStatus z(String string, String string2) {
        String string3 = f + "/user/collected-post/remove";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("post", string2);
        HttpRequest httpRequest = this.b(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.a(httpRequest, ResultStatus.class);
    }

//    static class JsonException extends IOException {
//        private static final long serialVersionUID = -8247637549733902252L;
//
//        public JsonException(JsonParseException jsonParseException) {
//            super(jsonParseException.getMessage());
//            this.initCause(jsonParseException);
//        }
//    }

    static final class DateDeserializer implements JsonDeserializer<Date> {
        @Override
        public final /* synthetic */ Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            String string = jsonElement.getAsString().replace("Z", "+0000");
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.CHINA).parse(string, new ParsePosition(0));
        }
    }
}
