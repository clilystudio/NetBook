package com.clilystudio.netbook.api;

import android.net.Uri;
import com.clilystudio.netbook.am;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.*;
import com.clilystudio.netbook.model.mixtoc.EsChapterRoot;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.LdChapterRoot;
import com.clilystudio.netbook.model.mixtoc.LdTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgChapterRoot;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsChapterJson;
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import com.github.kevinsawicki.http.HttpRequest;
import com.github.kevinsawicki.http.HttpRequest.HttpRequestException;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.umeng.a.b;
import com.xiaomi.mistatistic.sdk.c;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class ApiService {
    private static final String b;
    private static final String e;
    private static final Gson l;
    public static String a;
    private static String d;
    private static String f;
    private static String g;
    private static String h;
    private static String i;
    private static String j;
    private static String k;

    /*
     * Enabled aggressive block sorting
     */
    static {
        b = ApiService.class.getSimpleName();
        d = "zhuishushenqi.com";
        e = "http://api." + d;
        String string = "localServer".equals("Official") ? "http://192.168.88.99:8080" : ("macServer".equals("Official") ? "http://192.168.88.19:8080" : ("frullyServer".equals("Official") ? "http://192.168.88.240:8080" : e));
        f = string;
        g = "http://chapter." + d;
        h = "http://chapter2." + d;
        a = "http://statics." + d;
        i = "http://m.baidu.com/s?word=";
        j = "http://tieba.baidu.com/f?kw=";
        k = "http://m.sm.cn/s?q=";
        l = new GsonBuilder().registerTypeAdapter(Date.class, new a()).create();
    }

    private final f c;

    public ApiService(f f2) {
        c.a(new com.xiaomi.mistatistic.sdk.a.a());
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
        BufferedReader bufferedReader = httpRequest.e();
        try {
            V v = l.fromJson((Reader) bufferedReader, class_);
            return v;
        } catch (JsonParseException var5_4) {
            throw new JsonException(var5_4);
        } finally {
            bufferedReader.close();
        }
    }

    public static String a(String string, int n) {
        Object[] arrobject = new Object[]{string, n};
        return String.format("http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d", arrobject);
    }

    public static String a(String string, int n, String string2) {
        String string3 = am.e((String) string2);
        String[] arrstring = com.clilystudio.netbook.hpay100.a.a.O(string);
        if (arrstring != null) {
            Object[] arrobject = new Object[]{arrstring[0], arrstring[1], n, string3};
            return String.format("http://book.easou.com/ta/show.m?gid=%s&nid=%s&st=%d&cu=%s", arrobject);
        }
        return null;
    }

    public static String a(String string, String string2, String string3, String string4, String string5) {
        return String.format("http://novel.mse.sogou.com/content.php?md=%s&bid=%s&cmd=%s&url=%s&chapter=%s&page=1&referred=detail", string, string2, string3, string4, string5);
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
    private static void a(String string, long l, int n, String string2) {
        long l2;
        try {
            l2 = new Date().getTime();
            if (l2 <= l) return;
        } catch (Exception var5_5) {
            return;
        }
        c.a(new com.xiaomi.mistatistic.sdk.b.a(string, l2 - l, n, string2));
    }

    private static String ad(String string) {
        return string + "&distillate=true";
    }

    public static String b(String string, int n, String string2) {
        String string3 = am.e((String) am.e((String) string2));
        Object[] arrobject = new Object[]{string, n, string3};
        return String.format("http://book.soso.com/#!/detail/%s/%d/%s", arrobject);
    }

    private static <V> List<V> b(HttpRequest httpRequest, Class<V> class_) throws JsonException {
        ArrayList<V> arrayList;
        BufferedReader bufferedReader = httpRequest.e();
        try {
            JsonArray jsonArray = new JsonParser().parse(bufferedReader).getAsJsonArray();
            arrayList = new ArrayList<V>();
            for (JsonElement jsonElement : jsonArray) {
                arrayList.add(l.fromJson(jsonElement, class_));
            }
        } catch (JsonParseException var5_7) {
            var5_7.printStackTrace();
            throw new JsonException(var5_7);
        } finally{
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
        b.a(MyApplication.a(), "server_error");
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
        if (e.a()) {
            e.a(httpRequest);
        }
        try {
            boolean bl = this.b(httpRequest).c();
            ApiService.a(httpRequest.a().toString(), l, httpRequest.b(), "");
            if (bl) return httpRequest;
        } catch (HttpRequest.HttpRequestException var4_4) {
            ApiService.a(httpRequest.a().toString(), l, httpRequest.b(), var4_4.getClass().getName());
            ApiService.v();
            throw var4_4;
        }
        throw new IOException("Unexpected response code: " + httpRequest.b());
    }

    private HttpRequest a(HttpRequest httpRequest, int n) {
        try {
            if (!this.b(httpRequest, n).c()) {
                throw new IOException("Unexpected response code: " + httpRequest.b());
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
            var4_3 = this.b(HttpRequest.b(ApiService.f + var1_1));
            var4_3.a(var2_2);
            return (Root) ApiService.a(var4_3, Root.class);
        } catch (IOException var3_5) {
        }
        **GOTO lbl -1000
        catch(HttpRequest.HttpRequestException var3_7){
        }
        lbl - 1000: // 2 sources:
        {
            var3_6.printStackTrace();
            return null;
        }
    }

    private <V> V a(String string, Class<V> class_) {
        V v;
        try {
            v = ApiService.a(this.a(HttpRequest.a(f + string)), class_);
        } catch (IOException var3_4) {
            var3_4.printStackTrace();
            return null;
        }
        return v;
    }

    /*
     * Enabled aggressive block sorting
     */
    private HttpRequest b(HttpRequest httpRequest) {
        httpRequest.b(15000).a(15000);
        f f2 = this.c;
        String string = "1".equals(b.b(MyApplication.a(), "ua-toggle")) ? f2.b() : "";
        httpRequest.a(string);
        httpRequest.append("X-User-Agent", this.c.b());
        httpRequest.append("X-Device-Id", am.h());
        return httpRequest;
    }

    private HttpRequest b(HttpRequest httpRequest, int n) {
        httpRequest.b(15000).a(15000);
        httpRequest.a(this.c.a(n));
        if (n == 6) {
            httpRequest.b("http://bookshelf.html5.qq.com/page?t=pad");
        }
        return httpRequest;
    }

    public final BookShelfSyncTime A(String string) {
        String string2 = f + String.format("/user/bookshelf-updated?token=%s", string);
        try {
            BookShelfSyncTime bookShelfSyncTime = (BookShelfSyncTime) ApiService.a(this.a(HttpRequest.a(string2)), BookShelfSyncTime.class);
            return bookShelfSyncTime;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final CommentDetail A(String string, String string2) {
        String string3 = f + String.format("/post/%s/comment/%s", string, string2);
        try {
            CommentDetail commentDetail = (CommentDetail) ApiService.a(this.a(HttpRequest.a(string3)), CommentDetail.class);
            return commentDetail;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final RemoteBookShelf B(String string) {
        String string2 = f + String.format("/user/bookshelf?token=%s", string);
        try {
            RemoteBookShelf remoteBookShelf = (RemoteBookShelf) ApiService.a(this.a(HttpRequest.a(string2)), RemoteBookShelf.class);
            return remoteBookShelf;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final void B(String string, String string2) {
        String string3 = f + String.format("/recommend-app/android/%s/download", string);
        try {
            HttpRequest httpRequest = HttpRequest.b(string3);
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("token", string2);
            HttpRequest httpRequest2 = this.b(httpRequest);
            httpRequest2.a(hashMap);
            ApiService.a(httpRequest2, ResultStatus.class);
            return;
        } catch (HttpRequest.HttpRequestException var4_7) {
            var4_7.printStackTrace();
            throw var4_7.getCause();
        }
    }

    public final BookReviewRoot C(String string) {
        String string2 = f + String.format("/post/review/best-by-book?book=%s", string);
        try {
            BookReviewRoot bookReviewRoot = (BookReviewRoot) ApiService.a(this.a(HttpRequest.a(string2)), BookReviewRoot.class);
            return bookReviewRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final UGCBookDetailRoot C(String string, String string2) {
        String string3 = f + String.format("/book-list/%s/draft?token=%s", string2, string);
        try {
            UGCBookDetailRoot uGCBookDetailRoot = (UGCBookDetailRoot) ApiService.a(this.a(HttpRequest.a(string3)), UGCBookDetailRoot.class);
            return uGCBookDetailRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
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
        try {
            var5_4 = this.b(HttpRequest.b(var3_3));
            var6_5 = new HashMap<String, String>();
            var6_5.put("token", var1_1);
            var6_5.put("bookList", var2_2);
            var5_4.a(var6_5);
            return (ResultStatus) ApiService.a(var5_4, ResultStatus.class);
        } catch (IOException var4_7) {
        }
        **GOTO lbl -1000
        catch(HttpRequest.HttpRequestException var4_9){
        }
        lbl - 1000: // 2 sources:
        {
            var4_8.printStackTrace();
            return null;
        }
    }

    public final ReviewResult D(String string) {
        String string2 = f + String.format("/post/review/%s", string);
        try {
            ReviewResult reviewResult = (ReviewResult) ApiService.a(this.a(HttpRequest.a(string2)), ReviewResult.class);
            return reviewResult;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final BookHelpResult E(String string) {
        String string2 = f + String.format("/post/help/%s", string);
        try {
            BookHelpResult bookHelpResult = (BookHelpResult) ApiService.a(this.a(HttpRequest.a(string2)), BookHelpResult.class);
            return bookHelpResult;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final ResultStatus E(String string, String string2) {
        String string3 = f + "/user/collected-book-list/remove";
        try {
            HttpRequest httpRequest = HttpRequest.b(string3);
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("token", string);
            hashMap.put("bookList", string2);
            HttpRequest httpRequest2 = this.b(httpRequest);
            httpRequest2.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest2, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var4_8) {
            throw var4_8.getCause();
        }
    }

    public final GirlTopicResult F(String string) {
        String string2 = f + String.format("/post/%s", string);
        try {
            GirlTopicResult girlTopicResult = (GirlTopicResult) ApiService.a(this.a(HttpRequest.a(string2)), GirlTopicResult.class);
            return girlTopicResult;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final Root F(String string, String string2) {
        String string3 = f + String.format("/post/%s/like", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        try {
            HttpRequest httpRequest = HttpRequest.b(string3);
            hashMap.put("token", string2);
            HttpRequest httpRequest2 = this.b(httpRequest);
            httpRequest2.a(hashMap);
            Root root = (Root) ApiService.a(httpRequest2, Root.class);
            return root;
        } catch (HttpRequest.HttpRequestException var5_8) {
            throw var5_8.getCause();
        }
    }

    public final NotifCountRoot G(String string) {
        return (NotifCountRoot) this.a(String.format("/user/notification/count?token=%s", string), NotifCountRoot.class);
    }

    public final SyncUploadResult G(String string, String string2) {
        String string3 = f + "/user/bookshelf";
        try {
            HttpRequest httpRequest = HttpRequest.c((CharSequence) string3);
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("token", string);
            hashMap.put("books", string2);
            HttpRequest httpRequest2 = this.b(httpRequest);
            httpRequest2.a(hashMap);
            SyncUploadResult syncUploadResult = (SyncUploadResult) ApiService.a(httpRequest2, SyncUploadResult.class);
            return syncUploadResult;
        } catch (HttpRequest.HttpRequestException var4_8) {
            var4_8.printStackTrace();
            return null;
        }
    }

    public final PostDetail H(String string) {
        String string2 = f + String.format("/post/%s", string);
        try {
            PostDetail postDetail = (PostDetail) ApiService.a(this.a(HttpRequest.a(string2)), PostDetail.class);
            return postDetail;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final SyncUploadResult H(String string, String string2) {
        String string3 = f + "/user/feedingBooks";
        try {
            HttpRequest httpRequest = HttpRequest.c((CharSequence) string3);
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("token", string);
            hashMap.put("books", string2);
            HttpRequest httpRequest2 = this.b(httpRequest);
            httpRequest2.a(hashMap);
            SyncUploadResult syncUploadResult = (SyncUploadResult) ApiService.a(httpRequest2, SyncUploadResult.class);
            return syncUploadResult;
        } catch (HttpRequest.HttpRequestException var4_8) {
            var4_8.printStackTrace();
            return null;
        }
    }

    public final SyncUploadResult I(String string, String string2) {
        String string3 = f + String.format("/user/bookshelf?token=%s&books=%s", string, string2);
        try {
            SyncUploadResult syncUploadResult = (SyncUploadResult) ApiService.a(this.a(HttpRequest.d((CharSequence) string3)), SyncUploadResult.class);
            return syncUploadResult;
        } catch (HttpRequest.HttpRequestException var4_5) {
            var4_5.printStackTrace();
            return null;
        }
    }

    public final TopicCount I(String string) {
        String string2 = f + String.format("/post/total-count?books=%s", string);
        try {
            TopicCount topicCount = (TopicCount) ApiService.a(this.a(HttpRequest.a(string2)), TopicCount.class);
            return topicCount;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final SyncUploadResult J(String string, String string2) {
        String string3 = f + String.format("/user/feedingBooks?token=%s&books=%s", string, string2);
        try {
            SyncUploadResult syncUploadResult = (SyncUploadResult) ApiService.a(this.a(HttpRequest.d((CharSequence) string3)), SyncUploadResult.class);
            return syncUploadResult;
        } catch (HttpRequest.HttpRequestException var4_5) {
            var4_5.printStackTrace();
            return null;
        }
    }

    public final UserInfo K(String string) {
        String string2 = f + String.format("/user/detail-info?token=%s", string);
        try {
            UserInfo userInfo = (UserInfo) ApiService.a(this.a(HttpRequest.a(string2)), UserInfo.class);
            return userInfo;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
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
        String string2 = am.e((String) string);
        String string3 = f + String.format("/book/auto-complete?query=%s", string2);
        try {
            AutoCompleteRoot autoCompleteRoot = (AutoCompleteRoot) ApiService.a(this.a(HttpRequest.a(string3)), AutoCompleteRoot.class);
            return autoCompleteRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final UserVipInfo O(String string) {
        String string2 = f + String.format("/user/account/vip?token=%s", string);
        try {
            UserVipInfo userVipInfo = (UserVipInfo) ApiService.a(this.a(HttpRequest.a(string2)), UserVipInfo.class);
            return userVipInfo;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final ResultStatus P(String string) {
        String string2 = f + "/user/logout";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string2));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var5_6) {
            throw var5_6.getCause();
        }
    }

    public final HotCommentRoot T(String string) {
        String string2 = f + String.format("/post/%s/comment/best", string);
        try {
            HotCommentRoot hotCommentRoot = (HotCommentRoot) ApiService.a(this.a(HttpRequest.a(string2)), HotCommentRoot.class);
            return hotCommentRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final UGCBookDetailRoot U(String string) {
        String string2 = f + String.format("/book-list/%s", string);
        try {
            UGCBookDetailRoot uGCBookDetailRoot = (UGCBookDetailRoot) ApiService.a(this.a(HttpRequest.a(string2)), UGCBookDetailRoot.class);
            return uGCBookDetailRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final RelateBookRoot V(String string) {
        String string2 = f + "/books/by-ids" + string;
        try {
            RelateBookRoot relateBookRoot = (RelateBookRoot) ApiService.a(this.a(HttpRequest.a(string2)), RelateBookRoot.class);
            return relateBookRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final ResultStatus W(String string) {
        String string2 = f + "/user/add-exp-week";
        try {
            HttpRequest httpRequest = HttpRequest.b(string2);
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("token", string);
            hashMap.put("type", "rate");
            HttpRequest httpRequest2 = this.b(httpRequest);
            httpRequest2.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest2, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var3_7) {
            throw var3_7.getCause();
        }
    }

    public final RelateBookRoot X(String string) {
        String string2 = f + String.format("/book/%s/recommend", string);
        try {
            RelateBookRoot relateBookRoot = (RelateBookRoot) ApiService.a(this.a(HttpRequest.a(string2)), RelateBookRoot.class);
            return relateBookRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final BookHelpList a(String string, String string2, int n, int n2, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format("/post/help?duration=%s&sort=%s&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string3 = ApiService.ad(string3);
        }
        try {
            BookHelpList bookHelpList = (BookHelpList) ApiService.a(this.a(HttpRequest.a(string3)), BookHelpList.class);
            return bookHelpList;
        } catch (HttpRequest.HttpRequestException var9_10) {
            throw var9_10.getCause();
        }
    }

    public final BookListRoot a(String string, String string2, String string3, String string4, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, am.e((String) string3), am.e((String) string4), n, 50};
        String string5 = stringBuilder.append(String.format("/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d", arrobject)).toString();
        try {
            BookListRoot bookListRoot = (BookListRoot) ApiService.a(this.a(HttpRequest.a(string5)), BookListRoot.class);
            return bookListRoot;
        } catch (HttpRequest.HttpRequestException var10_11) {
            throw var10_11.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final ChapterRoot a(String string, String string2, int n, String string3, String string4) {
        String string5 = am.e((String) string3);
        Object[] arrobject = new Object[]{string, string2, n, string5};
        String string6 = String.format("http://api.easou.com/api/bookapp/chapter.m?gid=%s&nid=%s&sort=%d&chapter_name=%s&cid=eef_", arrobject);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.a(string6), 3);
            boolean bl = httpRequest.c();
            int n2 = httpRequest.b();
            if (!bl && n2 >= 500) {
                return ApiService.x();
            }
            EsChapterRoot esChapterRoot = (EsChapterRoot) ApiService.a(httpRequest, EsChapterRoot.class);
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
        } catch (HttpRequest.HttpRequestException var9_17) {
            throw var9_17.getCause();
        }
    }

    public final DiscussSummaryList a(String string, String string2, int n, int n2, String string3, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string3, string, string2, n, 20};
        String string4 = stringBuilder.append(String.format("/post/by-block?block=%s&duration=%s&sort=%s&type=all&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string4 = ApiService.ad(string4);
        }
        try {
            DiscussSummaryList discussSummaryList = (DiscussSummaryList) ApiService.a(this.a(HttpRequest.a(string4)), DiscussSummaryList.class);
            return discussSummaryList;
        } catch (HttpRequest.HttpRequestException var10_11) {
            throw var10_11.getCause();
        }
    }

    public final PostPublish a(String string, String string2, String string3, String string4) {
        String string5 = f + String.format("/user/twitter/%s/reply/comment/%s", string2, string3);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("content", string4);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string5));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var9_9) {
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
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
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string6));
            httpRequest.a(hashMap);
            return (PostPublish) ApiService.a(httpRequest, PostPublish.class);
        } catch (HttpRequest.HttpRequestException var16_12) {
            var16_12.printStackTrace();
            throw var16_12.getCause();
        }
    }

    public final PurchaseChapterResult a(String string, String string2, int n) {
        String string3 = f + "/purchase/buy";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("chapter", string2);
        if (n == 1) {
            hashMap.put("type", "auto");
        }
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            PurchaseChapterResult purchaseChapterResult = (PurchaseChapterResult) ApiService.a(httpRequest, PurchaseChapterResult.class);
            return purchaseChapterResult;
        } catch (Exception var8_8) {
            return null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ResultStatus a(UGCNewCollection var1_1, String var2_2) {
        var3_3 = ApiService.f + "/book-list";
        try {
            var5_4 = this.b(HttpRequest.b(var3_3));
            var6_5 = new HashMap<String, String>();
            var6_5.put("token", var2_2);
            var6_5.put("title", var1_1.getTitle());
            var6_5.put("desc", var1_1.getDesc());
            var5_4.a(var6_5);
            var11_6 = var1_1.getBooks().iterator();
            while (var11_6.hasNext() != false) {
                var13_7 = var11_6.next();
                var5_4.a((Object) "books[]", (Object) var13_7.getId());
                var5_4.a((Object) "comments[]", (Object) var13_7.getAppendComment());
            }
            return (ResultStatus) ApiService.a(var5_4, ResultStatus.class);
        } catch (HttpRequest.HttpRequestException var4_8) {
        }
        **GOTO lbl -1000
        catch(IOException var4_10){
        }
        lbl - 1000: // 2 sources:
        {
            var4_9.printStackTrace();
            return null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ResultStatus a(UGCNewCollection var1_1, String var2_2, String var3_3) {
        var4_4 = ApiService.f + String.format("/book-list/%s", new Object[]{var3_3});
        try {
            var6_5 = this.b(HttpRequest.b(var4_4));
            var7_6 = new HashMap<String, String>();
            var7_6.put("token", var2_2);
            var7_6.put("title", var1_1.getTitle());
            var7_6.put("desc", var1_1.getDesc());
            var6_5.a(var7_6);
            var12_7 = var1_1.getBooks().iterator();
            while (var12_7.hasNext() != false) {
                var14_8 = var12_7.next();
                var6_5.a((Object) "books[]", (Object) var14_8.getId());
                var6_5.a((Object) "comments[]", (Object) var14_8.getAppendComment());
            }
            return (ResultStatus) ApiService.a(var6_5, ResultStatus.class);
        } catch (HttpRequest.HttpRequestException var5_9) {
        }
        **GOTO lbl -1000
        catch(IOException var5_11){
        }
        lbl - 1000: // 2 sources:
        {
            var5_10.printStackTrace();
            return null;
        }
    }

    public final ReviewList a(String string, String string2, String string3, int n, int n2, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string3, string2, n, 20};
        String string4 = stringBuilder.append(String.format("/post/review?duration=%s&sort=%s&type=%s&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string4 = ApiService.ad(string4);
        }
        try {
            ReviewList reviewList = (ReviewList) ApiService.a(this.a(HttpRequest.a(string4)), ReviewList.class);
            return reviewList;
        } catch (HttpRequest.HttpRequestException var10_11) {
            throw var10_11.getCause();
        }
    }

    public final Root a(String string, Uri uri) {
        String string2 = f + "/user/change-avatar";
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string2));
            httpRequest.a("token", null, null, string).a("avatar", uri.getPath(), "image/jpeg", new File(uri.getPath())).c();
            Root root = (Root) ApiService.a(httpRequest, Root.class);
            return root;
        } catch (HttpRequest.HttpRequestException var4_6) {
            var4_6.printStackTrace();
            throw var4_6.getCause();
        }
    }

    public final UGCBookListRoot a(String string, String string2, int n, int n2, String string3) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20, string3};
        String string4 = stringBuilder.append(String.format("/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s", arrobject)).toString();
        try {
            UGCBookListRoot uGCBookListRoot = (UGCBookListRoot) ApiService.a(this.a(HttpRequest.a(string4)), UGCBookListRoot.class);
            return uGCBookListRoot;
        } catch (HttpRequest.HttpRequestException var9_10) {
            throw var9_10.getCause();
        }
    }

    public final UshaqiOnlineConfig a() {
        UshaqiOnlineConfig ushaqiOnlineConfig = (UshaqiOnlineConfig) ApiService.a(this.a(HttpRequest.a("http://alertserver.ushaqi.com/server_config")), UshaqiOnlineConfig.class);
        return ushaqiOnlineConfig;
    }

    public final VoteResult a(String string, String string2, String string3) {
        String string4 = f + String.format("/user/twitter/%s/vote", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("n", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            VoteResult voteResult = (VoteResult) ApiService.a(httpRequest, VoteResult.class);
            return voteResult;
        } catch (Exception var8_8) {
            return null;
        }
    }

    public final SsTocRoot a(int n, int n2, String string) {
        Object[] arrobject = new Object[]{n, n2, string};
        String string2 = String.format("http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200", arrobject);
        try {
            SsTocRoot ssTocRoot = (SsTocRoot) ApiService.a(this.a(HttpRequest.a(string2), 6), SsTocRoot.class);
            return ssTocRoot;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final List<BookUpdate> a(List<String> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        String string = TextUtils.join((CharSequence) ",", list.toArray());
        String string2 = f + String.format("/book?view=updated&id=%s", string);
        try {
            List<BookUpdate> list2 = ApiService.b(this.a(HttpRequest.a(string2)), BookUpdate.class);
            return list2;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
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
        try {
            SearchResultRoot searchResultRoot = (SearchResultRoot) ApiService.a(this.a(HttpRequest.a(string)), SearchResultRoot.class);
            if (searchResultRoot == null) return arrayList;
            return searchResultRoot.getBooks();
        } catch (HttpRequest.HttpRequestException var6_8) {
            throw var6_8.getCause();
        }
    }

    public final ChineseAllPromRoot aa(String string) {
        String string2 = f + String.format("/book/%s/chinese-all-promo", string);
        try {
            ChineseAllPromRoot chineseAllPromRoot = (ChineseAllPromRoot) ApiService.a(this.a(HttpRequest.a(string2)), ChineseAllPromRoot.class);
            return chineseAllPromRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final BookGenderRecommend ac(String string) {
        String string2 = f + String.format("/book/recommend?gender=%s", string);
        try {
            BookGenderRecommend bookGenderRecommend = (BookGenderRecommend) ApiService.a(this.a(HttpRequest.a(string2)), BookGenderRecommend.class);
            return bookGenderRecommend;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final GirlTopicList b(String string, String string2, int n, int n2, boolean bl) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format("/post/by-block?block=girl&duration=%s&sort=%s&start=%d&limit=%d", arrobject)).toString();
        if (bl) {
            string3 = ApiService.ad(string3);
        }
        try {
            GirlTopicList girlTopicList = (GirlTopicList) ApiService.a(this.a(HttpRequest.a(string3)), GirlTopicList.class);
            return girlTopicList;
        } catch (HttpRequest.HttpRequestException var9_10) {
            throw var9_10.getCause();
        }
    }

    public final HotKeywordResult b() {
        String string = f + String.format("/book/hot-word", new Object[0]);
        try {
            HotKeywordResult hotKeywordResult = (HotKeywordResult) ApiService.a(this.a(HttpRequest.a(string)), HotKeywordResult.class);
            return hotKeywordResult;
        } catch (Exception var2_3) {
            throw var2_3.getCause();
        }
    }

    public final PostPublish b(String string, String string2, String string3) {
        String string4 = f + "/user/twitter/article";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (IOException var9_8) {
            return null;
        }
    }

    public final PostPublish b(String string, String string2, String string3, String string4) {
        String string5 = f + String.format("/user/twitter/%s/comment/%s/report", string2, string3);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("reason", string4);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string5));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (IOException var9_9) {
            return null;
        }
    }

    public final PostPublish b(String string, String string2, String string3, String string4, String string5) {
        String string6 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("book", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        hashMap.put("votes", string5);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string6));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var13_10) {
            var13_10.printStackTrace();
            throw var13_10.getCause();
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ResultStatus b(UGCNewCollection var1_1, String var2_2) {
        var3_3 = ApiService.f + "/book-list/draft";
        try {
            var5_4 = this.b(HttpRequest.b(var3_3));
            var6_5 = new HashMap<String, String>();
            var6_5.put("token", var2_2);
            var6_5.put("title", var1_1.getTitle());
            var6_5.put("desc", var1_1.getDesc());
            var5_4.a(var6_5);
            var11_6 = var1_1.getBooks().iterator();
            while (var11_6.hasNext() != false) {
                var13_7 = var11_6.next();
                var5_4.a((Object) "books[]", (Object) var13_7.getId());
                var5_4.a((Object) "comments[]", (Object) var13_7.getAppendComment());
            }
            return (ResultStatus) ApiService.a(var5_4, ResultStatus.class);
        } catch (HttpRequest.HttpRequestException var4_8) {
        }
        **GOTO lbl -1000
        catch(IOException var4_10){
        }
        lbl - 1000: // 2 sources:
        {
            var4_9.printStackTrace();
            return null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ResultStatus b(UGCNewCollection var1_1, String var2_2, String var3_3) {
        var4_4 = ApiService.f + String.format("/book-list/%s/draft", new Object[]{var3_3});
        try {
            var6_5 = this.b(HttpRequest.c((CharSequence) var4_4));
            var7_6 = new HashMap<String, String>();
            var7_6.put("token", var2_2);
            var7_6.put("title", var1_1.getTitle());
            var7_6.put("desc", var1_1.getDesc());
            var6_5.a(var7_6);
            var12_7 = var1_1.getBooks().iterator();
            while (var12_7.hasNext() != false) {
                var14_8 = var12_7.next();
                var6_5.a((Object) "books[]", (Object) var14_8.getId());
                var6_5.a((Object) "comments[]", (Object) var14_8.getAppendComment());
            }
            return (ResultStatus) ApiService.a(var6_5, ResultStatus.class);
        } catch (HttpRequest.HttpRequestException var5_9) {
        }
        **GOTO lbl -1000
        catch(IOException var5_11){
        }
        lbl - 1000: // 2 sources:
        {
            var5_10.printStackTrace();
            return null;
        }
    }

    public final Topic b(String string, String string2, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format("/post/by-book?book=%s&sort=%s&type=normal,vote&start=%d&limit=%d", arrobject)).toString();
        try {
            Topic topic = (Topic) ApiService.a(this.a(HttpRequest.a(string3)), Topic.class);
            return topic;
        } catch (HttpRequest.HttpRequestException var8_9) {
            throw var8_9.getCause();
        }
    }

    public final String b(String string, int n) {
        Object[] arrobject = new Object[]{string, n};
        String string2 = String.format("http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", arrobject);
        try {
            String string3 = SsChapterJson.getChapterUrl(this.a(HttpRequest.a(string2), 6).d());
            return string3;
        } catch (HttpRequest.HttpRequestException var5_6) {
            throw var5_6.getCause();
        }
    }

    public final BookReviewRoot c(String string, String string2, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, string2, n, 20};
        String string3 = stringBuilder.append(String.format("/post/review/by-book?book=%s&sort=%s&start=%d&limit=%d", arrobject)).toString();
        try {
            BookReviewRoot bookReviewRoot = (BookReviewRoot) ApiService.a(this.a(HttpRequest.a(string3)), BookReviewRoot.class);
            return bookReviewRoot;
        } catch (HttpRequest.HttpRequestException var8_9) {
            throw var8_9.getCause();
        }
    }

    public final BookTagRoot c(String string, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{am.e((String) string), n, 50};
        String string2 = stringBuilder.append(String.format("/book/by-tags?tags=%s&start=%d&limit=%d", arrobject)).toString();
        try {
            BookTagRoot bookTagRoot = (BookTagRoot) ApiService.a(this.a(HttpRequest.a(string2)), BookTagRoot.class);
            return bookTagRoot;
        } catch (HttpRequest.HttpRequestException var7_8) {
            throw var7_8.getCause();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final ChapterRoot c(String string, int n) {
        Object[] arrobject = new Object[]{string, n};
        String string2 = String.format("http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", arrobject);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.a(string2), 6);
            boolean bl = httpRequest.c();
            int n2 = httpRequest.b();
            if (bl) return SsChapterJson.getChapterRoot(httpRequest.d());
            if (n2 < 500) return SsChapterJson.getChapterRoot(httpRequest.d());
        } catch (HttpRequest.HttpRequestException var5_9) {
            throw var5_9.getCause();
        }
        return ApiService.x();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final ChapterRoot c(String string, int n, String string2) {
        Object[] arrobject = new Object[]{string, n, string2};
        String string3 = String.format("http://m.leidian.com/index.php?c=ebook&a=chapterData&fmt=json&bid=%s&idx=%d&tk=%s", arrobject);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.a(string3), 8);
            boolean bl = httpRequest.c();
            int n2 = httpRequest.b();
            if (!bl && n2 >= 500) {
                return ApiService.x();
            }
            LdChapterRoot ldChapterRoot = (LdChapterRoot) ApiService.a(httpRequest, LdChapterRoot.class);
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
        } catch (HttpRequest.HttpRequestException var6_15) {
            throw var6_15.getCause();
        }
    }

    public final ChargeTypes c() {
        String string = e + "/charge/product?platform=android";
        try {
            ChargeTypes chargeTypes = (ChargeTypes) ApiService.a(this.a(HttpRequest.a(string)), ChargeTypes.class);
            return chargeTypes;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final PostCountRoot c(String string) {
        String string2 = f + String.format("/post/post-count-by-book?bookId=%s", string);
        try {
            PostCountRoot postCountRoot = (PostCountRoot) ApiService.a(this.a(HttpRequest.a(string2)), PostCountRoot.class);
            return postCountRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final PostPublish c(String string, String string2, String string3) {
        String string4 = f + String.format("/user/twitter/%s/comment", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("content", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var8_8) {
            return null;
        }
    }

    public final PostPublish c(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("block", "girl");
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("votes", string4);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string5));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var12_9) {
            var12_9.printStackTrace();
            throw var12_9.getCause();
        }
    }

    public final PostPublish c(String string, String string2, String string3, String string4, String string5) {
        String string6 = f + "/user/twitter/book";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("bookId", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        hashMap.put("score", string5);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string6));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (IOException var13_10) {
            var13_10.printStackTrace();
            return null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ResultStatus c(UGCNewCollection var1_1, String var2_2, String var3_3) {
        var4_4 = ApiService.f + String.format("/book-list/%s/public", new Object[]{var3_3});
        try {
            var6_5 = this.b(HttpRequest.c((CharSequence) var4_4));
            var7_6 = new HashMap<String, String>();
            var7_6.put("token", var2_2);
            var7_6.put("title", var1_1.getTitle());
            var7_6.put("desc", var1_1.getDesc());
            var6_5.a(var7_6);
            var12_7 = var1_1.getBooks().iterator();
            while (var12_7.hasNext() != false) {
                var14_8 = var12_7.next();
                var6_5.a((Object) "books[]", (Object) var14_8.getId());
                var6_5.a((Object) "comments[]", (Object) var14_8.getAppendComment());
            }
            return (ResultStatus) ApiService.a(var6_5, ResultStatus.class);
        } catch (HttpRequest.HttpRequestException var5_9) {
        }
        **GOTO lbl -1000
        catch(IOException var5_11){
        }
        lbl - 1000: // 2 sources:
        {
            var5_10.printStackTrace();
            return null;
        }
    }

    public final BookRankRoot d() {
        String string = f + "/ranking/gender";
        try {
            BookRankRoot bookRankRoot = (BookRankRoot) ApiService.a(this.a(HttpRequest.a(string)), BookRankRoot.class);
            return bookRankRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final PostPublish d(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("votes", string4);
        hashMap.put("block", "ramble");
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string5));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var12_9) {
            var12_9.printStackTrace();
            throw var12_9.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final TimelineResult d(String string, String string2, String string3) {
        HttpRequest httpRequest;
        String string4 = f + String.format("/user/twitter/timeline/%s?token=%s", string2, string);
        if (string3 != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string3);
            httpRequest = HttpRequest.a(string4, hashMap, false);
        } else {
            httpRequest = HttpRequest.a(string4);
        }
        try {
            return (TimelineResult) ApiService.a(this.a(httpRequest), TimelineResult.class);
        } catch (Exception var8_8) {
            Log.e(b, var8_8.getMessage());
            return null;
        }
    }

    public final Topic d(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format("/user/collected-post?token=%s&start=%s", arrobject)).toString();
        try {
            Topic topic = (Topic) ApiService.a(this.a(HttpRequest.a(string2)), Topic.class);
            return topic;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final List<TocSummary> d(String string) {
        String string2 = f + String.format("/toc?view=summary&book=%s", string);
        try {
            List<TocSummary> list = ApiService.b(this.a(HttpRequest.a(string2)), TocSummary.class);
            return list;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final CategoryRoot e() {
        String string = f + "/cats/lv2/statistics";
        try {
            CategoryRoot categoryRoot = (CategoryRoot) ApiService.a(this.a(HttpRequest.a(string)), CategoryRoot.class);
            return categoryRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final DeleteResult e(String string, String string2) {
        String string3 = e + String.format("/charge/order/%s?token=%s", string, string2);
        try {
            DeleteResult deleteResult = (DeleteResult) ApiService.a(this.a(HttpRequest.d((CharSequence) string3)), DeleteResult.class);
            return deleteResult;
        } catch (Exception var4_5) {
            return null;
        }
    }

    public final PostDetailComment e(String string, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n, 30};
        String string2 = stringBuilder.append(String.format("/post/%s/comment?start=%d&limit=%d", arrobject)).toString();
        try {
            PostDetailComment postDetailComment = (PostDetailComment) ApiService.a(this.a(HttpRequest.a(string2)), PostDetailComment.class);
            return postDetailComment;
        } catch (HttpRequest.HttpRequestException var7_8) {
            throw var7_8.getCause();
        }
    }

    public final PostPublish e(String string, String string2, String string3) {
        String string4 = f + String.format("/user/twitter/%s/report", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("reason", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            ApiService.a(httpRequest, PostPublish.class);
            return null;
        } catch (Exception var8_7) {
            return null;
        }
    }

    public final PostPublish e(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("book", string2);
        hashMap.put("title", string3);
        hashMap.put("content", string4);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string5));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var11_9) {
            var11_9.printStackTrace();
            throw var11_9.getCause();
        }
    }

    public final Toc e(String string) {
        String string2 = f + String.format("/toc/%s?view=chapters", string);
        try {
            Toc toc = (Toc) ApiService.a(this.a(HttpRequest.a(string2)), Toc.class);
            return toc;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final Topic e(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format("/user/posted?token=%s&start=%s", arrobject)).toString();
        try {
            Topic topic = (Topic) ApiService.a(this.a(HttpRequest.a(string2)), Topic.class);
            return topic;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final BookAdd f(String string, String string2, String string3) {
        String string4 = f + "/book/add";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("title", string);
        hashMap.put("author", string2);
        hashMap.put("device", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            BookAdd bookAdd = (BookAdd) ApiService.a(httpRequest, BookAdd.class);
            return bookAdd;
        } catch (HttpRequest.HttpRequestException var9_8) {
            var9_8.printStackTrace();
            throw var9_8.getCause();
        }
    }

    public final CategoryLevelRoot f() {
        String string = f + "/cats/lv2";
        try {
            CategoryLevelRoot categoryLevelRoot = (CategoryLevelRoot) ApiService.a(this.a(HttpRequest.a(string)), CategoryLevelRoot.class);
            return categoryLevelRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final ChapterSingleKey f(String string, String string2) {
        String string3 = f + String.format("/purchase/chapter/%s/key?token=%s", string, string2);
        try {
            ChapterSingleKey chapterSingleKey = (ChapterSingleKey) ApiService.a(this.a(HttpRequest.a(string3)), ChapterSingleKey.class);
            return chapterSingleKey;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final MixTocRoot f(String string) {
        String string2 = f + String.format("/mix-toc/%s", string);
        try {
            MixTocRoot mixTocRoot = (MixTocRoot) ApiService.a(this.a(HttpRequest.a(string2)), MixTocRoot.class);
            return mixTocRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final PostDetailComment f(String string, int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n, 30};
        String string2 = stringBuilder.append(String.format("/post/review/%s/comment?start=%d&limit=%d", arrobject)).toString();
        try {
            PostDetailComment postDetailComment = (PostDetailComment) ApiService.a(this.a(HttpRequest.a(string2)), PostDetailComment.class);
            return postDetailComment;
        } catch (HttpRequest.HttpRequestException var7_8) {
            throw var7_8.getCause();
        }
    }

    public final ResultStatus f(String string, String string2, String string3, String string4) {
        String string5 = f + String.format("/post/%s/comment", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string2);
        hashMap.put("content", string3);
        hashMap.put("replyTo", string4);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string5));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var10_9) {
            var10_9.printStackTrace();
            throw var10_9.getCause();
        }
    }

    public final UGCBookListRoot f(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format("/user/collected-book-list?token=%s&start=%d", arrobject)).toString();
        try {
            UGCBookListRoot uGCBookListRoot = (UGCBookListRoot) ApiService.a(this.a(HttpRequest.a(string2)), UGCBookListRoot.class);
            return uGCBookListRoot;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final Account g(String string, String string2, String string3) {
        String string4 = f + "/user/login";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("platform_code", string);
        hashMap.put("platform_uid", string2);
        hashMap.put("platform_token", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            Account account = (Account) ApiService.a(httpRequest, Account.class);
            return account;
        } catch (HttpRequest.HttpRequestException var9_8) {
            var9_8.printStackTrace();
            throw var9_8.getCause();
        }
    }

    public final ChapterKeysRoot g(String string, String string2) {
        String string3 = f + String.format("/purchase/book/%s/chapters/bought?token=%s", string2, string);
        try {
            ChapterKeysRoot chapterKeysRoot = (ChapterKeysRoot) ApiService.a(this.a(HttpRequest.a(string3)), ChapterKeysRoot.class);
            return chapterKeysRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final MhdListRoot g() {
        try {
            MhdListRoot mhdListRoot = (MhdListRoot) ApiService.a(this.a(HttpRequest.a("http://mhjk.1391.com/comic/bigbooklist")), MhdListRoot.class);
            return mhdListRoot;
        } catch (HttpRequest.HttpRequestException var1_2) {
            throw var1_2.getCause();
        }
    }

    public final PostPublish g(String string, String string2, String string3, String string4) {
        String string5 = f + "/post";
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("title", string2);
        hashMap.put("content", string3);
        hashMap.put("block", string4);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string5));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var11_9) {
            var11_9.printStackTrace();
            throw var11_9.getCause();
        }
    }

    public final TocSourceRoot g(String string) {
        String string2 = f + String.format("/aggregation-source/by-book?book=%s&v=5", string);
        try {
            TocSourceRoot tocSourceRoot = (TocSourceRoot) ApiService.a(this.a(HttpRequest.a(string2)), TocSourceRoot.class);
            return tocSourceRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final UGCBookListRoot g(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format("/user/posted-book-list?token=%s&start=%d", arrobject)).toString();
        try {
            UGCBookListRoot uGCBookListRoot = (UGCBookListRoot) ApiService.a(this.a(HttpRequest.a(string2)), UGCBookListRoot.class);
            return uGCBookListRoot;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final FollowingsResult h(String string) {
        String string2 = f + String.format("/user/followings/%s", string);
        try {
            FollowingsResult followingsResult = (FollowingsResult) ApiService.a(this.a(HttpRequest.a(string2)), FollowingsResult.class);
            return followingsResult;
        } catch (Exception var3_4) {
            return null;
        }
    }

    public final MysteryBookList h() {
        String string = f + "/book/mystery-box";
        try {
            MysteryBookList mysteryBookList = (MysteryBookList) ApiService.a(this.a(HttpRequest.a(string)), MysteryBookList.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final UGCBookListRoot h(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, n};
        String string2 = stringBuilder.append(String.format("/user/draft-book-list?token=%s&start=%d", arrobject)).toString();
        try {
            UGCBookListRoot uGCBookListRoot = (UGCBookListRoot) ApiService.a(this.a(HttpRequest.a(string2)), UGCBookListRoot.class);
            return uGCBookListRoot;
        } catch (HttpRequest.HttpRequestException var6_7) {
            throw var6_7.getCause();
        }
    }

    public final FollowersResult i(String string) {
        String string2 = f + String.format("/user/followers/%s", string);
        try {
            FollowersResult followersResult = (FollowersResult) ApiService.a(this.a(HttpRequest.a(string2)), FollowersResult.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (HttpRequest.HttpRequestException var10_8) {
            var10_8.printStackTrace();
            throw var10_8.getCause();
        }
    }

    public final RecommendUgcRoot i(String string, int n) {
        StringBuilder stringBuilder = new StringBuilder().append(f);
        Object[] arrobject = new Object[]{string, 3};
        String string2 = stringBuilder.append(String.format("/book-list/%s/recommend?limit=%s", arrobject)).toString();
        try {
            RecommendUgcRoot recommendUgcRoot = (RecommendUgcRoot) ApiService.a(this.a(HttpRequest.a(string2)), RecommendUgcRoot.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final List<MenuAd> i() {
        String string = f + "/recommend-app/android/piority";
        try {
            List<MenuAd> list = ApiService.b(this.a(HttpRequest.a(string)), MenuAd.class);
            return list;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final HotTweetResult j(String string) {
        HttpRequest httpRequest;
        String string2 = f + "/user/twitter/hottweets";
        if (string != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string);
            httpRequest = HttpRequest.a(string2, hashMap, false);
        } else {
            httpRequest = HttpRequest.a(string2);
        }
        try {
            return (HotTweetResult) ApiService.a(this.a(httpRequest), HotTweetResult.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final ResultStatus j(String string, String string2, String string3) {
        String string4 = f + String.format("/post/%s/comment", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string2);
        hashMap.put("content", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var8_8) {
            var8_8.printStackTrace();
            throw var8_8.getCause();
        }
    }

    public final SplashRoot j() {
        String string = f + "/splashes/android";
        try {
            SplashRoot splashRoot = (SplashRoot) ApiService.a(this.a(HttpRequest.a(string)), SplashRoot.class);
            return splashRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final PostPublish k(String string, String string2) {
        String string3 = f + String.format("/user/twitter/delete/%s", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var6_7) {
            return null;
        }
    }

    public final TopicSummary k() {
        String string = f + "/post/post-count";
        try {
            TopicSummary topicSummary = (TopicSummary) ApiService.a(this.a(HttpRequest.a(string)), TopicSummary.class);
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
        String string2 = stringBuilder.append(String.format("/user/%s/twitter", arrobject)).toString();
        if (string != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string);
            httpRequest = HttpRequest.a(string2, hashMap, false);
        } else {
            httpRequest = HttpRequest.a(string2);
        }
        try {
            return (TweetsResult) ApiService.a(this.a(httpRequest), TweetsResult.class);
        } catch (Exception var8_8) {
            return null;
        }
    }

    public final VoteResult k(String string, String string2, String string3) {
        String string4 = f + String.format("/post/%s/vote", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string2);
        hashMap.put("n", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            VoteResult voteResult = (VoteResult) ApiService.a(httpRequest, VoteResult.class);
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
        String string3 = f + String.format("/user/twitter/%s/comments", string);
        if (string2 != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string2);
            httpRequest = HttpRequest.a(string3, hashMap, false);
        } else {
            httpRequest = HttpRequest.a(string3);
        }
        try {
            return (PostDetailComment) ApiService.a(this.a(httpRequest), PostDetailComment.class);
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final ResultStatus l(String string, String string2, String string3) {
        String string4 = f + String.format("/post/%s/comment/%s/report", string, string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("reason", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var7_8) {
            var7_8.printStackTrace();
            throw var7_8.getCause();
        }
    }

    public final ShelfMsgRoot l() {
        String string = f + "/notification/shelfMessage?platform=android";
        try {
            ShelfMsgRoot shelfMsgRoot = (ShelfMsgRoot) ApiService.a(this.a(HttpRequest.a(string)), ShelfMsgRoot.class);
            return shelfMsgRoot;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final TweetResult l(String string) {
        String string2 = f + String.format("/user/twitter/%s", string);
        try {
            TweetResult tweetResult = (TweetResult) ApiService.a(this.a(HttpRequest.a(string2)), TweetResult.class);
            return tweetResult;
        } catch (Exception var3_4) {
            return null;
        }
    }

    public final PostPublish m(String string, String string2) {
        String string3 = f + String.format("/user/twitter/retweet/%s", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            PostPublish postPublish = (PostPublish) ApiService.a(httpRequest, PostPublish.class);
            return postPublish;
        } catch (Exception var6_7) {
            return null;
        }
    }

    public final ResultStatus m(String string, String string2, String string3) {
        String string4 = f + String.format("/post/review/%s/helpful", string2);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", string);
        hashMap.put("is_helpful", string3);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var8_8) {
            var8_8.printStackTrace();
            throw var8_8.getCause();
        }
    }

    public final UserInfoResult m(String string) {
        String string2 = f + String.format("/user/info/%s", string);
        try {
            UserInfoResult userInfoResult = (UserInfoResult) ApiService.a(this.a(HttpRequest.a(string2)), UserInfoResult.class);
            return userInfoResult;
        } catch (Exception var3_4) {
            return null;
        }
    }

    public final VipPlan m() {
        String string = f + "/purchase/vip/plan";
        try {
            VipPlan vipPlan = (VipPlan) ApiService.a(this.a(HttpRequest.a(string)), VipPlan.class);
            return vipPlan;
        } catch (HttpRequest.HttpRequestException var2_3) {
            throw var2_3.getCause();
        }
    }

    public final FollowResult n(String string, String string2) {
        String string3 = f + String.format("/user/%s/has/followed/%s", string, string2);
        try {
            FollowResult followResult = (FollowResult) ApiService.a(this.b(HttpRequest.a(string3)), FollowResult.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
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
        String string2 = am.e((String) string);
        String string3 = f + String.format("/book/fuzzy-search?query=%s", string2);
        try {
            searchResultRoot = (SearchResultRoot) ApiService.a(this.a(HttpRequest.a(string3)), SearchResultRoot.class);
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
        var4_4 = ApiService.f + String.format("/post/%s/comment/%s/like", new Object[]{var1_1, var2_2});
        try {
            var6_5 = HttpRequest.b(var4_4);
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
        String string2 = am.e((String) string);
        String string3 = f + "/book/accurate-search?author=" + string2;
        try {
            SearchResultRoot searchResultRoot = (SearchResultRoot) ApiService.a(this.a(HttpRequest.a(string3)), SearchResultRoot.class);
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
        String string3 = f + String.format("/user/%s/twitter", string);
        if (string2 != null) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("last", string2);
            httpRequest = HttpRequest.a(string3, hashMap, false);
        } else {
            httpRequest = HttpRequest.a(string3);
        }
        try {
            return (TweetsResult) ApiService.a(this.a(httpRequest), TweetsResult.class);
        } catch (Exception var7_7) {
            return null;
        }
    }

    public final UgcFilterRoot o() {
        String string = f + "/book-list/tagType";
        try {
            UgcFilterRoot ugcFilterRoot = (UgcFilterRoot) ApiService.a(this.a(HttpRequest.a(string)), UgcFilterRoot.class);
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
        String string3 = String.format("http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s", string2, am.e((String) string));
        try {
            HttpRequest httpRequest = this.b(HttpRequest.a(string3), 7);
            boolean bl = httpRequest.c();
            int n = httpRequest.b();
            if (!bl && n >= 500) {
                return ApiService.x();
            }
            SgChapterRoot sgChapterRoot = (SgChapterRoot) ApiService.a(httpRequest, SgChapterRoot.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string4));
            httpRequest.a(hashMap);
            ResultServer resultServer = (ResultServer) ApiService.a(httpRequest, ResultServer.class);
            return resultServer;
        } catch (Exception var10_8) {
            return null;
        }
    }

    public final SearchResultRoot p(String string) {
        String string2 = am.e((String) string);
        String string3 = f + String.format("/book/fuzzy-search?query=%s", string2) + "&onlyTitle=true";
        try {
            SearchResultRoot searchResultRoot = (SearchResultRoot) ApiService.a(this.a(HttpRequest.a(string3)), SearchResultRoot.class);
            return searchResultRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final ReviewHistory q(String string, String string2) {
        String string3 = f + String.format("/post/review/one-by-book-user?book=%s&token=%s", string, string2);
        try {
            ReviewHistory reviewHistory = (ReviewHistory) ApiService.a(this.a(HttpRequest.a(string3)), ReviewHistory.class);
            return reviewHistory;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final SearchPromRoot q(String string) {
        String string2 = am.e((String) string);
        String string3 = f + String.format("/book/search/%s/chinese-all-promo", string2);
        try {
            SearchPromRoot searchPromRoot = (SearchPromRoot) ApiService.a(this.a(HttpRequest.a(string3)), SearchPromRoot.class);
            return searchPromRoot;
        } catch (HttpRequest.HttpRequestException var4_5) {
            throw var4_5.getCause();
        }
    }

    public final BookInfo r(String string) {
        String string2 = f + String.format("/book/%s", string);
        try {
            BookInfo bookInfo = (BookInfo) ApiService.a(this.a(HttpRequest.a(string2)), BookInfo.class);
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
        String string3 = com.clilystudio.netbook.hpay100.a.a.Q(string2) ? String.format("/user/notification/important?token=%s", string) : String.format("/user/notification/important?token=%s&startTime=%s", string, string2);
        String string4 = f + string3;
        try {
            return (NotificationRoot) ApiService.a(this.a(HttpRequest.a(string4)), NotificationRoot.class);
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
        String string3 = com.clilystudio.netbook.hpay100.a.a.Q(string2) ? String.format("/user/notification/unimportant?token=%s", string) : String.format("/user/notification/unimportant?token=%s&startTime=%s", string, string2);
        String string4 = f + string3;
        try {
            return (NotificationRoot) ApiService.a(this.a(HttpRequest.a(string4)), NotificationRoot.class);
        } catch (HttpRequest.HttpRequestException var5_6) {
            throw var5_6.getCause();
        }
    }

    public final SgTocRoot s(String string) {
        String string2 = String.format("http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s", string);
        try {
            SgTocRoot sgTocRoot = (SgTocRoot) ApiService.a(this.a(HttpRequest.a(string2), 7), SgTocRoot.class);
            return sgTocRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final IKanshuUrlResult t() {
        String string = f + "/promotion/17k";
        try {
            IKanshuUrlResult iKanshuUrlResult = (IKanshuUrlResult) ApiService.a(this.a(HttpRequest.a(string)), IKanshuUrlResult.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            PurchaseVipResult purchaseVipResult = (PurchaseVipResult) ApiService.a(httpRequest, PurchaseVipResult.class);
            return purchaseVipResult;
        } catch (HttpRequest.HttpRequestException var7_7) {
            throw var7_7.getCause();
        }
    }

    public final LdTocRoot t(String string) {
        String string2 = String.format("http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000", string);
        try {
            LdTocRoot ldTocRoot = (LdTocRoot) ApiService.a(this.a(HttpRequest.a(string2), 8), LdTocRoot.class);
            return ldTocRoot;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final BookTopRoot u() {
        String string = f + "/favorite/book/top";
        try {
            BookTopRoot bookTopRoot = (BookTopRoot) ApiService.a(this.a(HttpRequest.a(string)), BookTopRoot.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ChangeNickNameRoot changeNickNameRoot = (ChangeNickNameRoot) ApiService.a(httpRequest, ChangeNickNameRoot.class);
            return changeNickNameRoot;
        } catch (HttpRequest.HttpRequestException var7_7) {
            var7_7.printStackTrace();
            throw var7_7.getCause();
        }
    }

    public final String u(String string) {
        String string2 = String.format("http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0", string);
        try {
            String string3 = this.a(HttpRequest.a(string2), 8).d();
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ChangeGenderRoot changeGenderRoot = (ChangeGenderRoot) ApiService.a(httpRequest, ChangeGenderRoot.class);
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
        String string2 = String.format("http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_", arrobject);
        try {
            EsTocRoot esTocRoot = (EsTocRoot) ApiService.a(this.a(HttpRequest.a(string2), 3), EsTocRoot.class);
            return esTocRoot;
        } catch (HttpRequest.HttpRequestException var5_6) {
            throw var5_6.getCause();
        }
    }

    public final int w(String string) {
        String string2 = String.format("http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s", string);
        try {
            int n = SsChapterJson.getTocCount(this.a(HttpRequest.a(string2), 6).d());
            return n;
        } catch (HttpRequest.HttpRequestException var3_4) {
            throw var3_4.getCause();
        }
    }

    public final ResultStatus w(String string, String string2) {
        String string3 = f + String.format("/post/%s/report", string);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("reason", string2);
        try {
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
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
        String string2 = String.format("/chapter/%s", am.e((String) string));
        String string3 = h + string2;
        String string4 = string3 + "?" + com.clilystudio.netbook.hpay100.a.a.A(string2);
        try {
            HttpRequest httpRequest = HttpRequest.a(string4);
            if (e.a()) {
                e.a(httpRequest);
            }
            HttpRequest httpRequest2 = this.b(httpRequest);
            boolean bl = httpRequest2.c();
            int n = httpRequest2.b();
            if (!bl && n >= 500) {
                return ApiService.w();
            }
            ChapterRoot chapterRoot = (ChapterRoot) ApiService.a(httpRequest2, ChapterRoot.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
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
        String string2 = am.e((String) string);
        String string3 = g + String.format("/chapter/%s", string2);
        try {
            HttpRequest httpRequest = HttpRequest.a(string3);
            if (e.a()) {
                e.a(httpRequest);
            }
            HttpRequest httpRequest2 = this.b(httpRequest);
            boolean bl = httpRequest2.c();
            int n = httpRequest2.b();
            if (!bl && n >= 500) {
                return ApiService.w();
            }
            ChapterRoot chapterRoot = (ChapterRoot) ApiService.a(httpRequest2, ChapterRoot.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
            return resultStatus;
        } catch (HttpRequest.HttpRequestException var7_7) {
            var7_7.printStackTrace();
            throw var7_7.getCause();
        }
    }

    public final BookRankDetailRoot z(String string) {
        String string2 = f + String.format("/ranking/%s", string);
        try {
            BookRankDetailRoot bookRankDetailRoot = (BookRankDetailRoot) ApiService.a(this.a(HttpRequest.a(string2)), BookRankDetailRoot.class);
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
            HttpRequest httpRequest = this.b(HttpRequest.b(string3));
            httpRequest.a(hashMap);
            ResultStatus resultStatus = (ResultStatus) ApiService.a(httpRequest, ResultStatus.class);
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
