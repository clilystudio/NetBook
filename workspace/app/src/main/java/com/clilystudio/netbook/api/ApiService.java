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
import com.clilystudio.netbook.model.SplashRoot;
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
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.mistatistic.sdk.URLStatsRecorder;
import com.xiaomi.mistatistic.sdk.controller.HttpEventFilter;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
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
    private static final Gson l = new GsonBuilder().registerTypeAdapter(Date.class, new a()).create();

    private final f c;

    public ApiService(f f2) {
        URLStatsRecorder.setEventFilter(new HttpEventFilter() {
            @Override
            public HttpEvent onEvent(HttpEvent httpEvent) {
                Log.d("NetBook", httpEvent.getUrl());
                return httpEvent;
            }
        });
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
        BufferedReader bufferedReader = httpRequest.bufferedReader();
        V v = l.fromJson(bufferedReader, class_);
        try {
            bufferedReader.close();
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return v;
    }

    public static String a(String string, int n) {
        Object[] arrobject = new Object[]{string, n};
        return String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d", arrobject);
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
        URLStatsRecorder.addHttpEvent(new HttpEvent(url, l2 - timeCost, responseCode, exceptionName));
    }

    private static String ad(String string) {
        return string + "&distillate=true";
    }

    public static String b(String string, int n, String string2) {
        String string3 = am.e(am.e(string2));
        Object[] arrobject = new Object[]{string, n, string3};
        return String.format(Locale.CHINA, "http://book.soso.com/#!/detail/%s/%d/%s", arrobject);
    }

    private static <V> List<V> b(HttpRequest httpRequest, Class<V> class_) throws JsonException {
        ArrayList<V> arrayList;
        BufferedReader bufferedReader = httpRequest.bufferedReader();
        try {
            JsonArray jsonArray = new JsonParser().parse(bufferedReader).getAsJsonArray();
            arrayList = new ArrayList<V>();
            for (JsonElement jsonElement : jsonArray) {
                arrayList.add(l.fromJson(jsonElement, class_));
            }
        } catch (JsonParseException var5_7) {
            var5_7.printStackTrace();
            throw new JsonException(var5_7);
        } finally {
            try {
                bufferedReader.close();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void j(String string, int n) {
        if (TextUtils.isEmpty(string)) {
            return;
        }
        String[] arrstring = string.split(",");
        if (arrstring.length < 4) return;
        String[] arrstring2 = new String[4];
        for (int j = 0; j < arrstring.length; ++j) {
            arrstring2[j] = arrstring[j].trim();
        }
        String string2 = arrstring2[0];
        String string3 = arrstring2[1];
        String string4 = arrstring2[2];
        if (!TextUtils.isEmpty(string2) && !i.equals(string2)) {
            i = string2;
        }
        if (!TextUtils.isEmpty(string3) && !ApiService.j.equals(string3)) {
            ApiService.j = string3;
        }
        if (TextUtils.isEmpty(string4)) return;
        if (k.equals(string4)) return;
        k = string4;
    }

    private static void v() {
        MiStatInterface.recordCountEvent("server_error", null);
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
    private HttpRequest a(HttpRequest httpRequest) throws IOException {
        long l = new Date().getTime();
        if (com.clilystudio.netbook.api.e.a()) {
            httpRequest = com.clilystudio.netbook.api.e.a2(httpRequest);
        }
        try {
            boolean bl = this.b(httpRequest).ok();
            ApiService.a(httpRequest.url().toString(), l, httpRequest.code(), "");
            if (bl) return httpRequest;
            else {
                throw new IOException("Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException var4_4) {
            ApiService.a(httpRequest.url().toString(), l, httpRequest.code(), var4_4.getClass().getName());
            ApiService.v();
            throw var4_4;
        }
    }

    private HttpRequest a(HttpRequest httpRequest, int n) throws IOException {
        try {
            if (!this.b(httpRequest, n).ok()) {
                throw new IOException("Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException var3_3) {
            ApiService.v();
            throw var3_3;
        }
        return httpRequest;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private Root a(String var1_1, HashMap<String, String> var2_2) {
        try {
            HttpRequest var4_3 = this.b(HttpRequest.post(ApiService.f + var1_1));
            var4_3.form(var2_2);
            return ApiService.a(var4_3, Root.class);
        } catch (HttpRequest.HttpRequestException var3_7) {
            var3_7.printStackTrace();
            return null;
        }
    }

    private <V> V a(String string, Class<V> class_) throws IOException {
        return ApiService.a(this.a(HttpRequest.post(f + string)), class_);
    }

    /*
     * Enabled aggressive block sorting
     */
    private HttpRequest b(HttpRequest httpRequest) {
        httpRequest.chunk(15000).bufferSize(15000);
        f f2 = this.c;
        String string = "1".equals(OnlineConfigAgent.getInstance().getConfigParams(MyApplication.a(), "ua-toggle")) ? f2.b() : "";
        httpRequest.header(string);
        httpRequest.header("X-User-Agent", this.c.b());
        httpRequest.header("X-Device-Id", am.h());
        return httpRequest;
    }

    private HttpRequest b(HttpRequest httpRequest, int n) {
        httpRequest.chunk(15000).bufferSize(15000);
        httpRequest.userAgent(this.c.a(n));
        if (n == 6) {
            httpRequest.referer("http://bookshelf.html5.qq.com/page?t=pad");
        }
        return httpRequest;
    }

    public final BookShelfSyncTime A(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/bookshelf-updated?token=%s", string);
        BookShelfSyncTime bookShelfSyncTime = null;
        try {
            bookShelfSyncTime = ApiService.a(this.a(HttpRequest.get(string2)), BookShelfSyncTime.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookShelfSyncTime;
    }

    public final CommentDetail A(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/%s/comment/%s", string, string2);
        CommentDetail commentDetail = null;
        try {
            commentDetail = ApiService.a(this.a(HttpRequest.get(string3)), CommentDetail.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return commentDetail;
    }

    public final RemoteBookShelf B(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/bookshelf?token=%s", string);
        RemoteBookShelf remoteBookShelf = null;
        try {
            remoteBookShelf = ApiService.a(this.a(HttpRequest.get(string2)), RemoteBookShelf.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return remoteBookShelf;
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
        BookReviewRoot bookReviewRoot = null;
        try {
            bookReviewRoot = ApiService.a(this.a(HttpRequest.get(string2)), BookReviewRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookReviewRoot;
    }

    public final UGCBookDetailRoot C(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/book-list/%s/draft?token=%s", string2, string);
        UGCBookDetailRoot uGCBookDetailRoot = null;
        try {
            uGCBookDetailRoot = ApiService.a(this.a(HttpRequest.get(string3)), UGCBookDetailRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return uGCBookDetailRoot;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
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
        ReviewResult reviewResult = null;
        try {
            reviewResult = ApiService.a(this.a(HttpRequest.get(string2)), ReviewResult.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return reviewResult;
    }

    public final BookHelpResult E(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/help/%s", string);
        BookHelpResult bookHelpResult = null;
        try {
            bookHelpResult = ApiService.a(this.a(HttpRequest.get(string2)), BookHelpResult.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookHelpResult;
    }

    public final ResultStatus E(String string, String string2) {
        String string3 = f + "/user/collected-book-list/remove";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("bookList", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        ResultStatus resultStatus = ApiService.a(httpRequest2, ResultStatus.class);
        return resultStatus;
    }

    public final GirlTopicResult F(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/%s", string);
        GirlTopicResult girlTopicResult = null;
        try {
            girlTopicResult = ApiService.a(this.a(HttpRequest.get(string2)), GirlTopicResult.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return girlTopicResult;
    }

    public final Root F(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/%s/like", string);
        HashMap<String, String> hashMap = new HashMap<>();
        HttpRequest httpRequest = HttpRequest.post(string3);
        hashMap.put("token", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        Root root = ApiService.a(httpRequest2, Root.class);
        return root;
    }

    public final NotifCountRoot G(String string) {
        NotifCountRoot notifCountRoot = null;
        try {
            notifCountRoot = this.a(String.format(Locale.CHINA, "/user/notification/count?token=%s", string), NotifCountRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return notifCountRoot;
    }

    public final SyncUploadResult G(String string, String string2) {
        String string3 = f + "/user/bookshelf";
        try {
            HttpRequest httpRequest = HttpRequest.post(string3);
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("token", string);
            hashMap.put("books", string2);
            HttpRequest httpRequest2 = this.b(httpRequest);
            httpRequest2.form(hashMap);
            return ApiService.a(httpRequest2, SyncUploadResult.class);
        } catch (HttpRequest.HttpRequestException var4_8) {
            var4_8.printStackTrace();
            return null;
        }
    }

    public final PostDetail H(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/%s", string);
        PostDetail postDetail = null;
        try {
            postDetail = ApiService.a(this.a(HttpRequest.get(string2)), PostDetail.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return postDetail;
    }

    public final SyncUploadResult H(String string, String string2) {
        String string3 = f + "/user/feedingBooks";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("books", string2);
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        SyncUploadResult syncUploadResult = ApiService.a(httpRequest2, SyncUploadResult.class);
        return syncUploadResult;
    }

    public final SyncUploadResult I(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/bookshelf?token=%s&books=%s", string, string2);
        SyncUploadResult syncUploadResult = null;
        try {
            syncUploadResult = ApiService.a(this.a(HttpRequest.put(string3)), SyncUploadResult.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return syncUploadResult;
    }

    public final TopicCount I(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/total-count?books=%s", string);
        TopicCount topicCount = null;
        try {
            topicCount = ApiService.a(this.a(HttpRequest.get(string2)), TopicCount.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return topicCount;
    }

    public final SyncUploadResult J(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/feedingBooks?token=%s&books=%s", string, string2);
        SyncUploadResult syncUploadResult = null;
        try {
            syncUploadResult = ApiService.a(this.a(HttpRequest.put(string3)), SyncUploadResult.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return syncUploadResult;
    }

    public final UserInfo K(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/detail-info?token=%s", string);
        UserInfo userInfo = null;
        try {
            userInfo = ApiService.a(this.a(HttpRequest.get(string2)), UserInfo.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return userInfo;
    }

    public final Root L(String string) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        return this.a("/user/notification/read-important", hashMap);
    }

    public final Root M(String string) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        return this.a("/user/notification/read-unimportant", hashMap);
    }

    public final AutoCompleteRoot N(String string) {
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/auto-complete?query=%s", string2);
        AutoCompleteRoot autoCompleteRoot = null;
        try {
            autoCompleteRoot = ApiService.a(this.a(HttpRequest.get(string3)), AutoCompleteRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return autoCompleteRoot;
    }

    public final UserVipInfo O(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/account/vip?token=%s", string);
        UserVipInfo userVipInfo = null;
        try {
            userVipInfo = ApiService.a(this.a(HttpRequest.get(string2)), UserVipInfo.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return userVipInfo;
    }

    public final ResultStatus P(String string) {
        String string2 = f + "/user/logout";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        HttpRequest httpRequest = this.b(HttpRequest.post(string2));
        httpRequest.form(hashMap);
        ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
        return resultStatus;
    }

    public final HotCommentRoot T(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/%s/comment/best", string);
        HotCommentRoot hotCommentRoot = null;
        try {
            hotCommentRoot = ApiService.a(this.a(HttpRequest.get(string2)), HotCommentRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return hotCommentRoot;
    }

    public final UGCBookDetailRoot U(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book-list/%s", string);
        UGCBookDetailRoot uGCBookDetailRoot = null;
        try {
            uGCBookDetailRoot = ApiService.a(this.a(HttpRequest.get(string2)), UGCBookDetailRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return uGCBookDetailRoot;
    }

    public final RelateBookRoot V(String string) {
        String string2 = f + "/books/by-ids" + string;
        RelateBookRoot relateBookRoot = null;
        try {
            relateBookRoot = ApiService.a(this.a(HttpRequest.get(string2)), RelateBookRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return relateBookRoot;
    }

    public final ResultStatus W(String string) {
        String string2 = f + "/user/add-exp-week";
        HttpRequest httpRequest = HttpRequest.post(string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("type", "rate");
        HttpRequest httpRequest2 = this.b(httpRequest);
        httpRequest2.form(hashMap);
        ResultStatus resultStatus = ApiService.a(httpRequest2, ResultStatus.class);
        return resultStatus;
    }

    public final RelateBookRoot X(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/%s/recommend", string);
        RelateBookRoot relateBookRoot = null;
        try {
            relateBookRoot = ApiService.a(this.a(HttpRequest.get(string2)), RelateBookRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return relateBookRoot;
    }

    public final BookHelpList a(String string, String string2, int n, int n2, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format(Locale.CHINA, "/post/help?duration=%s&sort=%s&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string3 = ApiService.ad(string3);
        }
        BookHelpList bookHelpList = null;
        try {
            bookHelpList = ApiService.a(this.a(HttpRequest.get(string3)), BookHelpList.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookHelpList;
    }

    public final BookListRoot a(String string, String string2, String string3, String string4, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, am.e(string3), am.e(string4), n, 50};
        String string5 = stringBuilder.append(String.format(Locale.CHINA, "/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d", arrobject)).toString();
        BookListRoot bookListRoot = null;
        try {
            bookListRoot = ApiService.a(this.a(HttpRequest.get(string5)), BookListRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookListRoot;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
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
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string3, string, string2, n, 20};
        String string4 = stringBuilder.append(String.format(Locale.CHINA, "/post/by-block?block=%s&duration=%s&sort=%s&type=all&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string4 = ApiService.ad(string4);
        }
        DiscussSummaryList discussSummaryList = null;
        try {
            discussSummaryList = ApiService.a(this.a(HttpRequest.get(string4)), DiscussSummaryList.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return discussSummaryList;
    }

    public final PostPublish a(String string, String string2, String string3, String string4) {
        String string5 = f + String.format(Locale.CHINA, "/user/twitter/%s/reply/comment/%s", string2, string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("content", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
    }

    public final PostPublish a(String string, String string2, String string3, String string4, String string5, boolean bl) {
        String string6 = f + "/post/review";
        HashMap<String, String> hashMap = new HashMap<String, String>();
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
        PurchaseChapterResult purchaseChapterResult = ApiService.a(httpRequest, PurchaseChapterResult.class);
        return purchaseChapterResult;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ResultStatus a(UGCNewCollection var1_1, String var2_2) {
        String var3_3 = ApiService.f + "/book-list";
        HttpRequest var5_4 = this.b(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<String, String>();
        var6_5.put("token", var2_2);
        var6_5.put("title", var1_1.getTitle());
        var6_5.put("desc", var1_1.getDesc());
        var5_4.form(var6_5);
        Iterator<BookSummary> var11_6 = var1_1.getBooks().iterator();
        while (var11_6.hasNext()) {
            BookSummary var13_7 = var11_6.next();
            var5_4.form("books[]", var13_7.getId());
            var5_4.form("comments[]", var13_7.getAppendComment());
        }
        return ApiService.a(var5_4, ResultStatus.class);
    }

    public final ResultStatus a(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.f + String.format(Locale.CHINA, "/book-list/%s", var3_3);
        HttpRequest var6_5 = this.b(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<String, String>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        Iterator<BookSummary> var12_7 = var1_1.getBooks().iterator();
        while (var12_7.hasNext()) {
            BookSummary var14_8 = var12_7.next();
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.a(var6_5, ResultStatus.class);
    }

    public final ReviewList a(String string, String string2, String string3, int n, int n2, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string3, string2, n, 20};
        String string4 = stringBuilder.append(String.format(Locale.CHINA, "/post/review?duration=%s&sort=%s&type=%s&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string4 = ApiService.ad(string4);
        }
        ReviewList reviewList = null;
        try {
            reviewList = ApiService.a(this.a(HttpRequest.get(string4)), ReviewList.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return reviewList;
    }

    public final Root a(String string, Uri uri) {
        String string2 = f + "/user/change-avatar";
        HttpRequest httpRequest = this.b(HttpRequest.post(string2));
        httpRequest.part("token", null, null, string).part("avatar", uri.getPath(), "image/jpeg", new File(uri.getPath())).ok();
        Root root = ApiService.a(httpRequest, Root.class);
        return root;
    }

    public final UGCBookListRoot a(String string, String string2, int n, int n2, String string3) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20, string3};
        String string4 = stringBuilder.append(String.format(Locale.CHINA, "/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s", arrobject)).toString();
        UGCBookListRoot uGCBookListRoot = null;
        try {
            uGCBookListRoot = ApiService.a(this.a(HttpRequest.get(string4)), UGCBookListRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return uGCBookListRoot;
    }

    public final UshaqiOnlineConfig a() {
        UshaqiOnlineConfig ushaqiOnlineConfig = null;
        try {
            ushaqiOnlineConfig = ApiService.a(this.a(HttpRequest.get("http://alertserver.ushaqi.com/server_config")), UshaqiOnlineConfig.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return ushaqiOnlineConfig;
    }

    public final VoteResult a(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/%s/vote", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("n", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            VoteResult voteResult = ApiService.a(httpRequest, VoteResult.class);
            return voteResult;
        } catch (Exception var8_8) {
            return null;
        }
    }

    public final SsTocRoot a(int n, int n2, String string) {
        Object[] arrobject = new Object[]{n, n2, string};
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200", arrobject);
        SsTocRoot ssTocRoot = null;
        try {
            ssTocRoot = ApiService.a(this.a(HttpRequest.get(string2), 6), SsTocRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return ssTocRoot;
    }

    public final List<BookUpdate> a(List<String> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        String string = TextUtils.join(",", list.toArray());
        String string2 = f + String.format(Locale.CHINA, "/book?view=updated&id=%s", string);
        List<BookUpdate> list2 = null;
        try {
            list2 = ApiService.b(this.a(HttpRequest.get(string2)), BookUpdate.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return list2;
    }

    public final List<BookSummary> a(String[] arrstring) {
        ArrayList<BookSummary> arrayList = new ArrayList<BookSummary>();
        StringBuffer stringBuffer = new StringBuffer("?");
        for (int j = 0; j < arrstring.length; ++j) {
            if (j == 0) {
                stringBuffer.append("ids=" + arrstring[j]);
                continue;
            }
            stringBuffer.append("&ids=" + arrstring[j]);
        }
        String string = f + "/books/by-ids" + stringBuffer;
        SearchResultRoot searchResultRoot = null;
        try {
            searchResultRoot = ApiService.a(this.a(HttpRequest.get(string)), SearchResultRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        if (searchResultRoot == null) return arrayList;
        return searchResultRoot.getBooks();
    }

    public final ChineseAllPromRoot aa(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/%s/chinese-all-promo", string);
        ChineseAllPromRoot chineseAllPromRoot = null;
        try {
            chineseAllPromRoot = ApiService.a(this.a(HttpRequest.get(string2)), ChineseAllPromRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return chineseAllPromRoot;
    }

    public final BookGenderRecommend ac(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/recommend?gender=%s", string);
        BookGenderRecommend bookGenderRecommend = null;
        try {
            bookGenderRecommend = ApiService.a(this.a(HttpRequest.get(string2)), BookGenderRecommend.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookGenderRecommend;
    }

    public final GirlTopicList b(String string, String string2, int n, int n2, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format(Locale.CHINA, "/post/by-block?block=girl&duration=%s&sort=%s&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string3 = ApiService.ad(string3);
        }
        GirlTopicList girlTopicList = null;
        try {
            girlTopicList = ApiService.a(this.a(HttpRequest.get(string3)), GirlTopicList.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return girlTopicList;
    }

    public final HotKeywordResult b() {
        String string = f + String.format(Locale.CHINA, "/book/hot-word");
        HotKeywordResult hotKeywordResult = null;
        try {
            hotKeywordResult = ApiService.a(this.a(HttpRequest.get(string)), HotKeywordResult.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return hotKeywordResult;
    }

    public final PostPublish b(String string, String string2, String string3) {
        String string4 = f + "/user/twitter/article";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
    }

    public final PostPublish b(String string, String string2, String string3, String string4) {
        String string5 = f + String.format(Locale.CHINA, "/user/twitter/%s/comment/%s/report", string2, string3);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("reason", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
    }

    public final PostPublish b(String string, String string2, String string3, String string4, String string5) {
        String string6 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("book", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        hashMap.put("votes", string5);
        HttpRequest httpRequest = this.b(HttpRequest.post(string6));
        httpRequest.form(hashMap);
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
    }

    public final ResultStatus b(UGCNewCollection var1_1, String var2_2) {
        String var3_3 = ApiService.f + "/book-list/draft";
        HttpRequest var5_4 = this.b(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<String, String>();
        var6_5.put("token", var2_2);
        var6_5.put("title", var1_1.getTitle());
        var6_5.put("desc", var1_1.getDesc());
        var5_4.form(var6_5);
        Iterator<BookSummary> var11_6 = var1_1.getBooks().iterator();
        while (var11_6.hasNext()) {
            BookSummary var13_7 = var11_6.next();
            var5_4.form("books[]", var13_7.getId());
            var5_4.form("comments[]", var13_7.getAppendComment());
        }
        return ApiService.a(var5_4, ResultStatus.class);
    }

    public final ResultStatus b(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.f + String.format(Locale.CHINA, "/book-list/%s/draft", var3_3);
        HttpRequest var6_5 = this.b(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<String, String>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        Iterator<BookSummary> var12_7 = var1_1.getBooks().iterator();
        while (var12_7.hasNext()) {
            BookSummary var14_8 = var12_7.next();
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.a(var6_5, ResultStatus.class);
    }

    public final Topic b(String string, String string2, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format(Locale.CHINA, "/post/by-book?book=%s&sort=%s&type=normal,vote&start=%d&limit=%d", arrobject)).toString();
        Topic topic = null;
        try {
            topic = ApiService.a(this.a(HttpRequest.get(string3)), Topic.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return topic;
    }

    public final String b(String string, int n) {
        Object[] arrobject = new Object[]{string, n};
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", arrobject);
        String string3 = null;
        try {
            string3 = SsChapterJson.getChapterUrl(this.a(HttpRequest.get(string2), 6).body());
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return string3;
    }

    public final BookReviewRoot c(String string, String string2, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format(Locale.CHINA, "/post/review/by-book?book=%s&sort=%s&start=%d&limit=%d", arrobject)).toString();
        BookReviewRoot bookReviewRoot = null;
        try {
            bookReviewRoot = ApiService.a(this.a(HttpRequest.get(string3)), BookReviewRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookReviewRoot;
    }

    public final BookTagRoot c(String string, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{am.e(string), n, 50};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/book/by-tags?tags=%s&start=%d&limit=%d", arrobject)).toString();
        BookTagRoot bookTagRoot = null;
        try {
            bookTagRoot = ApiService.a(this.a(HttpRequest.get(string2)), BookTagRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookTagRoot;
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
        ChargeTypes chargeTypes = null;
        try {
            chargeTypes = ApiService.a(this.a(HttpRequest.get(string)), ChargeTypes.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return chargeTypes;
    }

    public final PostCountRoot c(String string) {
        String string2 = f + String.format(Locale.CHINA, "/post/post-count-by-book?bookId=%s", string);
        PostCountRoot postCountRoot = null;
        try {
            postCountRoot = ApiService.a(this.a(HttpRequest.get(string2)), PostCountRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return postCountRoot;
    }

    public final PostPublish c(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/%s/comment", string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("content", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
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
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
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
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
    }

    public final ResultStatus c(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.f + String.format(Locale.CHINA, "/book-list/%s/public", var3_3);
        HttpRequest var6_5 = this.b(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        Iterator<BookSummary> var12_7 = var1_1.getBooks().iterator();
        while (var12_7.hasNext()) {
            BookSummary var14_8 = var12_7.next();
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.a(var6_5, ResultStatus.class);
    }

    public final BookRankRoot d() {
        String string = f + "/ranking/gender";
        BookRankRoot bookRankRoot = null;
        try {
            bookRankRoot = ApiService.a(this.a(HttpRequest.get(string)), BookRankRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return bookRankRoot;
    }

    public final PostPublish d(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("votes", string4);
        hashMap.put("block", "ramble");
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
    }

    public final TimelineResult d(String string, String string2, String string3) {
        HttpRequest httpRequest;
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/timeline/%s?token=%s", string2, string);
        if (string3 != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string3);
            httpRequest = HttpRequest.get(string4, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string4);
        }
        try {
            return ApiService.a(this.a(httpRequest), TimelineResult.class);
        } catch (Exception var8_8) {
            Log.e(b, var8_8.getMessage());
            return null;
        }
    }

    public final Topic d(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/user/collected-post?token=%s&start=%s", arrobject)).toString();
        Topic topic = null;
        try {
            topic = ApiService.a(this.a(HttpRequest.get(string2)), Topic.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return topic;
    }

    public final List<TocSummary> d(String string) {
        String string2 = f + String.format(Locale.CHINA, "/toc?view=summary&book=%s", string);
        List<TocSummary> list = null;
        try {
            list = ApiService.b(this.a(HttpRequest.get(string2)), TocSummary.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return list;
    }

    public final CategoryRoot e() {
        String string = f + "/cats/lv2/statistics";
        CategoryRoot categoryRoot = null;
        try {
            categoryRoot = ApiService.a(this.a(HttpRequest.get(string)), CategoryRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return categoryRoot;
    }

    public final DeleteResult e(String string, String string2) {
        String string3 = e + String.format(Locale.CHINA, "/charge/order/%s?token=%s", string, string2);
        try {
            DeleteResult deleteResult = ApiService.a(this.a(HttpRequest.put(string3)), DeleteResult.class);
            return deleteResult;
        } catch (Exception var4_5) {
            return null;
        }
    }

    public final PostDetailComment e(String string, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n, 30};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/post/%s/comment?start=%d&limit=%d", arrobject)).toString();
        PostDetailComment postDetailComment = null;
        try {
            postDetailComment = ApiService.a(this.a(HttpRequest.get(string2)), PostDetailComment.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return postDetailComment;
    }

    public final PostPublish e(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/user/twitter/%s/report", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("reason", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
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
        PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
        return postPublish;
    }

    public final Toc e(String string) {
        String string2 = f + String.format(Locale.CHINA, "/toc/%s?view=chapters", string);
        Toc toc = null;
        try {
            toc = ApiService.a(this.a(HttpRequest.get(string2)), Toc.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return toc;
    }

    public final Topic e(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/user/posted?token=%s&start=%s", arrobject)).toString();
        Topic topic = null;
        try {
            topic = ApiService.a(this.a(HttpRequest.get(string2)), Topic.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return topic;
    }

    public final BookAdd f(String string, String string2, String string3) {
        String string4 = f + "/book/add";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("title", string);
        hashMap.put("author", string2);
        hashMap.put("device", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        BookAdd bookAdd = ApiService.a(httpRequest, BookAdd.class);
        return bookAdd;
    }

    public final CategoryLevelRoot f() {
        String string = f + "/cats/lv2";
        CategoryLevelRoot categoryLevelRoot = null;
        try {
            categoryLevelRoot = ApiService.a(this.a(HttpRequest.get(string)), CategoryLevelRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return categoryLevelRoot;
    }

    public final ChapterSingleKey f(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/purchase/chapter/%s/key?token=%s", string, string2);
        ChapterSingleKey chapterSingleKey = null;
        try {
            chapterSingleKey = ApiService.a(this.a(HttpRequest.get(string3)), ChapterSingleKey.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return chapterSingleKey;
    }

    public final MixTocRoot f(String string) {
        String string2 = f + String.format(Locale.CHINA, "/mix-toc/%s", string);
        MixTocRoot mixTocRoot = null;
        try {
            mixTocRoot = ApiService.a(this.a(HttpRequest.get(string2)), MixTocRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return mixTocRoot;
    }

    public final PostDetailComment f(String string, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n, 30};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/post/review/%s/comment?start=%d&limit=%d", arrobject)).toString();
        PostDetailComment postDetailComment = null;
        try {
            postDetailComment = ApiService.a(this.a(HttpRequest.get(string2)), PostDetailComment.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return postDetailComment;
    }

    public final ResultStatus f(String string, String string2, String string3, String string4) {
        String string5 = f + String.format(Locale.CHINA, "/post/%s/comment", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string2);
        hashMap.put("content", string3);
        hashMap.put("replyTo", string4);
        HttpRequest httpRequest = this.b(HttpRequest.post(string5));
        httpRequest.form(hashMap);
        ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
        return resultStatus;
    }

    public final UGCBookListRoot f(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/user/collected-book-list?token=%s&start=%d", arrobject)).toString();
        UGCBookListRoot uGCBookListRoot = null;
        try {
            uGCBookListRoot = ApiService.a(this.a(HttpRequest.get(string2)), UGCBookListRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return uGCBookListRoot;
    }

    public final Account g(String string, String string2, String string3) {
        String string4 = f + "/user/login";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("platform_code", string);
        hashMap.put("platform_uid", string2);
        hashMap.put("platform_token", string3);
        HttpRequest httpRequest = this.b(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        Account account = ApiService.a(httpRequest, Account.class);
        return account;
    }

    public final ChapterKeysRoot g(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/purchase/book/%s/chapters/bought?token=%s", string2, string);
        ChapterKeysRoot chapterKeysRoot = null;
        try {
            chapterKeysRoot = ApiService.a(this.a(HttpRequest.get(string3)), ChapterKeysRoot.class);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return chapterKeysRoot;
    }

    public final PostPublish g(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("block", string4);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string5));
            httpRequest.form(hashMap);
            PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var11_9) {
            var11_9.printStackTrace();
            throw var11_9.getCause();
        }
    }

    public final TocSourceRoot g(String string) {
        String string2 = f + String.format(Locale.CHINA, "/aggregation-source/by-book?book=%s&v=5", string);
        try {
            TocSourceRoot tocSourceRoot = ApiService.a(this.a(HttpRequest.get(string2)), TocSourceRoot.class);
            return tocSourceRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final UGCBookListRoot g(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/user/posted-book-list?token=%s&start=%d", arrobject)).toString();
        try {
            UGCBookListRoot uGCBookListRoot = ApiService.a(this.a(HttpRequest.get(string2)), UGCBookListRoot.class);
            return uGCBookListRoot;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final FollowingsResult h(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/followings/%s", string);
        try {
            FollowingsResult followingsResult = ApiService.a(this.a(HttpRequest.get(string2)), FollowingsResult.class);
            return followingsResult;
        } catch (Exception var3_4) {
            return null;
        }
    }

    public final MysteryBookList h() {
        String string = f + "/book/mystery-box";
        try {
            MysteryBookList mysteryBookList = ApiService.a(this.a(HttpRequest.get(string)), MysteryBookList.class);
            return mysteryBookList;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final PostPublish h(String string, String string2, String string3) {
        String string4 = f + "/post/help";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var9_8) {
            var9_8.printStackTrace();
            throw var9_8.getCause();
        }
    }

    public final ResultStatus h(String string, String string2) {
        String string3 = f + "/user/follow";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("followeeId", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final UGCBookListRoot h(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/user/draft-book-list?token=%s&start=%d", arrobject)).toString();
        try {
            UGCBookListRoot uGCBookListRoot = ApiService.a(this.a(HttpRequest.get(string2)), UGCBookListRoot.class);
            return uGCBookListRoot;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final FollowersResult i(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/followers/%s", string);
        try {
            FollowersResult followersResult = ApiService.a(this.a(HttpRequest.get(string2)), FollowersResult.class);
            return followersResult;
        } catch (Exception var3_4) {
            return null;
        }
    }

    public final PostPublish i(String string, String string2, String string3) {
        String string4 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("content", string3);
        hashMap.put("game", string2);
        hashMap.put("block", "game");
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var10_8) {
            var10_8.printStackTrace();
            throw var10_8.getCause();
        }
    }

    public final RecommendUgcRoot i(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, 3};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/book-list/%s/recommend?limit=%s", arrobject)).toString();
        try {
            RecommendUgcRoot recommendUgcRoot = ApiService.a(this.a(HttpRequest.get(string2)), RecommendUgcRoot.class);
            return recommendUgcRoot;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final ResultStatus i(String string, String string2) {
        String string3 = f + "/user/unfollow";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("followeeId", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final HotTweetResult j(String string) {
        HttpRequest httpRequest;
        String string2 = f + "/user/twitter/hottweets";
        if (string != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string);
            httpRequest = HttpRequest.get(string2, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string2);
        }
        try {
            return ApiService.a(this.a(httpRequest), HotTweetResult.class);
        } catch (Exception var6_6) {
            Log.e(b, var6_6.getMessage());
            return null;
        }
    }

    public final PostPublish j(String string, String string2) {
        String string3 = f + "/user/twitter";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("content", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final ResultStatus j(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/%s/comment", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string2);
        hashMap.put("content", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var8_8) {
            var8_8.printStackTrace();
            throw var8_8.getCause();
        }
    }

    public final SplashRoot j() {
        String string = f + "/splashes/android";
        try {
            SplashRoot splashRoot = ApiService.a(this.a(HttpRequest.get(string)), SplashRoot.class);
            return splashRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final PostPublish k(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/twitter/delete/%s", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var6_7) {
            return null;
        }
    }

    public final TopicSummary k() {
        String string = f + "/post/post-count";
        try {
            TopicSummary topicSummary = ApiService.a(this.a(HttpRequest.get(string)), TopicSummary.class);
            return topicSummary;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final TweetsResult k(String string) {
        HttpRequest httpRequest;
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{am.e().getUser().getId()};
        String string2 = stringBuilder.append(String.format(Locale.CHINA, "/user/%s/twitter", arrobject)).toString();
        if (string != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string);
            httpRequest = HttpRequest.get(string2, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string2);
        }
        try {
            return ApiService.a(this.a(httpRequest), TweetsResult.class);
        } catch (Exception var8_8) {
            return null;
        }
    }

    public final VoteResult k(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/%s/vote", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string2);
        hashMap.put("n", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            VoteResult voteResult = ApiService.a(httpRequest, VoteResult.class);
            return voteResult;
        } catch (HttpRequest.HttpRequestException var8_8) {
            var8_8.printStackTrace();
            throw var8_8.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final PostDetailComment l(String string, String string2) {
        HttpRequest httpRequest;
        String string3 = f + String.format(Locale.CHINA, "/user/twitter/%s/comments", string);
        if (string2 != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string2);
            httpRequest = HttpRequest.get(string3, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string3);
        }
        try {
            return ApiService.a(this.a(httpRequest), PostDetailComment.class);
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final ResultStatus l(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/%s/comment/%s/report", string, string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("reason", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var7_8) {
            var7_8.printStackTrace();
            throw var7_8.getCause();
        }
    }

    public final ShelfMsgRoot l() {
        String string = f + "/notification/shelfMessage?platform=android";
        try {
            ShelfMsgRoot shelfMsgRoot = ApiService.a(this.a(HttpRequest.get(string)), ShelfMsgRoot.class);
            return shelfMsgRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final TweetResult l(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/twitter/%s", string);
        try {
            TweetResult tweetResult = ApiService.a(this.a(HttpRequest.get(string2)), TweetResult.class);
            return tweetResult;
        } catch (Exception var3_4) {
            return null;
        }
    }

    public final PostPublish m(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/twitter/retweet/%s", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            PostPublish postPublish = ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var6_7) {
            return null;
        }
    }

    public final ResultStatus m(String string, String string2, String string3) {
        String string4 = f + String.format(Locale.CHINA, "/post/review/%s/helpful", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("is_helpful", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var8_8) {
            var8_8.printStackTrace();
            throw var8_8.getCause();
        }
    }

    public final UserInfoResult m(String string) {
        String string2 = f + String.format(Locale.CHINA, "/user/info/%s", string);
        try {
            UserInfoResult userInfoResult = ApiService.a(this.a(HttpRequest.get(string2)), UserInfoResult.class);
            return userInfoResult;
        } catch (Exception var3_4) {
            return null;
        }
    }

    public final VipPlan m() {
        String string = f + "/purchase/vip/plan";
        try {
            VipPlan vipPlan = ApiService.a(this.a(HttpRequest.get(string)), VipPlan.class);
            return vipPlan;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final FollowResult n(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/user/%s/has/followed/%s", string, string2);
        try {
            FollowResult followResult = ApiService.a(this.b(HttpRequest.get(string3)), FollowResult.class);
            return followResult;
        } catch (Exception var4_5) {
            return null;
        }
    }

    public final ResultStatus n(String string, String string2, String string3) {
        String string4 = f + "/statistics/read";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("date", string);
        hashMap.put("uuid", string2);
        hashMap.put("book", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var9_8) {
            var9_8.printStackTrace();
            throw var9_8.getCause();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final List<BookSummary> n(String string) {
        SearchResultRoot searchResultRoot;
        ArrayList<BookSummary> arrayList = new ArrayList<BookSummary>();
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2);
        try {
            searchResultRoot = ApiService.a(this.a(HttpRequest.get(string3)), SearchResultRoot.class);
            if (searchResultRoot == null) return arrayList;
        } catch (HttpRequest.HttpRequestException var5_7) {
            throw var5_7.getCause();
        }
        return searchResultRoot.getBooks();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ResultStatus o(String var1_1, String var2_2, String var3_3) {
        var4_4 = ApiService.f + String.format(Locale.CHINA, "/post/%s/comment/%s/like", var1_1, var2_2);
        try {
            var6_5 = HttpRequest.post(var4_4);
            var7_6 = new HashMap<String, String>();
            var7_6.put("token", var3_3);
            var9_7 = this.b(var6_5);
            var9_7.a(var7_6);
            return (ResultStatus) ApiService.a(var9_7, ResultStatus.class);
        } catch (IOException var5_9) {
        }
        **GOTO lbl -1000
        catch(HttpRequest.HttpRequestException var5_11){
        }
        lbl - 1000: // 2 sources:
        {
            var5_10.printStackTrace();
            return null;
        }
    }

    public final SearchResultRoot o(String string) {
        String string2 = am.e(string);
        String string3 = f + "/book/accurate-search?author=" + string2;
        try {
            SearchResultRoot searchResultRoot = ApiService.a(this.a(HttpRequest.get(string3)), SearchResultRoot.class);
            return searchResultRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final TweetsResult o(String string, String string2) {
        HttpRequest httpRequest;
        String string3 = f + String.format(Locale.CHINA, "/user/%s/twitter", string);
        if (string2 != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string2);
            httpRequest = HttpRequest.get(string3, hashMap, false);
        } else {
            httpRequest = HttpRequest.get(string3);
        }
        try {
            return ApiService.a(this.a(httpRequest), TweetsResult.class);
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final UgcFilterRoot o() {
        String string = f + "/book-list/tagType";
        try {
            UgcFilterRoot ugcFilterRoot = ApiService.a(this.a(HttpRequest.get(string)), UgcFilterRoot.class);
            return ugcFilterRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final ChapterRoot p(String string, String string2) {
        String string3 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s", string2, am.e(string));
        try {
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
        } catch (HttpRequest.HttpRequestException var4_11) {
            throw var4_11.getCause();
        }
    }

    public final ResultServer p(String string, String string2, String string3) {
        String string4 = f + "/statistics/install";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("platform", "android");
        hashMap.put("device-id", string);
        hashMap.put("recommended", string2);
        hashMap.put("op", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string4));
            httpRequest.form(hashMap);
            ResultServer resultServer = ApiService.a(httpRequest, ResultServer.class);
            return resultServer;
        } catch (Exception var10_8) {
            return null;
        }
    }

    public final SearchResultRoot p(String string) {
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2) + "&onlyTitle=true";
        try {
            SearchResultRoot searchResultRoot = ApiService.a(this.a(HttpRequest.get(string3)), SearchResultRoot.class);
            return searchResultRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final ReviewHistory q(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/review/one-by-book-user?book=%s&token=%s", string, string2);
        try {
            ReviewHistory reviewHistory = ApiService.a(this.a(HttpRequest.get(string3)), ReviewHistory.class);
            return reviewHistory;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final SearchPromRoot q(String string) {
        String string2 = am.e(string);
        String string3 = f + String.format(Locale.CHINA, "/book/search/%s/chinese-all-promo", string2);
        try {
            SearchPromRoot searchPromRoot = ApiService.a(this.a(HttpRequest.get(string3)), SearchPromRoot.class);
            return searchPromRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final BookInfo r(String string) {
        String string2 = f + String.format(Locale.CHINA, "/book/%s", string);
        try {
            BookInfo bookInfo = ApiService.a(this.a(HttpRequest.get(string2)), BookInfo.class);
            return bookInfo;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final NotificationRoot r(String string, String string2) {
        String string3 = com.clilystudio.netbook.hpay100.a.a.Q(string2) ? String.format(Locale.CHINA, "/user/notification/important?token=%s", string) : String.format(Locale.CHINA, "/user/notification/important?token=%s&startTime=%s", string, string2);
        String string4 = f + string3;
        try {
            return ApiService.a(this.a(HttpRequest.get(string4)), NotificationRoot.class);
        } catch (HttpRequest.HttpRequestException var5_6) {
            throw var5_6.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final NotificationRoot s(String string, String string2) {
        String string3 = com.clilystudio.netbook.hpay100.a.a.Q(string2) ? String.format(Locale.CHINA, "/user/notification/unimportant?token=%s", string) : String.format(Locale.CHINA, "/user/notification/unimportant?token=%s&startTime=%s", string, string2);
        String string4 = f + string3;
        try {
            return ApiService.a(this.a(HttpRequest.get(string4)), NotificationRoot.class);
        } catch (HttpRequest.HttpRequestException var5_6) {
            throw var5_6.getCause();
        }
    }

    public final SgTocRoot s(String string) {
        String string2 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s", string);
        try {
            SgTocRoot sgTocRoot = ApiService.a(this.a(HttpRequest.get(string2), 7), SgTocRoot.class);
            return sgTocRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final IKanshuUrlResult t() {
        String string = f + "/promotion/17k";
        try {
            IKanshuUrlResult iKanshuUrlResult = ApiService.a(this.a(HttpRequest.get(string)), IKanshuUrlResult.class);
            return iKanshuUrlResult;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final PurchaseVipResult t(String string, String string2) {
        String string3 = f + "/purchase/vip/plan";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("plan", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            PurchaseVipResult purchaseVipResult = ApiService.a(httpRequest, PurchaseVipResult.class);
            return purchaseVipResult;
        } catch (HttpRequest.HttpRequestException var7_7) {
            throw var7_7.getCause();
        }
    }

    public final LdTocRoot t(String string) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000", string);
        try {
            LdTocRoot ldTocRoot = ApiService.a(this.a(HttpRequest.get(string2), 8), LdTocRoot.class);
            return ldTocRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final BookTopRoot u() {
        String string = f + "/favorite/book/top";
        try {
            BookTopRoot bookTopRoot = ApiService.a(this.a(HttpRequest.get(string)), BookTopRoot.class);
            return bookTopRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final ChangeNickNameRoot u(String string, String string2) {
        String string3 = f + "/user/change-nickname";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("nickname", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ChangeNickNameRoot changeNickNameRoot = ApiService.a(httpRequest, ChangeNickNameRoot.class);
            return changeNickNameRoot;
        } catch (HttpRequest.HttpRequestException var7_7) {
            var7_7.printStackTrace();
            throw var7_7.getCause();
        }
    }

    public final String u(String string) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0", string);
        try {
            String string3 = this.a(HttpRequest.get(string2), 8).d();
            return string3;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final ChangeGenderRoot v(String string, String string2) {
        String string3 = f + "/user/change-gender";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("gender", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ChangeGenderRoot changeGenderRoot = ApiService.a(httpRequest, ChangeGenderRoot.class);
            return changeGenderRoot;
        } catch (HttpRequest.HttpRequestException var7_7) {
            var7_7.printStackTrace();
            throw var7_7.getCause();
        }
    }

    public final EsTocRoot v(String string) {
        String[] arrstring = com.clilystudio.netbook.hpay100.a.a.O(string);
        if (arrstring == null) {
            return null;
        }
        Object[] arrobject = new Object[]{arrstring[0], arrstring[1]};
        String string2 = String.format(Locale.CHINA, "http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_", arrobject);
        try {
            EsTocRoot esTocRoot = ApiService.a(this.a(HttpRequest.get(string2), 3), EsTocRoot.class);
            return esTocRoot;
        } catch (HttpRequest.HttpRequestException var5_6) {
            throw var5_6.getCause();
        }
    }

    public final int w(String string) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s", string);
        try {
            int n = SsChapterJson.getTocCount(this.a(HttpRequest.get(string2), 6).d());
            return n;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final ResultStatus w(String string, String string2) {
        String string3 = f + String.format(Locale.CHINA, "/post/%s/report", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("reason", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var6_7) {
            var6_7.printStackTrace();
            throw var6_7.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final ChapterRoot x(String string) {
        String string2 = String.format(Locale.CHINA, "/chapter/%s", am.e(string));
        String string3 = h + string2;
        String string4 = string3 + "?" + com.clilystudio.netbook.hpay100.a.a.A(string2);
        try {
            HttpRequest httpRequest = HttpRequest.get(string4);
            if (com.clilystudio.netbook.api.e.a()) {
                com.clilystudio.netbook.api.e.a(httpRequest);
            }
            HttpRequest httpRequest2 = this.b(httpRequest);
            boolean bl = httpRequest2.c();
            int n = httpRequest2.b();
            if (!bl && n >= 500) {
                return ApiService.w();
            }
            ChapterRoot chapterRoot = ApiService.a(httpRequest2, ChapterRoot.class);
            if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
            {
                chapterRoot.getChapter().setLink(string);
                return chapterRoot;
            }
        } catch (HttpRequest.HttpRequestException var5_10) {
            throw var5_10.getCause();
        }
    }

    public final ResultStatus x(String string, String string2) {
        String string3 = f + "/user/add-exp";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("type", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var7_7) {
            var7_7.printStackTrace();
            throw var7_7.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final ChapterRoot y(String string) {
        String string2 = am.e(string);
        String string3 = g + String.format(Locale.CHINA, "/chapter/%s", string2);
        try {
            HttpRequest httpRequest = HttpRequest.get(string3);
            if (com.clilystudio.netbook.api.e.a()) {
                com.clilystudio.netbook.api.e.a(httpRequest);
            }
            HttpRequest httpRequest2 = this.b(httpRequest);
            boolean bl = httpRequest2.c();
            int n = httpRequest2.b();
            if (!bl && n >= 500) {
                return ApiService.w();
            }
            ChapterRoot chapterRoot = ApiService.a(httpRequest2, ChapterRoot.class);
            if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
            {
                chapterRoot.getChapter().setLink(string);
                return chapterRoot;
            }
        } catch (HttpRequest.HttpRequestException var4_9) {
            throw var4_9.getCause();
        }
    }

    public final ResultStatus y(String string, String string2) {
        String string3 = f + "/user/collected-post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("post", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var7_7) {
            var7_7.printStackTrace();
            throw var7_7.getCause();
        }
    }

    public final BookRankDetailRoot z(String string) {
        String string2 = f + String.format(Locale.CHINA, "/ranking/%s", string);
        try {
            BookRankDetailRoot bookRankDetailRoot = ApiService.a(this.a(HttpRequest.get(string2)), BookRankDetailRoot.class);
            return bookRankDetailRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final ResultStatus z(String string, String string2) {
        String string3 = f + "/user/collected-post/remove";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("post", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.post(string3));
            httpRequest.form(hashMap);
            ResultStatus resultStatus = ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var7_7) {
            var7_7.printStackTrace();
            throw var7_7.getCause();
        }
    }

    static class JsonException extends IOException {
        private static final long serialVersionUID = -8247637549733902252L;

        public JsonException(JsonParseException jsonParseException) {
            super(jsonParseException.getMessage());
            this.initCause(jsonParseException);
        }
    }
}
