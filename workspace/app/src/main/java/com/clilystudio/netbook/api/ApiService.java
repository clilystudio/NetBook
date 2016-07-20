package com.clilystudio.netbook.api;

import android.net.Uri;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.BookListRoot;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookShelfSyncTime;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryRoot;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import com.clilystudio.netbook.model.ChangeNickNameRoot;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.FollowingsResult;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.model.MixTocRoot;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.model.RemoteBookShelf;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.model.ShelfMsgRoot;
import com.clilystudio.netbook.model.SyncUploadResult;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSourceRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.model.UGCBookDetailRoot;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.model.mixtoc.EsChapterRoot;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.LdChapterRoot;
import com.clilystudio.netbook.model.mixtoc.LdTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgChapterRoot;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsChapterJson;
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import com.clilystudio.netbook.util.CommonUtil;
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
    private static final String TAG = ApiService.class.getSimpleName();
    public static final int BUFF_SIZE = 15000;
    private static String mDomain = "zhuishushenqi.com";
    private static String mApiBaseUrl = "http://api." + mDomain;
    private static String mChapterUrl = "http://chapter." + mDomain;
    private static String mChapter2Url = "http://chapter2." + mDomain;
    public static String mStaticsUrl = "http://statics." + mDomain;
    private static final Gson mJsonParser = new GsonBuilder().registerTypeAdapter(Date.class, new DateDeserializer()).create();

    private final UserAgentManager mUserAgentManager;

    public ApiService(UserAgentManager userAgentManager) {
        this.mUserAgentManager = userAgentManager;
    }

    private static <V> V getResponse(HttpRequest httpRequest, Class<V> classOfT) {
        BufferedReader bufferedReader = null;
        V response = null;
        try {
            bufferedReader = httpRequest.bufferedReader();
            response = mJsonParser.fromJson(bufferedReader, classOfT);
        } catch (HttpRequest.HttpRequestException | JsonIOException | JsonSyntaxException e) {
            e.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
        return response;
    }

    public static void setDomain(String domain) {
        if (!domain.equals(mDomain)) {
            mDomain = domain;
            mApiBaseUrl = "http://api." + mDomain;
            mChapterUrl = "http://chapter." + mDomain;
            mStaticsUrl = "http://statics." + mDomain;
        }
    }

    private static <V> List<V> getListResponse(HttpRequest httpRequest, Class<V> classOfT) {
        ArrayList<V> arrayList = null;
        BufferedReader bufferedReader = httpRequest.bufferedReader();
        try {
            JsonArray jsonArray = new JsonParser().parse(bufferedReader).getAsJsonArray();
            arrayList = new ArrayList<>();
            for (JsonElement jsonElement : jsonArray) {
                arrayList.add(mJsonParser.fromJson(jsonElement, classOfT));
            }
        } catch (JsonParseException e) {
            e.printStackTrace();
        } finally {
            try {
                bufferedReader.close();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
        return arrayList;
    }

    private static ChapterRoot getDefaultChapterRoot() {
        ChapterRoot chapterRoot = new ChapterRoot();
        chapterRoot.setStatus(-3);
        chapterRoot.setChapter(new Chapter());
        return chapterRoot;
    }

    private HttpRequest setRequest(HttpRequest httpRequest) {
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.setDnsIp(httpRequest);
        }
        try {
            if (!this.setHeader(httpRequest).ok()) {
                Log.e("ApiService", "Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException e) {
            e.printStackTrace();
        }
        return httpRequest;
    }

    private HttpRequest setRequestUserAgent(HttpRequest httpRequest, int deviceType) {
        try {
            if (!this.setUserAgent(httpRequest, deviceType).ok()) {
                Log.e(TAG, "Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException e) {
            e.printStackTrace();
        }
        return httpRequest;
    }

    private Root getRoot(String url, HashMap<String, String> values) {
        HttpRequest request = this.setHeader(HttpRequest.post(ApiService.mApiBaseUrl + url));
        request.form(values);
        return ApiService.getResponse(request, Root.class);
    }

    private HttpRequest setHeader(HttpRequest httpRequest) {
        httpRequest.chunk(BUFF_SIZE).bufferSize(BUFF_SIZE);
        UserAgentManager f2 = this.mUserAgentManager;
        String string = "1".equals(OnlineConfigAgent.getInstance().getConfigParams(MyApplication.getInstance(), "ua-toggle")) ? f2.getXUserAgent() : "";
        httpRequest.header(string);
        httpRequest.header("X-User-Agent", this.mUserAgentManager.getXUserAgent());
        httpRequest.header("X-Device-Id", CommonUtil.getAndroidId());
        return httpRequest;
    }

    private HttpRequest setUserAgent(HttpRequest httpRequest, int deviceType) {
        httpRequest.chunk(BUFF_SIZE).bufferSize(BUFF_SIZE);
        httpRequest.userAgent(this.mUserAgentManager.getUserAgent(deviceType));
        if (deviceType == 6) {
            httpRequest.referer("http://bookshelf.html5.qq.com/page?t=pad");
        }
        return httpRequest;
    }

    public final BookShelfSyncTime getBookShelfSyncTime(String token) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/bookshelf-updated?token=%s", token);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), BookShelfSyncTime.class);
    }

    public final RemoteBookShelf getRemoteBookShelf(String token) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/bookshelf?token=%s", token);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), RemoteBookShelf.class);
    }

    public final UGCBookDetailRoot C(String string, String string2) {
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/draft?token=%s", string2, string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), UGCBookDetailRoot.class);
    }

    public final ResultStatus D(String token, String bookList) {
        String var3_3 = ApiService.mApiBaseUrl + "/user/collected-book-list";
        HttpRequest var5_4 = this.setHeader(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<>();
        var6_5.put("token", token);
        var6_5.put("bookList", bookList);
        var5_4.form(var6_5);
        return ApiService.getResponse(var5_4, ResultStatus.class);
    }

    public final ResultStatus E(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/collected-book-list/remove";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("bookList", string2);
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.getResponse(httpRequest2, ResultStatus.class);
    }

    public final NotifCountRoot G(String string) {
        return ApiService.getResponse(this.setRequest(HttpRequest.post(mApiBaseUrl + String.format(Locale.CHINA, "/user/notification/count?token=%s", string))), NotifCountRoot.class);
    }

    public final SyncUploadResult G(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/bookshelf";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("books", string2);
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.getResponse(httpRequest2, SyncUploadResult.class);
    }

    public final SyncUploadResult H(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/feedingBooks";
        HttpRequest httpRequest = HttpRequest.post(string3);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("books", string2);
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.getResponse(httpRequest2, SyncUploadResult.class);
    }

    public final SyncUploadResult I(String string, String string2) {
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/user/bookshelf?token=%s&books=%s", string, string2);
        return ApiService.getResponse(this.setRequest(HttpRequest.put(string3)), SyncUploadResult.class);
    }

    public final TopicCount I(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/post/total-count?books=%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), TopicCount.class);
    }

    public final SyncUploadResult J(String string, String string2) {
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/user/feedingBooks?token=%s&books=%s", string, string2);
        return ApiService.getResponse(this.setRequest(HttpRequest.put(string3)), SyncUploadResult.class);
    }

    public final UserInfo K(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/detail-info?token=%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), UserInfo.class);
    }

    public final Root L(String string) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        return this.getRoot("/user/notification/read-important", hashMap);
    }

    public final Root M(String string) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        return this.getRoot("/user/notification/read-unimportant", hashMap);
    }

    public final AutoCompleteRoot N(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book/auto-complete?query=%s", string2);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), AutoCompleteRoot.class);
    }

    public final ResultStatus P(String string) {
        String string2 = mApiBaseUrl + "/user/logout";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string2));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final UGCBookDetailRoot U(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), UGCBookDetailRoot.class);
    }

    public final ResultStatus W(String string) {
        String string2 = mApiBaseUrl + "/user/add-exp-week";
        HttpRequest httpRequest = HttpRequest.post(string2);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("type", "rate");
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        httpRequest2.form(hashMap);
        return ApiService.getResponse(httpRequest2, ResultStatus.class);
    }

    public final RelateBookRoot X(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book/%s/recommend", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), RelateBookRoot.class);
    }

    public final BookListRoot a(String string, String string2, String string3, String string4, int n, int n2) {
        String string5 = mApiBaseUrl + String.format(Locale.CHINA, "/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d", string, string2, CommonUtil.encodeUrl(string3), CommonUtil.encodeUrl(string4), n, n2);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string5)), BookListRoot.class);
    }

    public final ChapterRoot a(String string, String string2, int sort, String chapterName, String chapterLink) {
        String string6 = String.format(Locale.CHINA, "http://api.easou.com/api/bookapp/chapter.m?gid=%s&nid=%s&sort=%d&chapter_name=%s&cid=eef_", string, string2, sort, CommonUtil.encodeUrl(chapterName));
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(string6), 3);
        boolean bl = httpRequest.ok();
        int n2 = httpRequest.code();
        if (!bl && n2 >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        EsChapterRoot esChapterRoot = ApiService.getResponse(httpRequest, EsChapterRoot.class);
        if (esChapterRoot == null) return null;
        if (esChapterRoot.getContent() != null) {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string7 = CommonUtil.getBody(esChapterRoot.getContent());
            Chapter chapter = new Chapter();
            chapter.setLink(chapterLink);
            chapter.setBody(string7);
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
        if (esChapterRoot.isSuccess()) return null;
        return ApiService.getDefaultChapterRoot();
    }

    public final ResultStatus a(UGCNewCollection var1_1, String var2_2) {
        String var3_3 = ApiService.mApiBaseUrl + "/book-list";
        HttpRequest var5_4 = this.setHeader(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<>();
        var6_5.put("token", var2_2);
        var6_5.put("title", var1_1.getTitle());
        var6_5.put("desc", var1_1.getDesc());
        var5_4.form(var6_5);
        for (BookSummary var13_7 : var1_1.getBooks()) {
            var5_4.form("books[]", var13_7.getId());
            var5_4.form("comments[]", var13_7.getAppendComment());
        }
        return ApiService.getResponse(var5_4, ResultStatus.class);
    }

    public final ResultStatus a(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s", var3_3);
        HttpRequest var6_5 = this.setHeader(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        for (BookSummary var14_8 : var1_1.getBooks()) {
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.getResponse(var6_5, ResultStatus.class);
    }

    public final Root a(String string, Uri uri) {
        String string2 = mApiBaseUrl + "/user/change-avatar";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string2));
        httpRequest.part("token", null, null, string).part("avatar", uri.getPath(), "image/jpeg", new File(uri.getPath())).ok();
        return ApiService.getResponse(httpRequest, Root.class);
    }

    public final UGCBookListRoot a(String string, String string2, int n, int n2, String string3) {
        String string4 = mApiBaseUrl + String.format(Locale.CHINA, "/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s", string, string2, n, n2, string3);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string4)), UGCBookListRoot.class);
    }

    public final SsTocRoot a(int n, int n2, String string) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200", n, n2, string);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(string2), 6), SsTocRoot.class);
    }

    public final List<BookUpdate> a(List<String> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        String string = TextUtils.join(",", list.toArray());
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book?view=updated&id=%s", string);
        return ApiService.getListResponse(this.setRequest(HttpRequest.get(string2)), BookUpdate.class);
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
        String string = mApiBaseUrl + "/books/by-ids" + stringBuffer;
        SearchResultRoot searchResultRoot = ApiService.getResponse(this.setRequest(HttpRequest.get(string)), SearchResultRoot.class);
        if (searchResultRoot == null) return arrayList;
        return searchResultRoot.getBooks();
    }

    public final ChineseAllPromRoot aa(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book/%s/chinese-all-promo", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), ChineseAllPromRoot.class);
    }

    public final BookGenderRecommend ac(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book/recommend?gender=%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), BookGenderRecommend.class);
    }

    public final HotKeywordResult b() {
        String string = mApiBaseUrl + "/book/hot-word";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), HotKeywordResult.class);
    }

    public final ResultStatus b(UGCNewCollection var1_1, String var2_2) {
        String var3_3 = ApiService.mApiBaseUrl + "/book-list/draft";
        HttpRequest var5_4 = this.setHeader(HttpRequest.post(var3_3));
        HashMap<String, String> var6_5 = new HashMap<>();
        var6_5.put("token", var2_2);
        var6_5.put("title", var1_1.getTitle());
        var6_5.put("desc", var1_1.getDesc());
        var5_4.form(var6_5);
        for (BookSummary var13_7 : var1_1.getBooks()) {
            var5_4.form("books[]", var13_7.getId());
            var5_4.form("comments[]", var13_7.getAppendComment());
        }
        return ApiService.getResponse(var5_4, ResultStatus.class);
    }

    public final ResultStatus b(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/draft", var3_3);
        HttpRequest var6_5 = this.setHeader(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        for (BookSummary var14_8 : var1_1.getBooks()) {
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.getResponse(var6_5, ResultStatus.class);
    }

    public final String b(String string, int n) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", string, n);
        return SsChapterJson.getChapterUrl(this.setRequestUserAgent(HttpRequest.get(string2), 6).body());
    }

    public final BookTagRoot c(String string, int n, int n2) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book/by-tags?tags=%s&start=%d&limit=%d", CommonUtil.encodeUrl(string), n, n2);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), BookTagRoot.class);
    }

    public final ChapterRoot c(String string, int n) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", string, n);
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(string2), 6);
        boolean bl = httpRequest.ok();
        int n2 = httpRequest.code();
        if (bl) return SsChapterJson.getChapterRoot(httpRequest.body());
        if (n2 < 500) return SsChapterJson.getChapterRoot(httpRequest.body());
        return ApiService.getDefaultChapterRoot();
    }

    public final ChapterRoot c(String sourceId, int index, String leidianTK) {
        String string3 = String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&fmt=json&bid=%s&idx=%d&tk=%s", sourceId, index, leidianTK);
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(string3), 8);
        boolean bl = httpRequest.ok();
        int n2 = httpRequest.code();
        if (!bl && n2 >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        LdChapterRoot ldChapterRoot = ApiService.getResponse(httpRequest, LdChapterRoot.class);
        if (ldChapterRoot == null || ldChapterRoot.getContent() == null) return null;
        {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string4 = ldChapterRoot.getContent();
            String string5 = null;
            if (string4 != null) {
                string5 = string4.replaceAll("<p>", "").replaceAll("</p>", "\n");
            }
            String string6 = CommonUtil.getBody(string5);
            Chapter chapter = new Chapter();
            chapter.setLink(ldChapterRoot.getSrc());
            chapter.setBody(string6);
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
    }

    public final ResultStatus c(UGCNewCollection var1_1, String var2_2, String var3_3) {
        String var4_4 = ApiService.mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/public", var3_3);
        HttpRequest var6_5 = this.setHeader(HttpRequest.post(var4_4));
        HashMap<String, String> var7_6 = new HashMap<>();
        var7_6.put("token", var2_2);
        var7_6.put("title", var1_1.getTitle());
        var7_6.put("desc", var1_1.getDesc());
        var6_5.form(var7_6);
        for (BookSummary var14_8 : var1_1.getBooks()) {
            var6_5.form("books[]", var14_8.getId());
            var6_5.form("comments[]", var14_8.getAppendComment());
        }
        return ApiService.getResponse(var6_5, ResultStatus.class);
    }

    public final BookRankRoot d() {
        String string = mApiBaseUrl + "/ranking/gender";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), BookRankRoot.class);
    }

    public final Topic d(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/collected-post?token=%s&start=%s", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), Topic.class);
    }

    public final List<TocSummary> d(String bookId) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/toc?view=summary&book=%s", bookId);
        return ApiService.getListResponse(this.setRequest(HttpRequest.get(url)), TocSummary.class);
    }

    public final CategoryRoot e() {
        String string = mApiBaseUrl + "/cats/lv2/statistics";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), CategoryRoot.class);
    }

    public final Toc e(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/toc/%s?view=chapters", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), Toc.class);
    }

    public final Topic e(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/posted?token=%s&start=%s", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), Topic.class);
    }

    public final BookAdd f(String string, String string2, String string3) {
        String string4 = mApiBaseUrl + "/book/add";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("title", string);
        hashMap.put("author", string2);
        hashMap.put("device", string3);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, BookAdd.class);
    }

    public final CategoryLevelRoot f() {
        String string = mApiBaseUrl + "/cats/lv2";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), CategoryLevelRoot.class);
    }

    public final MixTocRoot f(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/mix-toc/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), MixTocRoot.class);
    }

    public final UGCBookListRoot f(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/collected-book-list?token=%s&start=%d", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final Account g(String string, String string2, String string3) {
        String string4 = mApiBaseUrl + "/user/login";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("platform_code", string);
        hashMap.put("platform_uid", string2);
        hashMap.put("platform_token", string3);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, Account.class);
    }

    public final ChapterKeysRoot g(String string, String string2) {
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/purchase/book/%s/chapters/bought?token=%s", string2, string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), ChapterKeysRoot.class);
    }

    public final TocSourceRoot g(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/aggregation-source/by-book?book=%s&v=5", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), TocSourceRoot.class);
    }

    public final UGCBookListRoot g(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/posted-book-list?token=%s&start=%d", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final FollowingsResult h(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/followings/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), FollowingsResult.class);
    }

    public final UGCBookListRoot h(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/draft-book-list?token=%s&start=%d", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final RecommendUgcRoot i(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/recommend?limit=%s", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), RecommendUgcRoot.class);
    }

    public final ShelfMsgRoot l() {
        String string = mApiBaseUrl + "/notification/shelfMessage?platform=android";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), ShelfMsgRoot.class);
    }

    public final List<BookSummary> n(String string) {
        ArrayList<BookSummary> arrayList = new ArrayList<>();
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2);
        SearchResultRoot searchResultRoot = ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchResultRoot.class);
        if (searchResultRoot == null) return arrayList;
        return searchResultRoot.getBooks();
    }

    public final SearchResultRoot o(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + "/book/accurate-search?author=" + string2;
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchResultRoot.class);
    }

    public final UgcFilterRoot o() {
        String string = mApiBaseUrl + "/book-list/tagType";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), UgcFilterRoot.class);
    }

    public final ChapterRoot p(String string, String string2) {
        String string3 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s", string2, CommonUtil.encodeUrl(string));
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(string3), 7);
        boolean bl = httpRequest.ok();
        int n = httpRequest.code();
        if (!bl && n >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        SgChapterRoot sgChapterRoot = ApiService.getResponse(httpRequest, SgChapterRoot.class);
        if (sgChapterRoot == null || sgChapterRoot.getContent() == null || sgChapterRoot.getContent().length <= 0) return null;
        {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string4 = CommonUtil.getBody(sgChapterRoot.getContent()[0].getBlock());
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

    public final SearchResultRoot p(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2) + "&onlyTitle=true";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchResultRoot.class);
    }

    public final SearchPromRoot q(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book/search/%s/chinese-all-promo", string2);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchPromRoot.class);
    }

    public final BookInfo r(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), BookInfo.class);
    }

    public final NotificationRoot r(String string, String string2) {
        String string3 = CommonUtil.isBlank(string2) ? String.format(Locale.CHINA, "/user/notification/important?token=%s", string) : String.format(Locale.CHINA, "/user/notification/important?token=%s&startTime=%s", string, string2);
        String string4 = mApiBaseUrl + string3;
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string4)), NotificationRoot.class);
    }

    public final NotificationRoot s(String string, String string2) {
        String string3 = CommonUtil.isBlank(string2) ? String.format(Locale.CHINA, "/user/notification/unimportant?token=%s", string) : String.format(Locale.CHINA, "/user/notification/unimportant?token=%s&startTime=%s", string, string2);
        String string4 = mApiBaseUrl + string3;
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string4)), NotificationRoot.class);
    }

    public final SgTocRoot s(String string) {
        String string2 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s", string);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(string2), 7), SgTocRoot.class);
    }

    public final LdTocRoot t(String sourceId) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000", sourceId);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(string2), 8), LdTocRoot.class);
    }

    public final ChangeNickNameRoot u(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/change-nickname";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("nickname", string2);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ChangeNickNameRoot.class);
    }

    public final String u(String string) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0", string);
        return this.setRequestUserAgent(HttpRequest.get(string2), 8).body();
    }

    public final ChangeGenderRoot v(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/change-gender";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("gender", string2);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ChangeGenderRoot.class);
    }

    public final EsTocRoot v(String string) {
        String[] arrstring = CommonUtil.splitSourceId(string);
        if (arrstring == null) {
            return null;
        }
        String string2 = String.format(Locale.CHINA, "http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_", arrstring[0], arrstring[1]);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(string2), 3), EsTocRoot.class);
    }

    public final int w(String string) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s", string);
        return SsChapterJson.getTocCount(this.setRequestUserAgent(HttpRequest.get(string2), 6).body());
    }

    public final ChapterRoot x(String string) {
        String string2 = String.format(Locale.CHINA, "/chapter/%s", CommonUtil.encodeUrl(string));
        String string3 = mChapter2Url + string2;
        HttpRequest httpRequest = HttpRequest.get(string3);
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.setDnsIp(httpRequest);
        }
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        boolean bl = httpRequest2.ok();
        int n = httpRequest2.code();
        if (!bl && n >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        ChapterRoot chapterRoot = ApiService.getResponse(httpRequest2, ChapterRoot.class);
        if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
        {
            chapterRoot.getChapter().setLink(string);
            return chapterRoot;
        }
    }

    public final ResultStatus addUserExp(String token, String type) {
        String string3 = mApiBaseUrl + "/user/add-exp";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", token);
        hashMap.put("type", type);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final ChapterRoot y(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mChapterUrl + String.format(Locale.CHINA, "/chapter/%s", string2);
        HttpRequest httpRequest = HttpRequest.get(string3);
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.setDnsIp(httpRequest);
        }
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        boolean bl = httpRequest2.ok();
        int n = httpRequest2.code();
        if (!bl && n >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        ChapterRoot chapterRoot = ApiService.getResponse(httpRequest2, ChapterRoot.class);
        if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
        {
            chapterRoot.getChapter().setLink(string);
            return chapterRoot;
        }
    }

    public final BookRankDetailRoot z(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/ranking/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), BookRankDetailRoot.class);
    }

    public final ResultStatus z(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/collected-post/remove";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("post", string2);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    static final class DateDeserializer implements JsonDeserializer<Date> {
        @Override
        public final Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            String string = jsonElement.getAsString().replace("Z", "+0000");
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.CHINA).parse(string, new ParsePosition(0));
        }
    }
}
